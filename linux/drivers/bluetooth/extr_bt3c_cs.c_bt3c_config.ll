; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.bt3c_info* }
%struct.bt3c_info = type { i32 }

@bt3c_check_config = common dso_local global i32 0, align 4
@bt3c_check_config_notpicky = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No usable port range found\00", align 1
@bt3c_interrupt = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @bt3c_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.bt3c_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 0
  %9 = load %struct.bt3c_info*, %struct.bt3c_info** %8, align 8
  store %struct.bt3c_info* %9, %struct.bt3c_info** %4, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = load i32, i32* @bt3c_check_config, align 4
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %14, i32 %15, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %33

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = load i32, i32* @bt3c_check_config_notpicky, align 4
  %28 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %26, i32 %27, i8* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %33

31:                                               ; preds = %25
  %32 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %51

33:                                               ; preds = %30, %20
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %34, i32* @bt3c_interrupt)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %51

39:                                               ; preds = %33
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %51

45:                                               ; preds = %39
  %46 = load %struct.bt3c_info*, %struct.bt3c_info** %4, align 8
  %47 = call i64 @bt3c_open(%struct.bt3c_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %49, %44, %38, %31
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = call i32 @bt3c_release(%struct.pcmcia_device* %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i8*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i64 @bt3c_open(%struct.bt3c_info*) #1

declare dso_local i32 @bt3c_release(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
