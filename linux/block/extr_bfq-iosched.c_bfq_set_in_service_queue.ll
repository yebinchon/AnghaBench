; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_set_in_service_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_set_in_service_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i32 }
%struct.bfq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue* (%struct.bfq_data*)* @bfq_set_in_service_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue* @bfq_set_in_service_queue(%struct.bfq_data* %0) #0 {
  %2 = alloca %struct.bfq_data*, align 8
  %3 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %2, align 8
  %4 = load %struct.bfq_data*, %struct.bfq_data** %2, align 8
  %5 = call %struct.bfq_queue* @bfq_get_next_queue(%struct.bfq_data* %4)
  store %struct.bfq_queue* %5, %struct.bfq_queue** %3, align 8
  %6 = load %struct.bfq_data*, %struct.bfq_data** %2, align 8
  %7 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %8 = call i32 @__bfq_set_in_service_queue(%struct.bfq_data* %6, %struct.bfq_queue* %7)
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  ret %struct.bfq_queue* %9
}

declare dso_local %struct.bfq_queue* @bfq_get_next_queue(%struct.bfq_data*) #1

declare dso_local i32 @__bfq_set_in_service_queue(%struct.bfq_data*, %struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
