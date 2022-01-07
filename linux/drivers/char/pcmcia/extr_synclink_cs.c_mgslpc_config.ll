; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, %struct.TYPE_3__**, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@debug_level = common dso_local global i64 0, align 8
@DEBUG_LEVEL_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"mgslpc_config(0x%p)\0A\00", align 1
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@mgslpc_ioprobe = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@mgslpc_isr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mgslpc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgslpc_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load i64, i64* @debug_level, align 8
  %10 = load i64, i64* @DEBUG_LEVEL_INFO, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %17 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %24 = load i32, i32* @mgslpc_ioprobe, align 4
  %25 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %23, i32 %24, i32* null)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %62

29:                                               ; preds = %15
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 1
  store i32 8, i32* %31, align 4
  %32 = load i32, i32* @PRESENT_OPTION, align 4
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = load i32, i32* @mgslpc_isr, align 4
  %37 = call i32 @pcmcia_request_irq(%struct.pcmcia_device* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %62

41:                                               ; preds = %29
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %62

47:                                               ; preds = %41
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %2, align 4
  br label %68

62:                                               ; preds = %46, %40, %28
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %64 = ptrtoint %struct.pcmcia_device* %63 to i32
  %65 = call i32 @mgslpc_release(i32 %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %47
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @printk(i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @pcmcia_request_irq(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @mgslpc_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
