; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_SetUniformFloat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_SetUniformFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i32, i32)* }
%struct.TYPE_5__ = type { i32*, i32, i32, i64*, i64 }

@uniformsInfo = common dso_local global %struct.TYPE_6__* null, align 8
@GLSL_FLOAT = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"GLSL_SetUniformFloat: wrong type for uniform %i in program %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLSL_SetUniformFloat(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %14, %21
  %23 = inttoptr i64 %22 to i64*
  store i64* %23, i64** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %67

31:                                               ; preds = %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @uniformsInfo, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GLSL_FLOAT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %42 = load i32, i32* @PRINT_WARNING, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %41(i32 %42, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  br label %67

48:                                               ; preds = %31
  %49 = load i64, i64* %6, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %67

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  %56 = load i64*, i64** %8, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @qglProgramUniform1fEXT(i32 %59, i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %54, %53, %40, %30
  ret void
}

declare dso_local i32 @qglProgramUniform1fEXT(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
