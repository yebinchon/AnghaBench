; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_raw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c__regmap_raw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_regmap_raw_write(%struct.regmap* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.regmap*, %struct.regmap** %6, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = udiv i64 %21, %22
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %104

30:                                               ; preds = %4
  %31 = load %struct.regmap*, %struct.regmap** %6, align 8
  %32 = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i64 1, i64* %14, align 8
  br label %54

36:                                               ; preds = %30
  %37 = load %struct.regmap*, %struct.regmap** %6, align 8
  %38 = getelementptr inbounds %struct.regmap, %struct.regmap* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.regmap*, %struct.regmap** %6, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.regmap*, %struct.regmap** %6, align 8
  %49 = getelementptr inbounds %struct.regmap, %struct.regmap* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = udiv i64 %50, %51
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %47, %41, %36
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %14, align 8
  %57 = udiv i64 %55, %56
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %10, align 8
  %60 = mul i64 %58, %59
  store i64 %60, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %61

61:                                               ; preds = %90, %54
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %12, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load %struct.regmap*, %struct.regmap** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @_regmap_raw_write_impl(%struct.regmap* %67, i32 %68, i8* %69, i64 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %5, align 4
  br label %104

76:                                               ; preds = %66
  %77 = load %struct.regmap*, %struct.regmap** %6, align 8
  %78 = load i64, i64* %14, align 8
  %79 = call i64 @regmap_get_offset(%struct.regmap* %77, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load i64, i64* %13, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr i8, i8* %85, i64 %84
  store i8* %86, i8** %8, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %61

93:                                               ; preds = %61
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.regmap*, %struct.regmap** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @_regmap_raw_write_impl(%struct.regmap* %97, i32 %98, i8* %99, i64 %100)
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %74, %27
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @_regmap_raw_write_impl(%struct.regmap*, i32, i8*, i64) #1

declare dso_local i64 @regmap_get_offset(%struct.regmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
