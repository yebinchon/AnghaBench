; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_Exec_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_Exec_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"execq\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"exec%s <filename> : execute a script file%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c" without notification\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"couldn't exec %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"execing %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Exec_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_QPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 @Cmd_Argv(i32 0)
  %11 = call i32 @Q_stricmp(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %1, align 4
  %15 = call i32 (...) @Cmd_Argc()
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %27

17:                                               ; preds = %0
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %22 = load i32, i32* %1, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %26 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %25)
  store i32 1, i32* %5, align 4
  br label %52

27:                                               ; preds = %0
  %28 = call i32 @Cmd_Argv(i32 1)
  %29 = trunc i64 %7 to i32
  %30 = call i32 @Q_strncpyz(i8* %9, i32 %28, i32 %29)
  %31 = trunc i64 %7 to i32
  %32 = call i32 @COM_DefaultExtension(i8* %9, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %33 = bitcast %union.anon* %2 to i8**
  %34 = call i32 @FS_ReadFile(i8* %9, i8** %33)
  %35 = bitcast %union.anon* %2 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  %39 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %9)
  store i32 1, i32* %5, align 4
  br label %52

40:                                               ; preds = %27
  %41 = load i32, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %9)
  br label %45

45:                                               ; preds = %43, %40
  %46 = bitcast %union.anon* %2 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @Cbuf_InsertText(i8* %47)
  %49 = bitcast %union.anon* %2 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @FS_FreeFile(i8* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %38, %17
  %53 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %5, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

55:                                               ; preds = %52, %52
  ret void

56:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_stricmp(i32, i8*) #2

declare dso_local i32 @Cmd_Argv(i32) #2

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @COM_DefaultExtension(i8*, i32, i8*) #2

declare dso_local i32 @FS_ReadFile(i8*, i8**) #2

declare dso_local i32 @Cbuf_InsertText(i8*) #2

declare dso_local i32 @FS_FreeFile(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
