; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_calc_vtime_jump.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_calc_vtime_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_service_tree = type { i32, i32 }
%struct.bfq_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_service_tree*)* @bfq_calc_vtime_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_calc_vtime_jump(%struct.bfq_service_tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfq_service_tree*, align 8
  %4 = alloca %struct.bfq_entity*, align 8
  store %struct.bfq_service_tree* %0, %struct.bfq_service_tree** %3, align 8
  %5 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %6 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %5, i32 0, i32 1
  %7 = call %struct.bfq_entity* @bfq_root_active_entity(i32* %6)
  store %struct.bfq_entity* %7, %struct.bfq_entity** %4, align 8
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %9 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %12 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @bfq_gt(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.bfq_entity*, %struct.bfq_entity** %4, align 8
  %18 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %3, align 8
  %22 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.bfq_entity* @bfq_root_active_entity(i32*) #1

declare dso_local i64 @bfq_gt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
