; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_compute_indegrees_to_depth.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_compute_indegrees_to_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.topo_walk_info* }
%struct.topo_walk_info = type { i32 }
%struct.commit = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, i64)* @compute_indegrees_to_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_indegrees_to_depth(%struct.rev_info* %0, i64 %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.topo_walk_info*, align 8
  %6 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %8 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 0
  %9 = load %struct.topo_walk_info*, %struct.topo_walk_info** %8, align 8
  store %struct.topo_walk_info* %9, %struct.topo_walk_info** %5, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.topo_walk_info*, %struct.topo_walk_info** %5, align 8
  %12 = getelementptr inbounds %struct.topo_walk_info, %struct.topo_walk_info* %11, i32 0, i32 0
  %13 = call %struct.commit* @prio_queue_peek(i32* %12)
  store %struct.commit* %13, %struct.commit** %6, align 8
  %14 = icmp ne %struct.commit* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.commit*, %struct.commit** %6, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp sge i64 %18, %19
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i1 [ false, %10 ], [ %20, %15 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %25 = call i32 @indegree_walk_step(%struct.rev_info* %24)
  br label %10

26:                                               ; preds = %21
  ret void
}

declare dso_local %struct.commit* @prio_queue_peek(i32*) #1

declare dso_local i32 @indegree_walk_step(%struct.rev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
