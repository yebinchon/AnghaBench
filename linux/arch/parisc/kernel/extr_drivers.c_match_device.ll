; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_driver = type { %struct.parisc_device_id* }
%struct.parisc_device_id = type { i64, i64, i64 }
%struct.parisc_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@SVERSION_ANY_ID = common dso_local global i64 0, align 8
@HWTYPE_ANY_ID = common dso_local global i64 0, align 8
@HVERSION_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parisc_driver*, %struct.parisc_device*)* @match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_device(%struct.parisc_driver* %0, %struct.parisc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parisc_driver*, align 8
  %5 = alloca %struct.parisc_device*, align 8
  %6 = alloca %struct.parisc_device_id*, align 8
  store %struct.parisc_driver* %0, %struct.parisc_driver** %4, align 8
  store %struct.parisc_device* %1, %struct.parisc_device** %5, align 8
  %7 = load %struct.parisc_driver*, %struct.parisc_driver** %4, align 8
  %8 = getelementptr inbounds %struct.parisc_driver, %struct.parisc_driver* %7, i32 0, i32 0
  %9 = load %struct.parisc_device_id*, %struct.parisc_device_id** %8, align 8
  store %struct.parisc_device_id* %9, %struct.parisc_device_id** %6, align 8
  br label %10

10:                                               ; preds = %64, %2
  %11 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %12 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %10
  %16 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %17 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SVERSION_ANY_ID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %23 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.parisc_device*, %struct.parisc_device** %5, align 8
  %26 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %64

31:                                               ; preds = %21, %15
  %32 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %33 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HWTYPE_ANY_ID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %39 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.parisc_device*, %struct.parisc_device** %5, align 8
  %42 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %64

47:                                               ; preds = %37, %31
  %48 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %49 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HVERSION_ANY_ID, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %55 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.parisc_device*, %struct.parisc_device** %5, align 8
  %58 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %64

63:                                               ; preds = %53, %47
  store i32 1, i32* %3, align 4
  br label %68

64:                                               ; preds = %62, %46, %30
  %65 = load %struct.parisc_device_id*, %struct.parisc_device_id** %6, align 8
  %66 = getelementptr inbounds %struct.parisc_device_id, %struct.parisc_device_id* %65, i32 1
  store %struct.parisc_device_id* %66, %struct.parisc_device_id** %6, align 8
  br label %10

67:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
