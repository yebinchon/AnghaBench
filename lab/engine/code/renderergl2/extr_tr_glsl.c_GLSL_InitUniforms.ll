; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_InitUniforms.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_InitUniforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32)* }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32 }

@UNIFORM_COUNT = common dso_local global i32 0, align 4
@uniformsInfo = common dso_local global %struct.TYPE_7__* null, align 8
@glRefConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLSL_InitUniforms(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %94, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @UNIFORM_COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %97

13:                                               ; preds = %9
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @uniformsInfo, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @qglGetUniformLocation(i32 %16, i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %13
  br label %94

35:                                               ; preds = %13
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @uniformsInfo, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %92 [
    i32 133, label %49
    i32 135, label %54
    i32 134, label %59
    i32 130, label %64
    i32 129, label %69
    i32 128, label %74
    i32 132, label %79
    i32 131, label %84
  ]

49:                                               ; preds = %35
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %93

54:                                               ; preds = %35
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %93

59:                                               ; preds = %35
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 20
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %93

64:                                               ; preds = %35
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %93

69:                                               ; preds = %35
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 12
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %93

74:                                               ; preds = %35
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 16
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %93

79:                                               ; preds = %35
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 64
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %93

84:                                               ; preds = %35
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 0), align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 64, %86
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %35
  br label %93

93:                                               ; preds = %92, %84, %79, %74, %69, %64, %59, %54, %49
  br label %94

94:                                               ; preds = %93, %34
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %9

97:                                               ; preds = %9
  %98 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 %98(i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  ret void
}

declare dso_local i32 @qglGetUniformLocation(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
