; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotVisibleEnemies.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotVisibleEnemies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotVisibleEnemies(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %66, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_CLIENTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %69

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %66

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BotEntityInfo(i32 %19, %struct.TYPE_10__* %6)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %66

25:                                               ; preds = %18
  %26 = call i64 @EntityIsDead(%struct.TYPE_10__* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %25
  br label %66

36:                                               ; preds = %28
  %37 = call i64 @EntityIsInvisible(%struct.TYPE_10__* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = call i32 @EntityIsShooting(%struct.TYPE_10__* %6)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %66

43:                                               ; preds = %39, %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @BotSameTeam(%struct.TYPE_9__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %66

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call float @BotEntityVisible(i64 %52, i32 %55, i32 %58, i32 360, i32 %59)
  store float %60, float* %4, align 4
  %61 = load float, float* %4, align 4
  %62 = fcmp ogt float %61, 0.000000e+00
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @qtrue, align 4
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %48, %42, %35, %24, %17
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %7

69:                                               ; preds = %7
  %70 = load i32, i32* @qfalse, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @EntityIsDead(%struct.TYPE_10__*) #1

declare dso_local i64 @EntityIsInvisible(%struct.TYPE_10__*) #1

declare dso_local i32 @EntityIsShooting(%struct.TYPE_10__*) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_9__*, i32) #1

declare dso_local float @BotEntityVisible(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
