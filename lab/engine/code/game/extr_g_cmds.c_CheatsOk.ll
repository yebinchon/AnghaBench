; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_CheatsOk.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_CheatsOk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@g_cheats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@g_entities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"print \22Cheats are not enabled on this server.\0A\22\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"print \22You must be alive to use this command.\0A\22\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheatsOk(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_cheats, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* @g_entities, align 4
  %9 = sext i32 %8 to i64
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 %10
  %12 = call i32 @trap_SendServerCommand(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @qfalse, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = load i32, i32* @g_entities, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %23
  %25 = call i32 @trap_SendServerCommand(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %14
  %28 = load i32, i32* @qtrue, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %19, %6
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @trap_SendServerCommand(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
