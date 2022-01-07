; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotGetItemTeamGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_cmd.c_BotGetItemTeamGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@qfalse = common dso_local global i32 0, align 4
@GFL_DROPPED = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGetItemTeamGoal(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %3, align 4
  br label %36

12:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = call i32 @trap_BotGetLevelItemGoal(i32 %14, i8* %15, %struct.TYPE_4__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GFL_DROPPED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @qtrue, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %13, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %28, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @trap_BotGetLevelItemGoal(i32, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
