; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_put_cooperator.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_put_cooperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { %struct.bfq_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_queue*)* @bfq_put_cooperator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_put_cooperator(%struct.bfq_queue* %0) #0 {
  %2 = alloca %struct.bfq_queue*, align 8
  %3 = alloca %struct.bfq_queue*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %2, align 8
  %5 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %6 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %5, i32 0, i32 0
  %7 = load %struct.bfq_queue*, %struct.bfq_queue** %6, align 8
  store %struct.bfq_queue* %7, %struct.bfq_queue** %3, align 8
  br label %8

8:                                                ; preds = %16, %1
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %10 = icmp ne %struct.bfq_queue* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %13 = load %struct.bfq_queue*, %struct.bfq_queue** %2, align 8
  %14 = icmp eq %struct.bfq_queue* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %23

16:                                               ; preds = %11
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %18 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %17, i32 0, i32 0
  %19 = load %struct.bfq_queue*, %struct.bfq_queue** %18, align 8
  store %struct.bfq_queue* %19, %struct.bfq_queue** %4, align 8
  %20 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %21 = call i32 @bfq_put_queue(%struct.bfq_queue* %20)
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  store %struct.bfq_queue* %22, %struct.bfq_queue** %3, align 8
  br label %8

23:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @bfq_put_queue(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
