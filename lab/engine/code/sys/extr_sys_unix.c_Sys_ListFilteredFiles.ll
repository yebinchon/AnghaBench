; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_ListFilteredFiles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_ListFilteredFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@MAX_FOUND_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
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
  %15 = alloca i32*, align 8
  %16 = alloca %struct.dirent*, align 8
  %17 = alloca %struct.stat, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32, i32* @MAX_OSPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @MAX_OSPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load i32, i32* @MAX_OSPATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX_FOUND_FILES, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 1, i32* %18, align 4
  br label %139

35:                                               ; preds = %5
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = trunc i64 %20 to i32
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  br label %48

44:                                               ; preds = %35
  %45 = trunc i64 %20 to i32
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %22, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = call i32* @opendir(i8* %22)
  store i32* %49, i32** %15, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %18, align 4
  br label %139

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %126, %125, %65, %52
  %54 = load i32*, i32** %15, align 8
  %55 = call %struct.dirent* @readdir(i32* %54)
  store %struct.dirent* %55, %struct.dirent** %16, align 8
  %56 = icmp ne %struct.dirent* %55, null
  br i1 %56, label %57, label %136

57:                                               ; preds = %53
  %58 = trunc i64 %27 to i32
  %59 = load %struct.dirent*, %struct.dirent** %16, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %28, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %61)
  %63 = call i32 @stat(i8* %28, %struct.stat* %17)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %53

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @S_IFDIR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load %struct.dirent*, %struct.dirent** %16, align 8
  %74 = getelementptr inbounds %struct.dirent, %struct.dirent* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @Q_stricmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = load %struct.dirent*, %struct.dirent** %16, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @Q_stricmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = trunc i64 %24 to i32
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.dirent*, %struct.dirent** %16, align 8
  %92 = getelementptr inbounds %struct.dirent, %struct.dirent* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %25, i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %90, i8* %93)
  br label %101

95:                                               ; preds = %84
  %96 = trunc i64 %24 to i32
  %97 = load %struct.dirent*, %struct.dirent** %16, align 8
  %98 = getelementptr inbounds %struct.dirent, %struct.dirent* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %25, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %95, %88
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = load i32*, i32** %10, align 8
  call void @Sys_ListFilteredFiles(i8* %102, i8* %25, i8* %103, i8** %104, i32* %105)
  br label %106

106:                                              ; preds = %101, %78, %72
  br label %107

107:                                              ; preds = %106, %66
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAX_FOUND_FILES, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp sge i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %136

114:                                              ; preds = %107
  %115 = trunc i64 %27 to i32
  %116 = load i8*, i8** %7, align 8
  %117 = load %struct.dirent*, %struct.dirent** %16, align 8
  %118 = getelementptr inbounds %struct.dirent, %struct.dirent* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %28, i32 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %116, i8* %119)
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* @qfalse, align 4
  %123 = call i32 @Com_FilterPath(i8* %121, i8* %28, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %114
  br label %53

126:                                              ; preds = %114
  %127 = call i8* @CopyString(i8* %28)
  %128 = load i8**, i8*** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  store i8* %127, i8** %132, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %53

136:                                              ; preds = %113, %53
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @closedir(i32* %137)
  store i32 0, i32* %18, align 4
  br label %139

139:                                              ; preds = %136, %51, %34
  %140 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %18, align 4
  switch i32 %141, label %143 [
    i32 0, label %142
    i32 1, label %142
  ]

142:                                              ; preds = %139, %139
  ret void

143:                                              ; preds = %139
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Com_FilterPath(i8*, i8*, i32) #2

declare dso_local i8* @CopyString(i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
