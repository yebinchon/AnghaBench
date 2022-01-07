; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Toggle_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Toggle_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"usage: toggle <variable> [value1, value2, ...]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"toggle: nothing to toggle to\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_Toggle_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i32 (...) @Cmd_Argc()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @Com_Printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %57

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = call i32 @Cmd_Argv(i32 1)
  %14 = call i32 @Cmd_Argv(i32 1)
  %15 = call i32 @Cvar_VariableValue(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @qfalse, align 4
  %21 = call i32 @Cvar_Set2(i32 %13, i32 %19, i32 %20)
  br label %57

22:                                               ; preds = %9
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %57

27:                                               ; preds = %22
  %28 = call i32 @Cmd_Argv(i32 1)
  %29 = call i8* @Cvar_VariableString(i32 %28)
  store i8* %29, i8** %3, align 8
  store i32 2, i32* %1, align 4
  br label %30

30:                                               ; preds = %49, %27
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @Cmd_Argv(i32 %37)
  %39 = call i64 @strcmp(i8* %36, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = call i32 @Cmd_Argv(i32 1)
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @Cmd_Argv(i32 %44)
  %46 = load i32, i32* @qfalse, align 4
  %47 = call i32 @Cvar_Set2(i32 %42, i32 %45, i32 %46)
  br label %57

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %30

52:                                               ; preds = %30
  %53 = call i32 @Cmd_Argv(i32 1)
  %54 = call i32 @Cmd_Argv(i32 2)
  %55 = load i32, i32* @qfalse, align 4
  %56 = call i32 @Cvar_Set2(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %41, %25, %12, %7
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Cvar_Set2(i32, i32, i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @Cvar_VariableValue(i32) #1

declare dso_local i8* @Cvar_VariableString(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
