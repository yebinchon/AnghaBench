; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotPushGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotPushGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i8*)* }
%struct.TYPE_4__ = type { i32, i32* }

@MAX_GOALSTACK = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"goal heap overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotPushGoal(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_4__* @BotGoalStateFromHandle(i32 %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MAX_GOALSTACK, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @botimport, i32 0, i32 0), align 8
  %20 = load i32, i32* @PRT_ERROR, align 4
  %21 = call i32 %19(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BotDumpGoalStack(i32 %22)
  br label %39

24:                                               ; preds = %11
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @Com_Memcpy(i32* %36, i32* %37, i32 4)
  br label %39

39:                                               ; preds = %24, %18, %10
  ret void
}

declare dso_local %struct.TYPE_4__* @BotGoalStateFromHandle(i32) #1

declare dso_local i32 @BotDumpGoalStack(i32) #1

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
