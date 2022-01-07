; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_deactivate_entity.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_deactivate_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i32, i32*, i64, i32, %struct.bfq_sched_data* }
%struct.bfq_sched_data = type { %struct.bfq_entity* }
%struct.bfq_service_tree = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bfq_deactivate_entity(%struct.bfq_entity* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfq_entity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfq_sched_data*, align 8
  %7 = alloca %struct.bfq_service_tree*, align 8
  %8 = alloca i32, align 4
  store %struct.bfq_entity* %0, %struct.bfq_entity** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %10 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %9, i32 0, i32 4
  %11 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %10, align 8
  store %struct.bfq_sched_data* %11, %struct.bfq_sched_data** %6, align 8
  %12 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %13 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %19 = call %struct.bfq_service_tree* @bfq_entity_service_tree(%struct.bfq_entity* %18)
  store %struct.bfq_service_tree* %19, %struct.bfq_service_tree** %7, align 8
  %20 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %21 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %6, align 8
  %22 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %21, i32 0, i32 0
  %23 = load %struct.bfq_entity*, %struct.bfq_entity** %22, align 8
  %24 = icmp eq %struct.bfq_entity* %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %27 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %28 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bfq_calc_finish(%struct.bfq_entity* %26, i64 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load %struct.bfq_sched_data*, %struct.bfq_sched_data** %6, align 8
  %35 = getelementptr inbounds %struct.bfq_sched_data, %struct.bfq_sched_data* %34, i32 0, i32 0
  store %struct.bfq_entity* null, %struct.bfq_entity** %35, align 8
  br label %39

36:                                               ; preds = %17
  %37 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %38 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %41 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %44 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %43, i32 0, i32 2
  %45 = icmp eq i32* %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %48 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %49 = call i32 @bfq_active_extract(%struct.bfq_service_tree* %47, %struct.bfq_entity* %48)
  br label %65

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %55 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %58 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %57, i32 0, i32 1
  %59 = icmp eq i32* %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %62 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %63 = call i32 @bfq_idle_extract(%struct.bfq_service_tree* %61, %struct.bfq_entity* %62)
  br label %64

64:                                               ; preds = %60, %53, %50
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %70 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %73 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bfq_gt(i32 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68, %65
  %78 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %79 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @bfq_forget_entity(%struct.bfq_service_tree* %78, %struct.bfq_entity* %79, i32 %80)
  br label %86

82:                                               ; preds = %68
  %83 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %7, align 8
  %84 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %85 = call i32 @bfq_idle_insert(%struct.bfq_service_tree* %83, %struct.bfq_entity* %84)
  br label %86

86:                                               ; preds = %82, %77
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.bfq_service_tree* @bfq_entity_service_tree(%struct.bfq_entity*) #1

declare dso_local i32 @bfq_calc_finish(%struct.bfq_entity*, i64) #1

declare dso_local i32 @bfq_active_extract(%struct.bfq_service_tree*, %struct.bfq_entity*) #1

declare dso_local i32 @bfq_idle_extract(%struct.bfq_service_tree*, %struct.bfq_entity*) #1

declare dso_local i32 @bfq_gt(i32, i32) #1

declare dso_local i32 @bfq_forget_entity(%struct.bfq_service_tree*, %struct.bfq_entity*, i32) #1

declare dso_local i32 @bfq_idle_insert(%struct.bfq_service_tree*, %struct.bfq_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
