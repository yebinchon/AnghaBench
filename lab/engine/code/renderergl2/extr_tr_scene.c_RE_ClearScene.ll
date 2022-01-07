; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_scene.c_RE_ClearScene.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_scene.c_RE_ClearScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r_numdlights = common dso_local global i32 0, align 4
@r_firstSceneDlight = common dso_local global i32 0, align 4
@r_numentities = common dso_local global i32 0, align 4
@r_firstSceneEntity = common dso_local global i32 0, align 4
@r_numpolys = common dso_local global i32 0, align 4
@r_firstScenePoly = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_ClearScene() #0 {
  %1 = load i32, i32* @r_numdlights, align 4
  store i32 %1, i32* @r_firstSceneDlight, align 4
  %2 = load i32, i32* @r_numentities, align 4
  store i32 %2, i32* @r_firstSceneEntity, align 4
  %3 = load i32, i32* @r_numpolys, align 4
  store i32 %3, i32* @r_firstScenePoly, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
