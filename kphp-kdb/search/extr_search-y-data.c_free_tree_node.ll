; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_free_tree_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_free_tree_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@tree_positions_bytes = common dso_local global i32 0, align 4
@free_tree_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@free_tree_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @free_tree_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_tree_node(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 4, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @tree_positions_bytes, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* @tree_positions_bytes, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @zzfree(i32* %21, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %8, %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @free_tree_head, i32 0, i32 2), align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @free_tree_head, i32 0, i32 2), align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store %struct.TYPE_4__* @free_tree_head, %struct.TYPE_4__** %34, align 8
  %35 = load i32, i32* @free_tree_nodes, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @free_tree_nodes, align 4
  ret void
}

declare dso_local i32 @zzfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
