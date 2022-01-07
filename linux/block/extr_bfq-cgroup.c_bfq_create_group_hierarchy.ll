; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-cgroup.c_bfq_create_group_hierarchy.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-cgroup.c_bfq_create_group_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.bfq_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@BFQ_IOPRIO_CLASSES = common dso_local global i32 0, align 4
@BFQ_SERVICE_TREE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfq_group* @bfq_create_group_hierarchy(%struct.bfq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bfq_group*, align 8
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfq_group*, align 8
  %7 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* @__GFP_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bfq_group* @kmalloc_node(i32 8, i32 %10, i32 %11)
  store %struct.bfq_group* %12, %struct.bfq_group** %6, align 8
  %13 = load %struct.bfq_group*, %struct.bfq_group** %6, align 8
  %14 = icmp ne %struct.bfq_group* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.bfq_group* null, %struct.bfq_group** %3, align 8
  br label %35

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BFQ_IOPRIO_CLASSES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* @BFQ_SERVICE_TREE_INIT, align 4
  %23 = load %struct.bfq_group*, %struct.bfq_group** %6, align 8
  %24 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %22, i32* %29, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.bfq_group*, %struct.bfq_group** %6, align 8
  store %struct.bfq_group* %34, %struct.bfq_group** %3, align 8
  br label %35

35:                                               ; preds = %33, %15
  %36 = load %struct.bfq_group*, %struct.bfq_group** %3, align 8
  ret %struct.bfq_group* %36
}

declare dso_local %struct.bfq_group* @kmalloc_node(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
