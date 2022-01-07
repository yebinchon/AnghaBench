; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ShaderStateChanged.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ShaderStateChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_QPATH = common dso_local global i32 0, align 4
@CS_SHADERSTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ShaderStateChanged() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @MAX_QPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @MAX_QPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %15 = load i32, i32* @CS_SHADERSTATE, align 4
  %16 = call i8* @CG_ConfigString(i32 %15)
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %108, %0
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %109

27:                                               ; preds = %25
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strstr(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %107

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %107

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @strncpy(i8* %11, i8* %38, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = getelementptr inbounds i8, i8* %11, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %37
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @strncpy(i8* %14, i8* %64, i32 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = getelementptr inbounds i8, i8* %14, i64 %76
  store i8 0, i8* %77, align 1
  br label %79

78:                                               ; preds = %58, %37
  br label %109

79:                                               ; preds = %63
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @strstr(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %79
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @strncpy(i8* %87, i8* %88, i32 %94)
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %5, align 8
  %104 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %105 = call i32 @trap_R_RemapShader(i8* %11, i8* %14, i8* %104)
  br label %106

106:                                              ; preds = %86, %79
  br label %108

107:                                              ; preds = %32, %27
  br label %109

108:                                              ; preds = %106
  br label %17

109:                                              ; preds = %107, %78, %25
  %110 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %110)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CG_ConfigString(i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @trap_R_RemapShader(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
