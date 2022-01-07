; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bic_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bic_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_io_cq = type { i32 }
%struct.bfq_data = type { i32 }
%struct.io_context = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_io_cq* (%struct.bfq_data*, %struct.io_context*, %struct.request_queue*)* @bfq_bic_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_io_cq* @bfq_bic_lookup(%struct.bfq_data* %0, %struct.io_context* %1, %struct.request_queue* %2) #0 {
  %4 = alloca %struct.bfq_io_cq*, align 8
  %5 = alloca %struct.bfq_data*, align 8
  %6 = alloca %struct.io_context*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bfq_io_cq*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %5, align 8
  store %struct.io_context* %1, %struct.io_context** %6, align 8
  store %struct.request_queue* %2, %struct.request_queue** %7, align 8
  %10 = load %struct.io_context*, %struct.io_context** %6, align 8
  %11 = icmp ne %struct.io_context* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.io_context*, %struct.io_context** %6, align 8
  %18 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %19 = call i32 @ioc_lookup_icq(%struct.io_context* %17, %struct.request_queue* %18)
  %20 = call %struct.bfq_io_cq* @icq_to_bic(i32 %19)
  store %struct.bfq_io_cq* %20, %struct.bfq_io_cq** %9, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %9, align 8
  store %struct.bfq_io_cq* %25, %struct.bfq_io_cq** %4, align 8
  br label %27

26:                                               ; preds = %3
  store %struct.bfq_io_cq* null, %struct.bfq_io_cq** %4, align 8
  br label %27

27:                                               ; preds = %26, %12
  %28 = load %struct.bfq_io_cq*, %struct.bfq_io_cq** %4, align 8
  ret %struct.bfq_io_cq* %28
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfq_io_cq* @icq_to_bic(i32) #1

declare dso_local i32 @ioc_lookup_icq(%struct.io_context*, %struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
