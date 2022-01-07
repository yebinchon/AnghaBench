; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotDontAvoid.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotDontAvoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotDontAvoid(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @trap_BotGetLevelItemGoal(i32 -1, i8* %7, %struct.TYPE_6__* %5)
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %12, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trap_BotRemoveFromAvoidGoals(i32 %15, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @trap_BotGetLevelItemGoal(i32 %19, i8* %20, %struct.TYPE_6__* %5)
  store i32 %21, i32* %6, align 4
  br label %9

22:                                               ; preds = %9
  ret void
}

declare dso_local i32 @trap_BotGetLevelItemGoal(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @trap_BotRemoveFromAvoidGoals(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
