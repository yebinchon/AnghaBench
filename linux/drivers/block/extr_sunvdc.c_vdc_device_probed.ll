; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_device_probed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_device_probed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vio_dev = type { i64, i32 }
%struct.vdc_check_port_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @vdc_device_probed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_device_probed(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vio_dev*, align 8
  %7 = alloca %struct.vdc_check_port_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.vio_dev* @to_vio_dev(%struct.device* %8)
  store %struct.vio_dev* %9, %struct.vio_dev** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.vdc_check_port_data*
  store %struct.vdc_check_port_data* %11, %struct.vdc_check_port_data** %7, align 8
  %12 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %13 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vdc_check_port_data*, %struct.vdc_check_port_data** %7, align 8
  %16 = getelementptr inbounds %struct.vdc_check_port_data, %struct.vdc_check_port_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %21 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %20, i32 0, i32 1
  %22 = bitcast i32* %21 to i8*
  %23 = load %struct.vdc_check_port_data*, %struct.vdc_check_port_data** %7, align 8
  %24 = getelementptr inbounds %struct.vdc_check_port_data, %struct.vdc_check_port_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @strcmp(i8* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i64 @dev_get_drvdata(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %28, %19, %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.vio_dev* @to_vio_dev(%struct.device*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
