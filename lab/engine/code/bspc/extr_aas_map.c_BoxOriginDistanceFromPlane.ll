; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_BoxOriginDistanceFromPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_map.c_BoxOriginDistanceFromPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BBOX_NORMAL_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BoxOriginDistanceFromPlane(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %62, %14
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %65

18:                                               ; preds = %15
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BBOX_NORMAL_EPSILON, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i64*, i64** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  br label %61

36:                                               ; preds = %18
  %37 = load i64*, i64** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BBOX_NORMAL_EPSILON, align 8
  %43 = sub nsw i64 0, %42
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %60

55:                                               ; preds = %36
  %56 = load i64*, i64** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %45
  br label %61

61:                                               ; preds = %60, %26
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %15

65:                                               ; preds = %15
  br label %118

66:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %114, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  %71 = load i64*, i64** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BBOX_NORMAL_EPSILON, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load i64*, i64** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  br label %113

88:                                               ; preds = %70
  %89 = load i64*, i64** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BBOX_NORMAL_EPSILON, align 8
  %95 = sub nsw i64 0, %94
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i64*, i64** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %102, i64* %106, align 8
  br label %112

107:                                              ; preds = %88
  %108 = load i64*, i64** %9, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %97
  br label %113

113:                                              ; preds = %112, %78
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %67

117:                                              ; preds = %67
  br label %118

118:                                              ; preds = %117, %65
  %119 = load i64*, i64** %5, align 8
  %120 = load i64*, i64** %10, align 8
  %121 = call i32 @VectorCopy(i64* %119, i64* %120)
  %122 = load i64*, i64** %10, align 8
  %123 = call i32 @VectorInverse(i64* %122)
  %124 = load i64*, i64** %9, align 8
  %125 = load i64*, i64** %10, align 8
  %126 = call i32 @DotProduct(i64* %124, i64* %125)
  ret i32 %126
}

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @VectorInverse(i64*) #1

declare dso_local i32 @DotProduct(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
