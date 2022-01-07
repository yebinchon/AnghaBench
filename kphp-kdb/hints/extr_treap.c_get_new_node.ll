; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_get_new_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_get_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@free_nodes_cnt = common dso_local global i64 0, align 8
@allocated_nodes_cnt = common dso_local global i32 0, align 4
@free_nodes = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @get_new_node() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i64, i64* @free_nodes_cnt, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = load i32, i32* @allocated_nodes_cnt, align 4
  %6 = icmp slt i32 %5, 10000
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load i32, i32* @allocated_nodes_cnt, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @trp_init_mem(i32 10)
  br label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @allocated_nodes_cnt, align 4
  %14 = call i32 @trp_init_mem(i32 %13)
  br label %15

15:                                               ; preds = %12, %10
  br label %18

16:                                               ; preds = %4
  %17 = call i32 @trp_init_mem(i32 10000)
  br label %18

18:                                               ; preds = %16, %15
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i64, i64* @free_nodes_cnt, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @free_nodes_cnt, align 8
  %22 = load i64, i64* @free_nodes_cnt, align 8
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_nodes, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %1, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_nodes, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @free_nodes, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %32
}

declare dso_local i32 @trp_init_mem(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
