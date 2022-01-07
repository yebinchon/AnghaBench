; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_entity_service_tree.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_entity_service_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_service_tree = type { i32 }
%struct.bfq_entity = type { %struct.bfq_sched_data* }
%struct.bfq_sched_data = type { %struct.bfq_service_tree* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfq_service_tree* @bfq_entity_service_tree(%struct.bfq_entity* %0) #0 {
  %2 = alloca %struct.bfq_entity*, align 8
  %3 = alloca %struct.bfq_sched_data*, align 8
  %4 = alloca i32, align 4
  store %struct.bfq_entity* %0, %struct.bfq_entity** %2, align 8
  %5 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %6 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %5, i32 0, i32 0
  %7 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %6, align 8
  store %struct.bfq_sched_data* %7, %struct.bfq_sched_data** %3, align 8
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %9 = call i32 @bfq_class_idx(%struct.bfq_entity* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %3, align 8
  %11 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %10, i32 0, i32 0
  %12 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %12, i64 %14
  ret %struct.bfq_service_tree* %15
}

declare dso_local i32 @bfq_class_idx(%struct.bfq_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
