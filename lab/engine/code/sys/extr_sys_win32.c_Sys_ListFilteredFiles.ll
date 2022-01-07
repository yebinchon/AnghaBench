; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_ListFilteredFiles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_ListFilteredFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._finddata_t = type { i32, i8* }

@MAX_OSPATH = common dso_local global i32 0, align 4
@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s\\%s\\*\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\\*\00", align 1
@_A_SUBDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_ListFilteredFiles(i8* %0, i8* %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct._finddata_t, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @MAX_OSPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MAX_OSPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load i32, i32* @MAX_OSPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MAX_FOUND_FILES, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 1, i32* %17, align 4
  br label %125

34:                                               ; preds = %5
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = trunc i64 %19 to i32
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  br label %47

43:                                               ; preds = %34
  %44 = trunc i64 %19 to i32
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %21, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = call i64 @_findfirst(i8* %21, %struct._finddata_t* %16)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %17, align 4
  br label %125

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %118, %52
  %54 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %16, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @_A_SUBDIR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %16, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @Q_stricmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %16, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @Q_stricmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @strlen(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = trunc i64 %23 to i32
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %16, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %24, i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %75, i8* %77)
  br label %84

79:                                               ; preds = %69
  %80 = trunc i64 %23 to i32
  %81 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %16, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %24, i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %79, %73
  %85 = load i8*, i8** %6, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8**, i8*** %9, align 8
  %88 = load i32*, i32** %10, align 8
  call void @Sys_ListFilteredFiles(i8* %85, i8* %24, i8* %86, i8** %87, i32* %88)
  br label %89

89:                                               ; preds = %84, %64, %59
  br label %90

90:                                               ; preds = %89, %53
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MAX_FOUND_FILES, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp sge i32 %92, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %122

97:                                               ; preds = %90
  %98 = trunc i64 %26 to i32
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %16, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %27, i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %99, i8* %101)
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* @qfalse, align 4
  %105 = call i32 @Com_FilterPath(i8* %103, i8* %27, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  br label %118

108:                                              ; preds = %97
  %109 = call i8* @CopyString(i8* %27)
  %110 = load i8**, i8*** %9, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  store i8* %109, i8** %114, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %108, %107
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @_findnext(i64 %119, %struct._finddata_t* %16)
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %53, label %122

122:                                              ; preds = %118, %96
  %123 = load i64, i64* %15, align 8
  %124 = call i32 @_findclose(i64 %123)
  store i32 0, i32* %17, align 4
  br label %125

125:                                              ; preds = %122, %51, %33
  %126 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %17, align 4
  switch i32 %127, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %125, %125
  ret void

129:                                              ; preds = %125
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @_findfirst(i8*, %struct._finddata_t*) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Com_FilterPath(i8*, i8*, i32) #2

declare dso_local i8* @CopyString(i8*) #2

declare dso_local i32 @_findnext(i64, %struct._finddata_t*) #2

declare dso_local i32 @_findclose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
