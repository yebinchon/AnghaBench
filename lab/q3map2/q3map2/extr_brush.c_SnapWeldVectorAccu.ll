; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_SnapWeldVectorAccu.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_SnapWeldVectorAccu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"SnapWeldVectorAccu: NULL argument\00", align 1
@SNAP_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SnapWeldVectorAccu(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i64*, i64** %5, align 8
  %16 = icmp eq i64* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64*, i64** %6, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %3
  %21 = call i32 @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %101, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %104

26:                                               ; preds = %23
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @Q_rintAccu(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @Q_rintAccu(i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64*, i64** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %39, %44
  %46 = call i64 @fabs(i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %47, %52
  %54 = call i64 @fabs(i64 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %26
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @SNAP_EPSILON, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %63, i64* %67, align 8
  br label %78

68:                                               ; preds = %58
  %69 = load i64*, i64** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %62
  br label %100

79:                                               ; preds = %26
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @SNAP_EPSILON, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i64, i64* %9, align 8
  %85 = load i64*, i64** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %84, i64* %88, align 8
  br label %99

89:                                               ; preds = %79
  %90 = load i64*, i64** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %89, %83
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %23

104:                                              ; preds = %23
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i64 @Q_rintAccu(i64) #1

declare dso_local i64 @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
