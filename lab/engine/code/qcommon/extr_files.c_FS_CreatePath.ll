; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_CreatePath.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_CreatePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INSTALL_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"WARNING: refusing to create relative path \22%s\22\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@PATH_SEP = common dso_local global i8 0, align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"FS_CreatePath: failed to create path \22%s\22\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_CreatePath(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @MAX_INSTALL_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strstr(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @Com_Printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @qtrue, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %69

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = trunc i64 %9 to i32
  %26 = call i32 @Q_strncpyz(i8* %11, i8* %24, i32 %25)
  %27 = call i32 @FS_ReplaceSeparators(i8* %11)
  %28 = load i8, i8* @PATH_SEP, align 1
  %29 = call i8* @strchr(i8* %11, i8 signext %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %32, %23
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %67

46:                                               ; preds = %44
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @PATH_SEP, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i8*, i8** %4, align 8
  store i8 0, i8* %54, align 1
  %55 = call i32 @Sys_Mkdir(i8* %11)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ERR_FATAL, align 4
  %59 = call i32 @Com_Error(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %11)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i8, i8* @PATH_SEP, align 1
  %62 = load i8*, i8** %4, align 8
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %60, %46
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  br label %36

67:                                               ; preds = %44
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %19
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @FS_ReplaceSeparators(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @Sys_Mkdir(i8*) #2

declare dso_local i32 @Com_Error(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
