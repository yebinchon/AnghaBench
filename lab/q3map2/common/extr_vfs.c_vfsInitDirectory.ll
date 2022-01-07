; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsInitDirectory.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsInitDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@g_numDirs = common dso_local global i32 0, align 4
@VFS_MAXDIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"VFS Init: %s\0A\00", align 1
@g_strDirs = common dso_local global i8** null, align 8
@g_bUsePak = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".pk3dir\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".dpkdir\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".dpk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfsInitDirectory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @g_numDirs, align 4
  %15 = load i32, i32* @VFS_MAXDIRS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %135

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @Sys_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8**, i8*** @g_strDirs, align 8
  %23 = load i32, i32* @g_numDirs, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @strcpy(i8* %26, i8* %27)
  %29 = load i8**, i8*** @g_strDirs, align 8
  %30 = load i32, i32* @g_numDirs, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @vfsFixDOSName(i8* %33)
  %35 = load i8**, i8*** @g_strDirs, align 8
  %36 = load i32, i32* @g_numDirs, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @vfsAddSlash(i8* %39)
  %41 = load i32, i32* @g_numDirs, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @g_numDirs, align 4
  %43 = load i64, i64* @g_bUsePak, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %134

45:                                               ; preds = %19
  %46 = load i8*, i8** %2, align 8
  %47 = call i32* @g_dir_open(i8* %46, i32 0, i32* null)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %133

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %123, %122, %77, %50
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %6, align 8
  %54 = call i8* @g_dir_read_name(i32* %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %130

58:                                               ; preds = %52
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @g_strdup(i8* %59)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @strrchr(i8* %61, i8 signext 46)
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %111

65:                                               ; preds = %58
  %66 = load i8*, i8** %9, align 8
  %67 = call i64 @Q_stricmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i8*, i8** %9, align 8
  %71 = call i64 @Q_stricmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %111, label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @g_numDirs, align 4
  %75 = load i32, i32* @VFS_MAXDIRS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %51

78:                                               ; preds = %73
  %79 = load i8**, i8*** @g_strDirs, align 8
  %80 = load i32, i32* @g_numDirs, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @PATH_MAX, align 4
  %85 = load i8*, i8** %2, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @snprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %85, i8* %86)
  %88 = load i8**, i8*** @g_strDirs, align 8
  %89 = load i32, i32* @g_numDirs, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* @PATH_MAX, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i8**, i8*** @g_strDirs, align 8
  %98 = load i32, i32* @g_numDirs, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @vfsFixDOSName(i8* %101)
  %103 = load i8**, i8*** @g_strDirs, align 8
  %104 = load i32, i32* @g_numDirs, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @vfsAddSlash(i8* %107)
  %109 = load i32, i32* @g_numDirs, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @g_numDirs, align 4
  br label %111

111:                                              ; preds = %78, %69, %58
  %112 = load i8*, i8** %9, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** %9, align 8
  %116 = call i64 @Q_stricmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i8*, i8** %9, align 8
  %120 = call i64 @Q_stricmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %111
  br label %51

123:                                              ; preds = %118, %114
  %124 = load i8*, i8** %2, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %124, i8* %125)
  %127 = call i32 @vfsInitPakFile(i8* %13)
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @g_free(i8* %128)
  br label %51

130:                                              ; preds = %57
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @g_dir_close(i32* %131)
  br label %133

133:                                              ; preds = %130, %45
  br label %134

134:                                              ; preds = %133, %19
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %134, %18
  %136 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %7, align 4
  switch i32 %137, label %139 [
    i32 0, label %138
    i32 1, label %138
  ]

138:                                              ; preds = %135, %135
  ret void

139:                                              ; preds = %135
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @vfsFixDOSName(i8*) #2

declare dso_local i32 @vfsAddSlash(i8*) #2

declare dso_local i32* @g_dir_open(i8*, i32, i32*) #2

declare dso_local i8* @g_dir_read_name(i32*) #2

declare dso_local i8* @g_strdup(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @vfsInitPakFile(i8*) #2

declare dso_local i32 @g_free(i8*) #2

declare dso_local i32 @g_dir_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
