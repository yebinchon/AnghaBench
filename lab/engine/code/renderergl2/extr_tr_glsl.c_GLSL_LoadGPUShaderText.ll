; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_LoadGPUShaderText.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_glsl.c_GLSL_LoadGPUShaderText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i8*, i8**)*, i32 (i8*)*, i32 (i32, i8*, i8*)* }

@MAX_QPATH = common dso_local global i32 0, align 4
@GL_VERTEX_SHADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"glsl/%s_vp.glsl\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"glsl/%s_fp.glsl\00", align 1
@r_externalGLSL = common dso_local global %struct.TYPE_4__* null, align 8
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"...loading built-in '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"couldn't load '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"...loading '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i32)* @GLSL_LoadGPUShaderText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GLSL_LoadGPUShaderText(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @MAX_QPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @GL_VERTEX_SHADER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = trunc i64 %20 to i32
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @Com_sprintf(i8* %22, i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %34

30:                                               ; preds = %5
  %31 = trunc i64 %20 to i32
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @Com_sprintf(i8* %22, i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_externalGLSL, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %41 = call i32 %40(i8* %22, i8** %14)
  store i32 %41, i32* %16, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %16, align 4
  store i8* null, i8** %14, align 8
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 2), align 8
  %51 = load i32, i32* @PRINT_DEVELOPER, align 4
  %52 = call i32 %50(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %15, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @strlen(i8* %54)
  store i32 %55, i32* %16, align 4
  br label %60

56:                                               ; preds = %46
  %57 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 2), align 8
  %58 = load i32, i32* @PRINT_DEVELOPER, align 4
  %59 = call i32 %57(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %86

60:                                               ; preds = %49
  br label %66

61:                                               ; preds = %43
  %62 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 2), align 8
  %63 = load i32, i32* @PRINT_DEVELOPER, align 4
  %64 = call i32 %62(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %22)
  %65 = load i8*, i8** %14, align 8
  store i8* %65, i8** %15, align 8
  br label %66

66:                                               ; preds = %61, %60
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %17, align 4
  br label %77

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @Q_strncpyz(i8* %72, i8* %73, i32 %75)
  store i32 1, i32* %17, align 4
  br label %77

77:                                               ; preds = %71, %70
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 1), align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 %81(i8* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %86

86:                                               ; preds = %84, %56
  %87 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
