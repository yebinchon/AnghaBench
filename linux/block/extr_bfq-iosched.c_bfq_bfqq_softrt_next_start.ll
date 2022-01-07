; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bfqq_softrt_next_start.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_bfqq_softrt_next_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_queue = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfq_data*, %struct.bfq_queue*)* @bfq_bfqq_softrt_next_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bfq_bfqq_softrt_next_start(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %5 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %6 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %9 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %13 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %17 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %10, %20
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %24 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nsecs_to_jiffies(i32 %27)
  %29 = add nsw i64 %22, %28
  %30 = add nsw i64 %29, 4
  %31 = call i64 @max3(i32 %7, i64 %21, i64 %30)
  ret i64 %31
}

declare dso_local i64 @max3(i32, i64, i64) #1

declare dso_local i64 @nsecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
