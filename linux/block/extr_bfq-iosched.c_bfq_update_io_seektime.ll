; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_io_seektime.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_io_seektime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64 }
%struct.bfq_queue = type { i32, i32, i64, i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue*, %struct.request*)* @bfq_update_io_seektime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_update_io_seektime(%struct.bfq_data* %0, %struct.bfq_queue* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %4, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %7 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %8 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = shl i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %12 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %13 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = call i32 @BFQ_RQ_SEEKY(%struct.bfq_data* %11, i32 %14, %struct.request* %15)
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %18 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %22 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %27 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %30 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %35 = call i64 @BFQQ_TOTALLY_SEEKY(%struct.bfq_queue* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %39 = call i32 @bfq_bfqq_end_wr(%struct.bfq_queue* %38)
  br label %40

40:                                               ; preds = %37, %33, %25, %3
  ret void
}

declare dso_local i32 @BFQ_RQ_SEEKY(%struct.bfq_data*, i32, %struct.request*) #1

declare dso_local i64 @BFQQ_TOTALLY_SEEKY(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_end_wr(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
