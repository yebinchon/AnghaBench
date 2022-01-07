; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c_vio_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c_vio_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vio_dev = type { i64, i64, i64, i64, i32 }
%struct.vio_driver = type { i32 (%struct.vio_dev.0*, %struct.vio_device_id*)*, i32, i32 }
%struct.vio_dev.0 = type opaque
%struct.vio_device_id = type opaque
%struct.vio_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vio_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vio_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_driver*, align 8
  %6 = alloca %struct.vio_device_id.1*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.vio_dev* @to_vio_dev(%struct.device* %7)
  store %struct.vio_dev* %8, %struct.vio_dev** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vio_driver* @to_vio_driver(i32 %11)
  store %struct.vio_driver* %12, %struct.vio_driver** %5, align 8
  %13 = load %struct.vio_driver*, %struct.vio_driver** %5, align 8
  %14 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.vio_dev.0*, %struct.vio_device_id*)*, i32 (%struct.vio_dev.0*, %struct.vio_device_id*)** %14, align 8
  %16 = icmp ne i32 (%struct.vio_dev.0*, %struct.vio_device_id*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %1
  %21 = load %struct.vio_driver*, %struct.vio_driver** %5, align 8
  %22 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %25 = call %struct.vio_device_id.1* @vio_match_device(i32 %23, %struct.vio_dev* %24)
  store %struct.vio_device_id.1* %25, %struct.vio_device_id.1** %6, align 8
  %26 = load %struct.vio_device_id.1*, %struct.vio_device_id.1** %6, align 8
  %27 = icmp ne %struct.vio_device_id.1* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %88

31:                                               ; preds = %20
  %32 = load %struct.vio_driver*, %struct.vio_driver** %5, align 8
  %33 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %31
  %37 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %38 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, -1
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %48 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %51 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @sun4v_build_virq(i32 %49, i64 %52)
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %56 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %46, %41, %36
  %58 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %59 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %64 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %69 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %72 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @sun4v_build_virq(i32 %70, i64 %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %77 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %67, %62, %57
  br label %79

79:                                               ; preds = %78, %31
  %80 = load %struct.vio_driver*, %struct.vio_driver** %5, align 8
  %81 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %80, i32 0, i32 0
  %82 = load i32 (%struct.vio_dev.0*, %struct.vio_device_id*)*, i32 (%struct.vio_dev.0*, %struct.vio_device_id*)** %81, align 8
  %83 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %84 = bitcast %struct.vio_dev* %83 to %struct.vio_dev.0*
  %85 = load %struct.vio_device_id.1*, %struct.vio_device_id.1** %6, align 8
  %86 = bitcast %struct.vio_device_id.1* %85 to %struct.vio_device_id*
  %87 = call i32 %82(%struct.vio_dev.0* %84, %struct.vio_device_id* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %79, %28, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.vio_dev* @to_vio_dev(%struct.device*) #1

declare dso_local %struct.vio_driver* @to_vio_driver(i32) #1

declare dso_local %struct.vio_device_id.1* @vio_match_device(i32, %struct.vio_dev*) #1

declare dso_local i8* @sun4v_build_virq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
