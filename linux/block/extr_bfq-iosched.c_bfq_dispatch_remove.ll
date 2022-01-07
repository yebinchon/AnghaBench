; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_dispatch_remove.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_dispatch_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }
%struct.bfq_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @bfq_dispatch_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_dispatch_remove(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call %struct.bfq_queue* @RQ_BFQQ(%struct.request* %6)
  store %struct.bfq_queue* %7, %struct.bfq_queue** %5, align 8
  %8 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %9 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = call i32 @bfq_update_peak_rate(i32 %16, %struct.request* %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = call i32 @bfq_remove_request(%struct.request_queue* %19, %struct.request* %20)
  ret void
}

declare dso_local %struct.bfq_queue* @RQ_BFQQ(%struct.request*) #1

declare dso_local i32 @bfq_update_peak_rate(i32, %struct.request*) #1

declare dso_local i32 @bfq_remove_request(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
