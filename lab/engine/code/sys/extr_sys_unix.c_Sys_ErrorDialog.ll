; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_ErrorDialog.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_ErrorDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"fs_homepath\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"crashlog.txt\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DT_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"%s. See \22%s\22 for details.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"ERROR: couldn't create path '%s' for crash log.\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"ERROR: couldn't open %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"ERROR: couldn't fully write to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_ErrorDialog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %5, align 4
  %11 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %6, align 8
  %12 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @FS_BuildOSPath(i8* %13, i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* @FS_BuildOSPath(i8* %16, i8* %17, i8* %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i8*, i8*, ...) @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %22 = call i32 @Sys_Print(i32 %21)
  %23 = load i32, i32* @DT_ERROR, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 (i8*, i8*, ...) @va(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %24, i8* %25)
  %27 = call i32 @Sys_Dialog(i32 %23, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @Sys_Mkdir(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %32)
  br label %73

34:                                               ; preds = %1
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @Sys_Mkdir(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %39)
  br label %73

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @O_CREAT, align 4
  %44 = load i32, i32* @O_TRUNC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @O_WRONLY, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @open(i8* %42, i32 %47, i32 416)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %52)
  br label %73

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %69, %54
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %57 = call i32 @CON_LogRead(i8* %56, i32 1024)
  store i32 %57, i32* %4, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @write(i32 %60, i8* %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %67)
  br label %70

69:                                               ; preds = %59
  br label %55

70:                                               ; preds = %66, %55
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

73:                                               ; preds = %70, %51, %38, %31
  ret void
}

declare dso_local i8* @Cvar_VariableString(i8*) #1

declare dso_local i8* @FS_BuildOSPath(i8*, i8*, i8*) #1

declare dso_local i32 @Sys_Print(i32) #1

declare dso_local i32 @va(i8*, i8*, ...) #1

declare dso_local i32 @Sys_Dialog(i32, i32, i8*) #1

declare dso_local i32 @Sys_Mkdir(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @CON_LogRead(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
