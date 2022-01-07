; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotResetState.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotResetState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotResetState(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 9
  %16 = call i32 @memcpy(i32* %10, i32* %15, i32 4)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 10
  %19 = call i32 @memcpy(i32* %12, i32* %18, i32 4)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 8
  %46 = load float, float* %45, align 4
  store float %46, float* %13, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BotFreeWaypoints(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BotFreeWaypoints(i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = call i32 @memset(%struct.TYPE_4__* %55, i32 0, i32 52)
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 10
  %71 = call i32 @memcpy(i32* %70, i32* %12, i32 4)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 9
  %74 = call i32 @memcpy(i32* %73, i32* %10, i32 4)
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load float, float* %13, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 8
  store float %87, float* %89, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @trap_BotResetMoveState(i32 %97)
  br label %99

99:                                               ; preds = %94, %1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @trap_BotResetGoalState(i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @trap_BotResetWeaponState(i32 %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @trap_BotResetAvoidGoals(i32 %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @trap_BotResetAvoidReach(i32 %137)
  br label %139

139:                                              ; preds = %134, %129
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @BotFreeWaypoints(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @trap_BotResetMoveState(i32) #1

declare dso_local i32 @trap_BotResetGoalState(i32) #1

declare dso_local i32 @trap_BotResetWeaponState(i32) #1

declare dso_local i32 @trap_BotResetAvoidGoals(i32) #1

declare dso_local i32 @trap_BotResetAvoidReach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
