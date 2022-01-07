; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_find_close_cooperator.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_find_close_cooperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32 }
%struct.bfq_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue* (%struct.bfq_data*, %struct.bfq_queue*, i32)* @bfq_find_close_cooperator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue* @bfq_find_close_cooperator(%struct.bfq_data* %0, %struct.bfq_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca %struct.bfq_data*, align 8
  %6 = alloca %struct.bfq_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %5, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bfq_data*, %struct.bfq_data** %5, align 8
  %10 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.bfq_queue* @bfqq_find_close(%struct.bfq_data* %9, %struct.bfq_queue* %10, i32 %11)
  store %struct.bfq_queue* %12, %struct.bfq_queue** %8, align 8
  %13 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %14 = icmp ne %struct.bfq_queue* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  %18 = icmp eq %struct.bfq_queue* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store %struct.bfq_queue* null, %struct.bfq_queue** %4, align 8
  br label %22

20:                                               ; preds = %15
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %8, align 8
  store %struct.bfq_queue* %21, %struct.bfq_queue** %4, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  ret %struct.bfq_queue* %23
}

declare dso_local %struct.bfq_queue* @bfqq_find_close(%struct.bfq_data*, %struct.bfq_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
