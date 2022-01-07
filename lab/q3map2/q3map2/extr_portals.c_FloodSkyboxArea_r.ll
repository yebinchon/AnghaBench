; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_FloodSkyboxArea_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_FloodSkyboxArea_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, %struct.TYPE_3__** }

@skyboxArea = common dso_local global i64 0, align 8
@PLANENUM_LEAF = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FloodSkyboxArea_r(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i64, i64* @skyboxArea, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PLANENUM_LEAF, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  call void @FloodSkyboxArea_r(%struct.TYPE_3__* %17)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  call void @FloodSkyboxArea_r(%struct.TYPE_3__* %22)
  br label %39

23:                                               ; preds = %6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @skyboxArea, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %23
  br label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @qtrue, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %34, %12, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
