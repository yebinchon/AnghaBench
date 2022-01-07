; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xprepare.c_xdl_prepare_env.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xprepare.c_xdl_prepare_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@XDF_HISTOGRAM_DIFF = common dso_local global i64 0, align 8
@XDL_GUESS_NLINES2 = common dso_local global i64 0, align 8
@XDL_GUESS_NLINES1 = common dso_local global i64 0, align 8
@XDF_PATIENCE_DIFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_prepare_env(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @XDF_DIFF_ALG(i32 %17)
  %19 = load i64, i64* @XDF_HISTOGRAM_DIFF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @XDL_GUESS_NLINES2, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @XDL_GUESS_NLINES1, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %12, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @xdl_guess_lines(i32* %27, i64 %28)
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @xdl_guess_lines(i32* %32, i64 %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @XDF_DIFF_ALG(i32 %39)
  %41 = load i64, i64* @XDF_HISTOGRAM_DIFF, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %25
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add nsw i64 %44, %45
  %47 = add nsw i64 %46, 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @xdl_init_classifier(i32* %13, i64 %47, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %116

54:                                               ; preds = %43, %25
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i64 @xdl_prepare_ctx(i32 1, i32* %55, i64 %56, %struct.TYPE_6__* %57, i32* %13, i32* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @xdl_free_classifier(i32* %13)
  store i32 -1, i32* %5, align 4
  br label %116

64:                                               ; preds = %54
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = call i64 @xdl_prepare_ctx(i32 2, i32* %65, i64 %66, %struct.TYPE_6__* %67, i32* %13, i32* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i32 @xdl_free_ctx(i32* %74)
  %76 = call i32 @xdl_free_classifier(i32* %13)
  store i32 -1, i32* %5, align 4
  br label %116

77:                                               ; preds = %64
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @XDF_DIFF_ALG(i32 %80)
  %82 = load i64, i64* @XDF_PATIENCE_DIFF, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %77
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @XDF_DIFF_ALG(i32 %87)
  %89 = load i64, i64* @XDF_HISTOGRAM_DIFF, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = call i64 @xdl_optimize_ctxs(i32* %13, i32* %93, i32* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = call i32 @xdl_free_ctx(i32* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = call i32 @xdl_free_ctx(i32* %103)
  %105 = call i32 @xdl_free_classifier(i32* %13)
  store i32 -1, i32* %5, align 4
  br label %116

106:                                              ; preds = %91, %84, %77
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @XDF_DIFF_ALG(i32 %109)
  %111 = load i64, i64* @XDF_HISTOGRAM_DIFF, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = call i32 @xdl_free_classifier(i32* %13)
  br label %115

115:                                              ; preds = %113, %106
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %98, %72, %62, %53
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @XDF_DIFF_ALG(i32) #1

declare dso_local i32 @xdl_guess_lines(i32*, i64) #1

declare dso_local i64 @xdl_init_classifier(i32*, i64, i32) #1

declare dso_local i64 @xdl_prepare_ctx(i32, i32*, i64, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @xdl_free_classifier(i32*) #1

declare dso_local i32 @xdl_free_ctx(i32*) #1

declare dso_local i64 @xdl_optimize_ctxs(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
