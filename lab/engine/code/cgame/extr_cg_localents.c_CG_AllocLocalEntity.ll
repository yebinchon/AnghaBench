; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AllocLocalEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_localents.c_CG_AllocLocalEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@cg_freeLocalEntities = common dso_local global %struct.TYPE_7__* null, align 8
@cg_activeLocalEntities = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CG_AllocLocalEntity() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cg_freeLocalEntities, align 8
  %3 = icmp ne %struct.TYPE_7__* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeLocalEntities, i32 0, i32 1), align 8
  %6 = call i32 @CG_FreeLocalEntity(%struct.TYPE_7__* %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cg_freeLocalEntities, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %1, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cg_freeLocalEntities, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** @cg_freeLocalEntities, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = call i32 @memset(%struct.TYPE_7__* %12, i32 0, i32 16)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeLocalEntities, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store %struct.TYPE_7__* @cg_activeLocalEntities, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeLocalEntities, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeLocalEntities, i32 0, i32 0), align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %23
}

declare dso_local i32 @CG_FreeLocalEntity(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
