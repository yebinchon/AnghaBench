; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_soc.c_soc_device_match_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_soc.c_soc_device_match_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_device_attribute = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_device_attribute*, %struct.soc_device_attribute*)* @soc_device_match_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_device_match_attr(%struct.soc_device_attribute* %0, %struct.soc_device_attribute* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_device_attribute*, align 8
  %5 = alloca %struct.soc_device_attribute*, align 8
  store %struct.soc_device_attribute* %0, %struct.soc_device_attribute** %4, align 8
  store %struct.soc_device_attribute* %1, %struct.soc_device_attribute** %5, align 8
  %6 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %7 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %12 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %17 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %20 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @glob_match(i64 %18, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15, %10
  store i32 0, i32* %3, align 4
  br label %86

25:                                               ; preds = %15, %2
  %26 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %27 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %32 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %37 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %40 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @glob_match(i64 %38, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35, %30
  store i32 0, i32* %3, align 4
  br label %86

45:                                               ; preds = %35, %25
  %46 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %47 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %52 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %57 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %60 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @glob_match(i64 %58, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %86

65:                                               ; preds = %55, %45
  %66 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %67 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %72 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %5, align 8
  %77 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %80 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @glob_match(i64 %78, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75, %70
  store i32 0, i32* %3, align 4
  br label %86

85:                                               ; preds = %75, %65
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %84, %64, %44, %24
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @glob_match(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
