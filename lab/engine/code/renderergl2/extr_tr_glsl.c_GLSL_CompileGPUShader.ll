; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_CompileGPUShader.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_CompileGPUShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@GLSL_PRINTLOG_SHADER_SOURCE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@GLSL_PRINTLOG_SHADER_INFO = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Couldn't compile shader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32, i32)* @GLSL_CompileGPUShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GLSL_CompileGPUShader(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @qglCreateShader(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call i32 @qglShaderSource(i32 %16, i32 1, i32** %9, i32* %10)
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @qglCompileShader(i32 %18)
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %22 = call i32 @qglGetShaderiv(i32 %20, i32 %21, i32* %12)
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @GLSL_PRINTLOG_SHADER_SOURCE, align 4
  %28 = load i32, i32* @qfalse, align 4
  %29 = call i32 @GLSL_PrintLog(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @GLSL_PRINTLOG_SHADER_INFO, align 4
  %32 = load i32, i32* @qfalse, align 4
  %33 = call i32 @GLSL_PrintLog(i32 %30, i32 %31, i32 %32)
  %34 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %35 = load i32, i32* @ERR_DROP, align 4
  %36 = call i32 %34(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %55

37:                                               ; preds = %5
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qglDetachShader(i32 %42, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @qglDeleteShader(i32 %47)
  br label %49

49:                                               ; preds = %41, %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @qglAttachShader(i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %25
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @qglCreateShader(i32) #1

declare dso_local i32 @qglShaderSource(i32, i32, i32**, i32*) #1

declare dso_local i32 @qglCompileShader(i32) #1

declare dso_local i32 @qglGetShaderiv(i32, i32, i32*) #1

declare dso_local i32 @GLSL_PrintLog(i32, i32, i32) #1

declare dso_local i32 @qglDetachShader(i32, i32) #1

declare dso_local i32 @qglDeleteShader(i32) #1

declare dso_local i32 @qglAttachShader(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
