; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotAIShutdownClient.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotAIShutdownClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@botstates = common dso_local global %struct.TYPE_7__** null, align 8
@qfalse = common dso_local global i32 0, align 4
@CHAT_ALL = common dso_local global i32 0, align 4
@numbots = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAIShutdownClient(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @botstates, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %7, i64 %9
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %3, align 4
  br label %79

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = call i32 @BotWriteSessionData(%struct.TYPE_7__* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = call i64 @BotChat_ExitGame(%struct.TYPE_7__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CHAT_ALL, align 4
  %39 = call i32 @trap_BotEnterChat(i32 %34, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %27
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @trap_BotFreeMoveState(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @trap_BotFreeGoalState(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @trap_BotFreeChatState(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @trap_BotFreeWeaponState(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @trap_BotFreeCharacter(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BotFreeWaypoints(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @BotFreeWaypoints(i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = call i32 @BotClearActivateGoalStack(%struct.TYPE_7__* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = call i32 @memset(%struct.TYPE_7__* %71, i32 0, i32 36)
  %73 = load i32, i32* @qfalse, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @numbots, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* @numbots, align 4
  %78 = load i32, i32* @qtrue, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %40, %19
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @BotWriteSessionData(%struct.TYPE_7__*) #1

declare dso_local i64 @BotChat_ExitGame(%struct.TYPE_7__*) #1

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #1

declare dso_local i32 @trap_BotFreeMoveState(i32) #1

declare dso_local i32 @trap_BotFreeGoalState(i32) #1

declare dso_local i32 @trap_BotFreeChatState(i32) #1

declare dso_local i32 @trap_BotFreeWeaponState(i32) #1

declare dso_local i32 @trap_BotFreeCharacter(i32) #1

declare dso_local i32 @BotFreeWaypoints(i32) #1

declare dso_local i32 @BotClearActivateGoalStack(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
