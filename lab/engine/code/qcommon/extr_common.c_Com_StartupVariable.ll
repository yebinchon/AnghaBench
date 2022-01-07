; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_StartupVariable.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_StartupVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com_numConsoleLines = common dso_local global i32 0, align 4
@com_consoleLines = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@CVAR_NONEXISTENT = common dso_local global i64 0, align 8
@CVAR_USER_CREATED = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_StartupVariable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @com_numConsoleLines, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load i32*, i32** @com_consoleLines, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @Cmd_TokenizeString(i32 %14)
  %16 = call i8* @Cmd_Argv(i32 0)
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %46

20:                                               ; preds = %9
  %21 = call i8* @Cmd_Argv(i32 1)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24, %20
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @Cvar_Flags(i8* %30)
  %32 = load i64, i64* @CVAR_NONEXISTENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @Cmd_ArgsFrom(i32 2)
  %37 = load i32, i32* @CVAR_USER_CREATED, align 4
  %38 = call i32 @Cvar_Get(i8* %35, i32 %36, i32 %37)
  br label %44

39:                                               ; preds = %29
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @Cmd_ArgsFrom(i32 2)
  %42 = load i32, i32* @qfalse, align 4
  %43 = call i32 @Cvar_Set2(i8* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %5

49:                                               ; preds = %5
  ret void
}

declare dso_local i32 @Cmd_TokenizeString(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i64 @Cvar_Flags(i8*) #1

declare dso_local i32 @Cvar_Get(i8*, i32, i32) #1

declare dso_local i32 @Cmd_ArgsFrom(i32) #1

declare dso_local i32 @Cvar_Set2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
