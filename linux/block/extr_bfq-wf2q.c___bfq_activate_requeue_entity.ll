; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_activate_requeue_entity.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_activate_requeue_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i32* }
%struct.bfq_sched_data = type { %struct.bfq_entity* }
%struct.bfq_service_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_entity*, %struct.bfq_sched_data*, i32)* @__bfq_activate_requeue_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfq_activate_requeue_entity(%struct.bfq_entity* %0, %struct.bfq_sched_data* %1, i32 %2) #0 {
  %4 = alloca %struct.bfq_entity*, align 8
  %5 = alloca %struct.bfq_sched_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfq_service_tree*, align 8
  store %struct.bfq_entity* %0, %struct.bfq_entity** %4, align 8
  store %struct.bfq_sched_data* %1, %struct.bfq_sched_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %9 = call %struct.bfq_service_tree* @bfq_entity_service_tree(%struct.bfq_entity* %8)
  store %struct.bfq_service_tree* %9, %struct.bfq_service_tree** %7, align 8
  %10 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %5, align 8
  %11 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %10, i32 0, i32 0
  %12 = load %struct.bfq_entity*, %struct.bfq_entity** %11, align 8
  %13 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %14 = icmp eq %struct.bfq_entity* %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %17 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %20 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %19, i32 0, i32 0
  %21 = icmp eq i32* %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %3
  %23 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %24 = call i32 @__bfq_requeue_entity(%struct.bfq_entity* %23)
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @__bfq_activate_entity(%struct.bfq_entity* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  ret void
}

declare dso_local %struct.bfq_service_tree* @bfq_entity_service_tree(%struct.bfq_entity*) #1

declare dso_local i32 @__bfq_requeue_entity(%struct.bfq_entity*) #1

declare dso_local i32 @__bfq_activate_entity(%struct.bfq_entity*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
