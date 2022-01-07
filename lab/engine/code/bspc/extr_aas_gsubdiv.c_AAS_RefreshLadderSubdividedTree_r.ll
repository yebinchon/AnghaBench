; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_gsubdiv.c_AAS_RefreshLadderSubdividedTree_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_gsubdiv.c_AAS_RefreshLadderSubdividedTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @AAS_RefreshLadderSubdividedTree_r(%struct.TYPE_6__* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %74

15:                                               ; preds = %5
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 0
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 1
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %41, align 8
  br label %42

42:                                               ; preds = %26, %20
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %6, align 8
  br label %74

44:                                               ; preds = %15
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.TYPE_6__* @AAS_RefreshLadderSubdividedTree_r(%struct.TYPE_6__* %49, i32* %50, %struct.TYPE_6__* %51, %struct.TYPE_6__* %52, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 0
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call %struct.TYPE_6__* @AAS_RefreshLadderSubdividedTree_r(%struct.TYPE_6__* %63, i32* %64, %struct.TYPE_6__* %65, %struct.TYPE_6__* %66, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 1
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %6, align 8
  br label %74

74:                                               ; preds = %44, %42, %14
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
