; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_noinc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_noinc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i64, i32, i32 (i32)*, i32 (i32)*, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_noinc_read(%struct.regmap* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.regmap*, %struct.regmap** %6, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %125

19:                                               ; preds = %4
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %125

29:                                               ; preds = %19
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.regmap*, %struct.regmap** %6, align 8
  %32 = getelementptr inbounds %struct.regmap, %struct.regmap* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = urem i64 %30, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %125

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.regmap*, %struct.regmap** %6, align 8
  %43 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @IS_ALIGNED(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %125

50:                                               ; preds = %40
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %125

56:                                               ; preds = %50
  %57 = load %struct.regmap*, %struct.regmap** %6, align 8
  %58 = getelementptr inbounds %struct.regmap, %struct.regmap* %57, i32 0, i32 3
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.regmap*, %struct.regmap** %6, align 8
  %61 = getelementptr inbounds %struct.regmap, %struct.regmap* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %59(i32 %62)
  %64 = load %struct.regmap*, %struct.regmap** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @regmap_volatile(%struct.regmap* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load %struct.regmap*, %struct.regmap** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @regmap_readable_noinc(%struct.regmap* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68, %56
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %116

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %106, %76
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %115

80:                                               ; preds = %77
  %81 = load %struct.regmap*, %struct.regmap** %6, align 8
  %82 = getelementptr inbounds %struct.regmap, %struct.regmap* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.regmap*, %struct.regmap** %6, align 8
  %87 = getelementptr inbounds %struct.regmap, %struct.regmap* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.regmap*, %struct.regmap** %6, align 8
  %93 = getelementptr inbounds %struct.regmap, %struct.regmap* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %10, align 8
  br label %97

95:                                               ; preds = %85, %80
  %96 = load i64, i64* %9, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %95, %91
  %98 = load %struct.regmap*, %struct.regmap** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @_regmap_raw_read(%struct.regmap* %98, i32 %99, i8* %100, i64 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %116

106:                                              ; preds = %97
  %107 = load i8*, i8** %8, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = bitcast i32* %110 to i8*
  store i8* %111, i8** %8, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %9, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %9, align 8
  br label %77

115:                                              ; preds = %77
  br label %116

116:                                              ; preds = %115, %105, %73
  %117 = load %struct.regmap*, %struct.regmap** %6, align 8
  %118 = getelementptr inbounds %struct.regmap, %struct.regmap* %117, i32 0, i32 2
  %119 = load i32 (i32)*, i32 (i32)** %118, align 8
  %120 = load %struct.regmap*, %struct.regmap** %6, align 8
  %121 = getelementptr inbounds %struct.regmap, %struct.regmap* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 %119(i32 %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %116, %53, %47, %37, %26, %16
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @regmap_volatile(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_readable_noinc(%struct.regmap*, i32) #1

declare dso_local i32 @_regmap_raw_read(%struct.regmap*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
