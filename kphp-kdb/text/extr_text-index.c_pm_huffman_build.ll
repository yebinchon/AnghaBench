; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_huffman_build.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_huffman_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i64, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 }

@FREQ_INFTY = common dso_local global i32 0, align 4
@PB = common dso_local global %struct.TYPE_12__* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"package-merge: maximal memory usage is %d+%d 8-byte cells out of %d+%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm_huffman_build(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 134217728
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 1
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 %18
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 15, %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @FREQ_INFTY, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 32
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %28, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 32
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %28, i32* %38, align 4
  store i32 31, i32* %5, align 4
  br label %39

39:                                               ; preds = %74, %12
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %44, i32* %51, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 0, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %60, i32* %67, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  %73 = call i32 @pm_tree_advb(%struct.TYPE_11__* %68, %struct.TYPE_12__* %72)
  br label %74

74:                                               ; preds = %42
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %39

77:                                               ; preds = %39
  %78 = load i32, i32* %4, align 4
  %79 = mul nsw i32 2, %78
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %101, %77
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @pm_tree_free(%struct.TYPE_11__* %95, i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PB, align 8
  %100 = call i32 @pm_tree_advance(%struct.TYPE_11__* %98, %struct.TYPE_12__* %99)
  br label %101

101:                                              ; preds = %84
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %5, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load i32, i32* @verbosity, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = mul nsw i32 15, %110
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %111, %115
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = mul nsw i32 15, %118
  %120 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %116, i32 %117, i32 %119)
  br label %121

121:                                              ; preds = %107, %104
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pm_tree_advb(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @pm_tree_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @pm_tree_advance(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
