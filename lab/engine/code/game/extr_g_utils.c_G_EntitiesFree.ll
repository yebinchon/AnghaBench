; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_EntitiesFree.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_EntitiesFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@level = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ENTITYNUM_MAX_NORMAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_CLIENTS = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_EntitiesFree() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @level, i32 0, i32 0), align 4
  %5 = load i32, i32* @ENTITYNUM_MAX_NORMAL, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @qtrue, align 4
  store i32 %8, i32* %1, align 4
  br label %34

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_entities, align 8
  %11 = load i64, i64* @MAX_CLIENTS, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  %13 = load i64, i64* @MAX_CLIENTS, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %27, %9
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @level, i32 0, i32 0), align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* %1, align 4
  br label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 1
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %3, align 8
  br label %15

32:                                               ; preds = %15
  %33 = load i32, i32* @qfalse, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %25, %7
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
