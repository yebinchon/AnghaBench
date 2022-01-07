; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_GibEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_GibEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_10__, i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@EF_KAMIKAZE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@g_entities = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"kamikaze timer\00", align 1
@EV_GIB_PLAYER = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@ET_INVISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GibEntity(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EF_KAMIKAZE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @level, i32 0, i32 0), align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @g_entities, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 %22
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %5, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %46

29:                                               ; preds = %19
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = icmp ne %struct.TYPE_11__* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %46

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %46

43:                                               ; preds = %36
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = call i32 @G_FreeEntity(%struct.TYPE_11__* %44)
  br label %49

46:                                               ; preds = %42, %35, %28
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %15

49:                                               ; preds = %43, %15
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = load i32, i32* @EV_GIB_PLAYER, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @G_AddEvent(%struct.TYPE_11__* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @qfalse, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ET_INVISIBLE, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_11__*) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
