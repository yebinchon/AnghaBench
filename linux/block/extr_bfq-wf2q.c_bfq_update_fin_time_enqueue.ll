; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_update_fin_time_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_update_fin_time_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i64, i64, i32 }
%struct.bfq_service_tree = type { i64 }
%struct.bfq_queue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_entity*, %struct.bfq_service_tree*, i32)* @bfq_update_fin_time_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_update_fin_time_enqueue(%struct.bfq_entity* %0, %struct.bfq_service_tree* %1, i32 %2) #0 {
  %4 = alloca %struct.bfq_entity*, align 8
  %5 = alloca %struct.bfq_service_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfq_queue*, align 8
  %8 = alloca i64, align 8
  store %struct.bfq_entity* %0, %struct.bfq_entity** %4, align 8
  store %struct.bfq_service_tree* %1, %struct.bfq_service_tree** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %10 = call %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity* %9)
  store %struct.bfq_queue* %10, %struct.bfq_queue** %7, align 8
  %11 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %5, align 8
  %12 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %13 = call %struct.bfq_service_tree* @__bfq_entity_update_weight_prio(%struct.bfq_service_tree* %11, %struct.bfq_entity* %12, i32 1)
  store %struct.bfq_service_tree* %13, %struct.bfq_service_tree** %5, align 8
  %14 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %15 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %16 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bfq_calc_finish(%struct.bfq_entity* %14, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  %22 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %5, align 8
  %23 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %26 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @bfq_gt(i64 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %21
  %31 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %5, align 8
  %32 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %35 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  store i64 %37, i64* %8, align 8
  %38 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %39 = icmp ne %struct.bfq_queue* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %42 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = udiv i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %40, %30
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %49 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %54 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %46, %21, %3
  %58 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %5, align 8
  %59 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %60 = call i32 @bfq_active_insert(%struct.bfq_service_tree* %58, %struct.bfq_entity* %59)
  ret void
}

declare dso_local %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity*) #1

declare dso_local %struct.bfq_service_tree* @__bfq_entity_update_weight_prio(%struct.bfq_service_tree*, %struct.bfq_entity*, i32) #1

declare dso_local i32 @bfq_calc_finish(%struct.bfq_entity*, i32) #1

declare dso_local i64 @bfq_gt(i64, i64) #1

declare dso_local i32 @bfq_active_insert(%struct.bfq_service_tree*, %struct.bfq_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
