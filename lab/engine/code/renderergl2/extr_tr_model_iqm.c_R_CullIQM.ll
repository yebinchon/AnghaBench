; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_R_CullIQM.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_R_CullIQM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @R_CullIQM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_CullIQM(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca [2 x i64*], align 16
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 1), align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 1), align 4
  store i32 130, i32* %3, align 4
  br label %122

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 6, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %20, i64 %26
  store i64* %27, i64** %7, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 6, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %30, i64 %36
  store i64* %37, i64** %8, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %106, %17
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %109

41:                                               ; preds = %38
  %42 = load i64*, i64** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %46, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  br label %65

59:                                               ; preds = %41
  %60 = load i64*, i64** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i64 [ %58, %53 ], [ %64, %59 ]
  %67 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %68 = load i64*, i64** %67, align 16
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %66, i64* %71, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %77, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %65
  %86 = load i64*, i64** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  br label %99

92:                                               ; preds = %65
  %93 = load i64*, i64** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = load i64, i64* %97, align 8
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi i64 [ %91, %85 ], [ %98, %92 ]
  %101 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %100, i64* %105, align 8
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %38

109:                                              ; preds = %38
  %110 = getelementptr inbounds [2 x i64*], [2 x i64*]* %6, i64 0, i64 0
  %111 = call i32 @R_CullLocalBox(i64** %110)
  switch i32 %111, label %119 [
    i32 129, label %112
    i32 130, label %115
    i32 128, label %118
  ]

112:                                              ; preds = %109
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 2), align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 2), align 4
  store i32 129, i32* %3, align 4
  br label %122

115:                                              ; preds = %109
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 1), align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 1), align 4
  store i32 130, i32* %3, align 4
  br label %122

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %109, %118
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 0), align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0, i32 0), align 4
  store i32 128, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %115, %112, %14
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @R_CullLocalBox(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
