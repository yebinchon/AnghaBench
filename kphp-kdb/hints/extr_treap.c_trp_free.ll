; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_trp_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_trp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@free_nodes = common dso_local global %struct.TYPE_4__* null, align 8
@free_nodes_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trp_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp eq %struct.TYPE_4__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  call void @trp_free(%struct.TYPE_4__* %9)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  call void @trp_free(%struct.TYPE_4__* %12)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @free_nodes, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** @free_nodes, align 8
  %19 = load i32, i32* @free_nodes_cnt, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @free_nodes_cnt, align 4
  br label %21

21:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
