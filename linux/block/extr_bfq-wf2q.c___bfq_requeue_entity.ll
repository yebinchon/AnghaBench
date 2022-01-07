; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_requeue_entity.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_requeue_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i64, i32, i32, i32, %struct.bfq_sched_data* }
%struct.bfq_sched_data = type { %struct.bfq_entity* }
%struct.bfq_service_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_entity*)* @__bfq_requeue_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfq_requeue_entity(%struct.bfq_entity* %0) #0 {
  %2 = alloca %struct.bfq_entity*, align 8
  %3 = alloca %struct.bfq_sched_data*, align 8
  %4 = alloca %struct.bfq_service_tree*, align 8
  store %struct.bfq_entity* %0, %struct.bfq_entity** %2, align 8
  %5 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %6 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %5, i32 0, i32 4
  %7 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %6, align 8
  store %struct.bfq_sched_data* %7, %struct.bfq_sched_data** %3, align 8
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %9 = call %struct.bfq_service_tree* @bfq_entity_service_tree(%struct.bfq_entity* %8)
  store %struct.bfq_service_tree* %9, %struct.bfq_service_tree** %4, align 8
  %10 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %11 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %11, i32 0, i32 0
  %13 = load %struct.bfq_entity*, %struct.bfq_entity** %12, align 8
  %14 = icmp eq %struct.bfq_entity* %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %17 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %18 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bfq_calc_finish(%struct.bfq_entity* %16, i32 %19)
  %21 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %22 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %25 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %27 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %32 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %33 = call i32 @bfq_active_extract(%struct.bfq_service_tree* %31, %struct.bfq_entity* %32)
  br label %34

34:                                               ; preds = %30, %15
  br label %39

35:                                               ; preds = %1
  %36 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %37 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %38 = call i32 @bfq_active_extract(%struct.bfq_service_tree* %36, %struct.bfq_entity* %37)
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %41 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %42 = call i32 @bfq_update_fin_time_enqueue(%struct.bfq_entity* %40, %struct.bfq_service_tree* %41, i32 0)
  ret void
}

declare dso_local %struct.bfq_service_tree* @bfq_entity_service_tree(%struct.bfq_entity*) #1

declare dso_local i32 @bfq_calc_finish(%struct.bfq_entity*, i32) #1

declare dso_local i32 @bfq_active_extract(%struct.bfq_service_tree*, %struct.bfq_entity*) #1

declare dso_local i32 @bfq_update_fin_time_enqueue(%struct.bfq_entity*, %struct.bfq_service_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
