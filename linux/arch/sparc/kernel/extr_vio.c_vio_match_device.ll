; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c_vio_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c_vio_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_device_id = type { i64*, i64* }
%struct.vio_dev = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vio_device_id* (%struct.vio_device_id*, %struct.vio_dev*)* @vio_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vio_device_id* @vio_match_device(%struct.vio_device_id* %0, %struct.vio_dev* %1) #0 {
  %3 = alloca %struct.vio_device_id*, align 8
  %4 = alloca %struct.vio_device_id*, align 8
  %5 = alloca %struct.vio_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vio_device_id* %0, %struct.vio_device_id** %4, align 8
  store %struct.vio_dev* %1, %struct.vio_dev** %5, align 8
  %10 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %11 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %17 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %81, %2
  %20 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %28 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %19
  %34 = phi i1 [ true, %19 ], [ %32, %26 ]
  br i1 %34, label %35, label %84

35:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %36 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %37 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %44 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcmp(i64* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %42, %35
  %54 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %55 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %66 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @of_find_in_proplist(i8* %64, i64* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %63, %60
  %72 = phi i1 [ false, %60 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %53
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  store %struct.vio_device_id* %80, %struct.vio_device_id** %3, align 8
  br label %85

81:                                               ; preds = %76
  %82 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %83 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %82, i32 1
  store %struct.vio_device_id* %83, %struct.vio_device_id** %4, align 8
  br label %19

84:                                               ; preds = %33
  store %struct.vio_device_id* null, %struct.vio_device_id** %3, align 8
  br label %85

85:                                               ; preds = %84, %79
  %86 = load %struct.vio_device_id*, %struct.vio_device_id** %3, align 8
  ret %struct.vio_device_id* %86
}

declare dso_local i32 @strcmp(i64*, i8*) #1

declare dso_local i64 @of_find_in_proplist(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
