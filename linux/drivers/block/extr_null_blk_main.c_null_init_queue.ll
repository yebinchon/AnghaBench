; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb = type { i32, i32 }
%struct.nullb_queue = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nullb*, %struct.nullb_queue*)* @null_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @null_init_queue(%struct.nullb* %0, %struct.nullb_queue* %1) #0 {
  %3 = alloca %struct.nullb*, align 8
  %4 = alloca %struct.nullb_queue*, align 8
  store %struct.nullb* %0, %struct.nullb** %3, align 8
  store %struct.nullb_queue* %1, %struct.nullb_queue** %4, align 8
  %5 = load %struct.nullb*, %struct.nullb** %3, align 8
  %6 = icmp ne %struct.nullb* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %11 = icmp ne %struct.nullb_queue* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %16 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %15, i32 0, i32 2
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load %struct.nullb*, %struct.nullb** %3, align 8
  %19 = getelementptr inbounds %struct.nullb, %struct.nullb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %22 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nullb*, %struct.nullb** %3, align 8
  %24 = getelementptr inbounds %struct.nullb, %struct.nullb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %27 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
