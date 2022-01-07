; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_lookup_next_entity.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_lookup_next_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i32 }
%struct.bfq_sched_data = type { i64, i64, %struct.bfq_service_tree* }
%struct.bfq_service_tree = type { i32 }

@BFQ_IOPRIO_CLASSES = common dso_local global i32 0, align 4
@BFQ_CL_IDLE_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_entity* (%struct.bfq_sched_data*, i32)* @bfq_lookup_next_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_entity* @bfq_lookup_next_entity(%struct.bfq_sched_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bfq_entity*, align 8
  %4 = alloca %struct.bfq_sched_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfq_service_tree*, align 8
  %7 = alloca %struct.bfq_service_tree*, align 8
  %8 = alloca %struct.bfq_entity*, align 8
  %9 = alloca i32, align 4
  store %struct.bfq_sched_data* %0, %struct.bfq_sched_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %4, align 8
  %11 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %10, i32 0, i32 2
  %12 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %11, align 8
  store %struct.bfq_service_tree* %12, %struct.bfq_service_tree** %6, align 8
  %13 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %6, align 8
  %14 = load i32, i32* @BFQ_IOPRIO_CLASSES, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %13, i64 %16
  store %struct.bfq_service_tree* %17, %struct.bfq_service_tree** %7, align 8
  store %struct.bfq_entity* null, %struct.bfq_entity** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %4, align 8
  %19 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BFQ_CL_IDLE_TIMEOUT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @time_is_before_jiffies(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %27 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %26, i32 0, i32 0
  %28 = call i32 @RB_EMPTY_ROOT(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @BFQ_IOPRIO_CLASSES, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %4, align 8
  %36 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %2
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @BFQ_IOPRIO_CLASSES, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %43, i64 %45
  %47 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %4, align 8
  %48 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %42
  %56 = phi i1 [ false, %42 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call %struct.bfq_entity* @__bfq_lookup_next_entity(%struct.bfq_service_tree* %46, i32 %57)
  store %struct.bfq_entity* %58, %struct.bfq_entity** %8, align 8
  %59 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %60 = icmp ne %struct.bfq_entity* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %66

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %38

66:                                               ; preds = %61, %38
  %67 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %68 = icmp ne %struct.bfq_entity* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store %struct.bfq_entity* null, %struct.bfq_entity** %3, align 8
  br label %72

70:                                               ; preds = %66
  %71 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  store %struct.bfq_entity* %71, %struct.bfq_entity** %3, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  ret %struct.bfq_entity* %73
}

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local %struct.bfq_entity* @__bfq_lookup_next_entity(%struct.bfq_service_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
