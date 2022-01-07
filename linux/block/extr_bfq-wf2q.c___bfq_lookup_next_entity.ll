; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_lookup_next_entity.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c___bfq_lookup_next_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i32 }
%struct.bfq_service_tree = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_entity* (%struct.bfq_service_tree*, i32)* @__bfq_lookup_next_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_entity* @__bfq_lookup_next_entity(%struct.bfq_service_tree* %0, i32 %1) #0 {
  %3 = alloca %struct.bfq_entity*, align 8
  %4 = alloca %struct.bfq_service_tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfq_entity*, align 8
  %7 = alloca i32, align 4
  store %struct.bfq_service_tree* %0, %struct.bfq_service_tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %9 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %8, i32 0, i32 0
  %10 = call i64 @RB_EMPTY_ROOT(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.bfq_entity* null, %struct.bfq_entity** %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %15 = call i32 @bfq_calc_vtime_jump(%struct.bfq_service_tree* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bfq_update_vtime(%struct.bfq_service_tree* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.bfq_entity* @bfq_first_active_entity(%struct.bfq_service_tree* %23, i32 %24)
  store %struct.bfq_entity* %25, %struct.bfq_entity** %6, align 8
  %26 = load %struct.bfq_entity*, %struct.bfq_entity** %6, align 8
  store %struct.bfq_entity* %26, %struct.bfq_entity** %3, align 8
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.bfq_entity*, %struct.bfq_entity** %3, align 8
  ret %struct.bfq_entity* %28
}

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @bfq_calc_vtime_jump(%struct.bfq_service_tree*) #1

declare dso_local i32 @bfq_update_vtime(%struct.bfq_service_tree*, i32) #1

declare dso_local %struct.bfq_entity* @bfq_first_active_entity(%struct.bfq_service_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
