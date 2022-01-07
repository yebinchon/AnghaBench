; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_LoadShaderInfo.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_LoadShaderInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAX_SHADER_FILES = common dso_local global i32 0, align 4
@useCustomInfoParms = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s/shaderlist.txt\00", align 1
@game = common dso_local global %struct.TYPE_2__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@token = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"MAX_SHADER_FILES (%d) reached, trim your shaderlist.txt!\00", align 1
@MAX_OS_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s/%s.shader\00", align 1
@SYS_VRB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%9d shaderInfo\0A\00", align 1
@numShaderInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadShaderInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @MAX_SHADER_FILES, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8*, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load i64, i64* @useCustomInfoParms, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 (...) @ParseCustomInfoParms()
  br label %16

16:                                               ; preds = %14, %0
  store i32 0, i32* %3, align 4
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %23 = call i32 @vfsGetFileCount(i8* %22)
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %86, %16
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @LoadScriptFile(i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %84, %28
  %38 = load i32, i32* @qtrue, align 4
  %39 = call i64 @GetToken(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %11, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @token, align 4
  %52 = call i32 @strcmp(i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %59

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %42

59:                                               ; preds = %54, %42
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @MAX_SHADER_FILES, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @MAX_SHADER_FILES, align 4
  %65 = call i32 @Error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* @MAX_OS_PATH, align 4
  %72 = call i8* @safe_malloc(i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %11, i64 %74
  store i8* %72, i8** %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %11, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @token, align 4
  %81 = call i32 @strcpy(i8* %79, i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %70, %66
  br label %37

85:                                               ; preds = %37
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %24

89:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @game, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %11, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %98, i8* %102)
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %105 = call i32 @ParseShaderFile(i8* %104)
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %11, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @free(i8* %109)
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %1, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %1, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load i32, i32* @SYS_VRB, align 4
  %116 = load i32, i32* @numShaderInfo, align 4
  %117 = call i32 @Sys_FPrintf(i32 %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ParseCustomInfoParms(...) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @vfsGetFileCount(i8*) #2

declare dso_local i32 @LoadScriptFile(i8*, i32) #2

declare dso_local i64 @GetToken(i32) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i32 @Error(i8*, i32) #2

declare dso_local i8* @safe_malloc(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @ParseShaderFile(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
