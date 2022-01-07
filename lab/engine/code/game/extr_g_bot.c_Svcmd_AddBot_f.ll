; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_Svcmd_AddBot_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_bot.c_Svcmd_AddBot_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bot_enable\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Usage: Addbot <botname> [skill 1-5] [team] [msec delay] [altname]\0A\00", align 1
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cl_running\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"loaddefered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_AddBot_f() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %70

25:                                               ; preds = %0
  %26 = trunc i64 %10 to i32
  %27 = call i32 @trap_Argv(i32 1, i8* %12, i32 %26)
  %28 = getelementptr inbounds i8, i8* %12, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @trap_Print(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %70

33:                                               ; preds = %25
  %34 = trunc i64 %17 to i32
  %35 = call i32 @trap_Argv(i32 2, i8* %18, i32 %34)
  %36 = getelementptr inbounds i8, i8* %18, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store float 4.000000e+00, float* %1, align 4
  br label %43

40:                                               ; preds = %33
  %41 = call i32 @atof(i8* %18)
  %42 = call float @Com_Clamp(i32 1, i32 5, i32 %41)
  store float %42, float* %1, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = trunc i64 %20 to i32
  %45 = call i32 @trap_Argv(i32 3, i8* %21, i32 %44)
  %46 = trunc i64 %17 to i32
  %47 = call i32 @trap_Argv(i32 4, i8* %18, i32 %46)
  %48 = getelementptr inbounds i8, i8* %18, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %54

52:                                               ; preds = %43
  %53 = call i32 @atoi(i8* %18)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = trunc i64 %14 to i32
  %56 = call i32 @trap_Argv(i32 5, i8* %15, i32 %55)
  %57 = load float, float* %1, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @G_AddBot(i8* %12, float %57, i8* %21, i32 %58, i8* %15)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp sgt i32 %62, 1000
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @trap_SendServerCommand(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64, %54
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %31, %24
  %71 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %8, align 4
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 1, label %73
  ]

73:                                               ; preds = %70, %70
  ret void

74:                                               ; preds = %70
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @trap_Print(i8*) #2

declare dso_local float @Com_Clamp(i32, i32, i32) #2

declare dso_local i32 @atof(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @G_AddBot(i8*, float, i8*, i32, i8*) #2

declare dso_local i32 @trap_SendServerCommand(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
