; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_check_config_notpicky.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bt3c_cs.c_bt3c_check_config_notpicky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32 }

@bt3c_check_config_notpicky.base = internal global [5 x i32] [i32 1016, i32 760, i32 1000, i32 744, i32 0], align 16
@ENODEV = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @bt3c_check_config_notpicky to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_check_config_notpicky(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %74

14:                                               ; preds = %2
  %15 = load i32, i32* @IO_DATA_PATH_WIDTH, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %16
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 8, i32* %39, align 4
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %68, %14
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 5
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* @bt3c_check_config_notpicky.base, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* @bt3c_check_config_notpicky.base, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 16, i32 3
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %64 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %74

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %40

71:                                               ; preds = %40
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %66, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
