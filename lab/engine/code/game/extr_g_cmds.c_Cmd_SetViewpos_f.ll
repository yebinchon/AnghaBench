; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_SetViewpos_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_SetViewpos_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@g_cheats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"print \22Cheats are not enabled on this server.\0A\22\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"print \22usage: setviewpos x y z yaw\0A\22\00", align 1
@YAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_SetViewpos_f(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_cheats, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @g_entities, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = call i32 @trap_SendServerCommand(i32* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %62

22:                                               ; preds = %1
  %23 = call i32 (...) @trap_Argc()
  %24 = icmp ne i32 %23, 5
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @g_entities, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = call i32 @trap_SendServerCommand(i32* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %62

32:                                               ; preds = %22
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @VectorClear(i32* %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %48, %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = trunc i64 %10 to i32
  %42 = call i32 @trap_Argv(i32 %40, i8* %12, i32 %41)
  %43 = call i32 @atof(i8* %12)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %35

51:                                               ; preds = %35
  %52 = trunc i64 %10 to i32
  %53 = call i32 @trap_Argv(i32 4, i8* %12, i32 %52)
  %54 = call i32 @atof(i8* %12)
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @YAW, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @TeleportPlayer(i32* %58, i32* %59, i32* %60)
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %51, %25, %15
  %63 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %66 [
    i32 0, label %65
    i32 1, label %65
  ]

65:                                               ; preds = %62, %62
  ret void

66:                                               ; preds = %62
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_SendServerCommand(i32*, i8*) #2

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @VectorClear(i32*) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @atof(i8*) #2

declare dso_local i32 @TeleportPlayer(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
