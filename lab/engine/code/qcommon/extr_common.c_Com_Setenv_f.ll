; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Setenv_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Setenv_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s undefined\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_Setenv_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call i32 (...) @Cmd_Argc()
  store i32 %5, i32* %1, align 4
  %6 = call i8* @Cmd_Argv(i32 1)
  store i8* %6, i8** %2, align 8
  %7 = load i32, i32* %1, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = call i8* @Cmd_ArgsFrom(i32 2)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @Sys_SetEnv(i8* %11, i8* %12)
  br label %31

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i8*, i8** %2, align 8
  %19 = call i8* @getenv(i8* %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  br label %29

26:                                               ; preds = %17
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %14
  br label %31

31:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i8* @Cmd_ArgsFrom(i32) #1

declare dso_local i32 @Sys_SetEnv(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
