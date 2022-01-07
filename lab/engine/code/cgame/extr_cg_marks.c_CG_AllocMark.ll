; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_marks.c_CG_AllocMark.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_marks.c_CG_AllocMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@cg_freeMarkPolys = common dso_local global %struct.TYPE_7__* null, align 8
@cg_activeMarkPolys = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CG_AllocMark() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cg_freeMarkPolys, align 8
  %4 = icmp ne %struct.TYPE_7__* %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeMarkPolys, i32 0, i32 2), align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %20, %5
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeMarkPolys, i32 0, i32 2), align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeMarkPolys, i32 0, i32 2), align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeMarkPolys, i32 0, i32 2), align 8
  %22 = call i32 @CG_FreeMarkPoly(%struct.TYPE_7__* %21)
  br label %9

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cg_freeMarkPolys, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %1, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cg_freeMarkPolys, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** @cg_freeMarkPolys, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %30 = call i32 @memset(%struct.TYPE_7__* %29, i32 0, i32 24)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeMarkPolys, i32 0, i32 1), align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store %struct.TYPE_7__* @cg_activeMarkPolys, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeMarkPolys, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_activeMarkPolys, i32 0, i32 1), align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %40
}

declare dso_local i32 @CG_FreeMarkPoly(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
