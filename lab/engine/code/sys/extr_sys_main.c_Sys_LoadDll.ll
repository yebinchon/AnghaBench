; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_LoadDll.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_LoadDll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [66 x i8] c"Refusing to attempt to load library \22%s\22: Extension not allowed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Trying to load \22%s\22...\0A\00", align 1
@MAX_OSPATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@PATH_SEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Trying to load \22%s\22 from \22%s\22...\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Skipping trying to load \22%s\22 from \22%s\22, file name is too long.\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"fs_basepath\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Loading \22%s\22 failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Sys_LoadDll(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @Sys_DllExtension(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i8* null, i8** %3, align 8
  br label %104

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @Sys_LoadLibrary(i8* %24)
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %102, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @MAX_OSPATH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  %34 = call i8* (...) @Sys_BinaryPath()
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %39

39:                                               ; preds = %38, %29
  %40 = trunc i64 %31 to i32
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @PATH_SEP, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @Com_sprintf(i8* %33, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %41, i32 %42, i8* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, %31
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %49, i8* %50)
  %52 = call i8* @Sys_LoadLibrary(i8* %33)
  store i8* %52, i8** %6, align 8
  br label %57

53:                                               ; preds = %39
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %100, label %60

60:                                               ; preds = %57
  %61 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %60
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i64 @FS_FilenameCompare(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = trunc i64 %31 to i32
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @PATH_SEP, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @Com_sprintf(i8* %33, i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %77, i8* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %81, %31
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %84, i8* %85)
  %87 = call i8* @Sys_LoadLibrary(i8* %33)
  store i8* %87, i8** %6, align 8
  br label %92

88:                                               ; preds = %74
  %89 = load i8*, i8** %4, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %69
  %94 = load i8*, i8** %6, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %57
  %101 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %101)
  br label %102

102:                                              ; preds = %100, %26
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %3, align 8
  br label %104

104:                                              ; preds = %102, %15
  %105 = load i8*, i8** %3, align 8
  ret i8* %105
}

declare dso_local i32 @Sys_DllExtension(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #1

declare dso_local i8* @Sys_LoadLibrary(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @Sys_BinaryPath(...) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @Cvar_VariableString(i8*) #1

declare dso_local i64 @FS_FilenameCompare(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
