; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_InitGPUShader.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_InitGPUShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64, i32*, i64, i8*, i8*)* @GLSL_InitGPUShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GLSL_InitGPUShader(i32* %0, i8* %1, i32 %2, i64 %3, i32* %4, i64 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [32000 x i8], align 16
  %19 = alloca [32000 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 32000, i32* %21, align 4
  %23 = load i64, i64* %15, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %8
  %26 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = getelementptr inbounds [32000 x i8], [32000 x i8]* %18, i64 0, i64 0
  %29 = load i32, i32* %21, align 4
  %30 = call i32 @GLSL_GetShaderHeader(i32 %26, i32* %27, i8* %28, i32 %29)
  %31 = getelementptr inbounds [32000 x i8], [32000 x i8]* %18, i64 0, i64 0
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32000 x i8], [32000 x i8]* %18, i64 0, i64 %33
  store i8* %34, i8** %20, align 8
  %35 = getelementptr inbounds [32000 x i8], [32000 x i8]* %18, i64 0, i64 0
  %36 = call i32 @strlen(i8* %35)
  %37 = load i32, i32* %21, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %21, align 4
  br label %41

39:                                               ; preds = %8
  %40 = getelementptr inbounds [32000 x i8], [32000 x i8]* %18, i64 0, i64 0
  store i8* %40, i8** %20, align 8
  br label %41

41:                                               ; preds = %39, %25
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %45 = load i8*, i8** %20, align 8
  %46 = load i32, i32* %21, align 4
  %47 = call i32 @GLSL_LoadGPUShaderText(i8* %42, i8* %43, i32 %44, i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %96

50:                                               ; preds = %41
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  store i32 32000, i32* %21, align 4
  %54 = load i64, i64* %15, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds [32000 x i8], [32000 x i8]* %19, i64 0, i64 0
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @GLSL_GetShaderHeader(i32 %57, i32* %58, i8* %59, i32 %60)
  %62 = getelementptr inbounds [32000 x i8], [32000 x i8]* %19, i64 0, i64 0
  %63 = call i32 @strlen(i8* %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [32000 x i8], [32000 x i8]* %19, i64 0, i64 %64
  store i8* %65, i8** %20, align 8
  %66 = getelementptr inbounds [32000 x i8], [32000 x i8]* %19, i64 0, i64 0
  %67 = call i32 @strlen(i8* %66)
  %68 = load i32, i32* %21, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %21, align 4
  br label %72

70:                                               ; preds = %53
  %71 = getelementptr inbounds [32000 x i8], [32000 x i8]* %19, i64 0, i64 0
  store i8* %71, i8** %20, align 8
  br label %72

72:                                               ; preds = %70, %56
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %76 = load i8*, i8** %20, align 8
  %77 = load i32, i32* %21, align 4
  %78 = call i32 @GLSL_LoadGPUShaderText(i8* %73, i8* %74, i32 %75, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %96

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %50
  %83 = load i32*, i32** %10, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = getelementptr inbounds [32000 x i8], [32000 x i8]* %18, i64 0, i64 0
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = getelementptr inbounds [32000 x i8], [32000 x i8]* %19, i64 0, i64 0
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i8* [ %90, %89 ], [ null, %91 ]
  %94 = call i32 @GLSL_InitGPUShader2(i32* %83, i8* %84, i32 %85, i8* %86, i8* %93)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %80, %49
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @GLSL_GetShaderHeader(i32, i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GLSL_LoadGPUShaderText(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @GLSL_InitGPUShader2(i32*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
