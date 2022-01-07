; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_update_next_in_service.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_update_next_in_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_sched_data = type { %struct.bfq_entity*, %struct.bfq_service_tree* }
%struct.bfq_service_tree = type { i32 }
%struct.bfq_entity = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_sched_data*, %struct.bfq_entity*, i32)* @bfq_update_next_in_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_update_next_in_service(%struct.bfq_sched_data* %0, %struct.bfq_entity* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfq_sched_data*, align 8
  %6 = alloca %struct.bfq_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfq_entity*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bfq_service_tree*, align 8
  %13 = alloca i32, align 4
  store %struct.bfq_sched_data* %0, %struct.bfq_sched_data** %5, align 8
  store %struct.bfq_entity* %1, %struct.bfq_entity** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %5, align 8
  %15 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %14, i32 0, i32 0
  %16 = load %struct.bfq_entity*, %struct.bfq_entity** %15, align 8
  store %struct.bfq_entity* %16, %struct.bfq_entity** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  %18 = icmp ne %struct.bfq_entity* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %3
  %20 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  %21 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %5, align 8
  %22 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %21, i32 0, i32 0
  %23 = load %struct.bfq_entity*, %struct.bfq_entity** %22, align 8
  %24 = icmp ne %struct.bfq_entity* %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  %26 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %27 = icmp ne %struct.bfq_entity* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  %30 = call i32 @bfq_class_idx(%struct.bfq_entity* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %5, align 8
  %32 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %31, i32 0, i32 1
  %33 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %33, i64 %35
  store %struct.bfq_service_tree* %36, %struct.bfq_service_tree** %12, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %39 = call i32 @bfq_class_idx(%struct.bfq_entity* %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %28
  %42 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  %43 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %12, align 8
  %46 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @bfq_gt(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %52 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  %55 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @bfq_gt(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %50, %41, %28
  %60 = phi i1 [ false, %41 ], [ false, %28 ], [ %58, %50 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %25
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  store %struct.bfq_entity* %66, %struct.bfq_entity** %8, align 8
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %19, %3
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call %struct.bfq_entity* @bfq_lookup_next_entity(%struct.bfq_sched_data* %72, i32 %73)
  store %struct.bfq_entity* %74, %struct.bfq_entity** %8, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %77 = icmp ne %struct.bfq_entity* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %80 = call i32 @bfq_update_parent_budget(%struct.bfq_entity* %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %5, align 8
  %82 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %81, i32 0, i32 0
  %83 = load %struct.bfq_entity*, %struct.bfq_entity** %82, align 8
  %84 = icmp ne %struct.bfq_entity* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %85, %78
  %89 = phi i1 [ true, %78 ], [ %87, %85 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %75
  %92 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %93 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %5, align 8
  %94 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %93, i32 0, i32 0
  store %struct.bfq_entity* %92, %struct.bfq_entity** %94, align 8
  %95 = load %struct.bfq_entity*, %struct.bfq_entity** %8, align 8
  %96 = icmp ne %struct.bfq_entity* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @bfq_class_idx(%struct.bfq_entity*) #1

declare dso_local i64 @bfq_gt(i32, i32) #1

declare dso_local %struct.bfq_entity* @bfq_lookup_next_entity(%struct.bfq_sched_data*, i32) #1

declare dso_local i32 @bfq_update_parent_budget(%struct.bfq_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
