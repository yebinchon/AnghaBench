; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_rate_change.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_rate_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }

@rate_tree = common dso_local global %struct.TYPE_14__* null, align 8
@UserRate = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rate_change(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = icmp ne %struct.TYPE_12__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %72

9:                                                ; preds = %2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = call %struct.TYPE_11__* @utree_merge(%struct.TYPE_13__* %12, %struct.TYPE_13__* %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %9
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %24, align 8
  br label %25

25:                                               ; preds = %19, %9
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = bitcast %struct.TYPE_12__* %31 to %struct.TYPE_11__*
  %33 = icmp eq %struct.TYPE_11__* %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %39, align 8
  br label %46

40:                                               ; preds = %25
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %45, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 %47, 8
  %49 = call i32 (...) @lrand48()
  %50 = and i32 %49, 255
  %51 = add nsw i32 %48, %50
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** @rate_tree, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = bitcast %struct.TYPE_12__* %61 to %struct.TYPE_11__*
  %63 = call %struct.TYPE_14__* @utree_insert_node(%struct.TYPE_14__* %60, %struct.TYPE_11__* %62)
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** @rate_tree, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @rate_tree, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store %struct.TYPE_11__* bitcast (%struct.TYPE_14__** @rate_tree to %struct.TYPE_11__*), %struct.TYPE_11__** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32*, i32** @UserRate, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %46, %8
  ret void
}

declare dso_local %struct.TYPE_11__* @utree_merge(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local %struct.TYPE_14__* @utree_insert_node(%struct.TYPE_14__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
