; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_target.c_target_relay_use.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_target.c_target_relay_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*)*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_relay_use(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TEAM_RED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %80

28:                                               ; preds = %18, %13, %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TEAM_BLUE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %80

49:                                               ; preds = %39, %34, %28
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.TYPE_15__* @G_PickTarget(i32 %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %7, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = icmp ne %struct.TYPE_15__* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*)** %64, align 8
  %66 = icmp ne i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*)* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*)** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = call i32 %70(%struct.TYPE_15__* %71, %struct.TYPE_15__* %72, %struct.TYPE_15__* %73)
  br label %75

75:                                               ; preds = %67, %62, %55
  br label %80

76:                                               ; preds = %49
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = call i32 @G_UseTargets(%struct.TYPE_15__* %77, %struct.TYPE_15__* %78)
  br label %80

80:                                               ; preds = %76, %75, %48, %27
  ret void
}

declare dso_local %struct.TYPE_15__* @G_PickTarget(i32) #1

declare dso_local i32 @G_UseTargets(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
