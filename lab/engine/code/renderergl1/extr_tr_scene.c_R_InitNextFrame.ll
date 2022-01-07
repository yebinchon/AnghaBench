; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_R_InitNextFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_scene.c_R_InitNextFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@backEndData = common dso_local global %struct.TYPE_4__* null, align 8
@r_firstSceneDrawSurf = common dso_local global i64 0, align 8
@r_numdlights = common dso_local global i64 0, align 8
@r_firstSceneDlight = common dso_local global i64 0, align 8
@r_numentities = common dso_local global i64 0, align 8
@r_firstSceneEntity = common dso_local global i64 0, align 8
@r_numpolys = common dso_local global i64 0, align 8
@r_firstScenePoly = common dso_local global i64 0, align 8
@r_numpolyverts = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitNextFrame() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @backEndData, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i64 0, i64* %3, align 8
  store i64 0, i64* @r_firstSceneDrawSurf, align 8
  store i64 0, i64* @r_numdlights, align 8
  store i64 0, i64* @r_firstSceneDlight, align 8
  store i64 0, i64* @r_numentities, align 8
  store i64 0, i64* @r_firstSceneEntity, align 8
  store i64 0, i64* @r_numpolys, align 8
  store i64 0, i64* @r_firstScenePoly, align 8
  store i64 0, i64* @r_numpolyverts, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
