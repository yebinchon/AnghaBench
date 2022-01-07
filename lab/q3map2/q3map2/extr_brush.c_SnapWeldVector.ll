; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_SnapWeldVector.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_SnapWeldVector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNAP_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SnapWeldVector(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** %6, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  br label %139

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %136, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %139

24:                                               ; preds = %21
  %25 = load i64*, i64** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @Q_rint(i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @Q_rint(i64 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %24
  %45 = load i64*, i64** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %49, i64* %53, align 8
  br label %112

54:                                               ; preds = %24
  %55 = load i64, i64* %9, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load i64*, i64** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %67, i64* %71, align 8
  br label %111

72:                                               ; preds = %54
  %73 = load i64, i64* %8, align 8
  %74 = load i64*, i64** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %73, %78
  %80 = call i64 @fabs(i64 %79)
  %81 = load i64, i64* %9, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %81, %86
  %88 = call i64 @fabs(i64 %87)
  %89 = icmp slt i64 %80, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %72
  %91 = load i64*, i64** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %95, i64* %99, align 8
  br label %110

100:                                              ; preds = %72
  %101 = load i64*, i64** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 %105, i64* %109, align 8
  br label %110

110:                                              ; preds = %100, %90
  br label %111

111:                                              ; preds = %110, %62
  br label %112

112:                                              ; preds = %111, %44
  %113 = load i64*, i64** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @Q_rint(i64 %117)
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i64*, i64** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %119, %124
  %126 = call i64 @fabs(i64 %125)
  %127 = load i64, i64* @SNAP_EPSILON, align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %112
  %130 = load i64, i64* %10, align 8
  %131 = load i64*, i64** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 %130, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %112
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %21

139:                                              ; preds = %19, %21
  ret void
}

declare dso_local i64 @Q_rint(i64) #1

declare dso_local i64 @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
