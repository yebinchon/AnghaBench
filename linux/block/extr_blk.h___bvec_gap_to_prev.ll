; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk.h___bvec_gap_to_prev.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk.h___bvec_gap_to_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio_vec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio_vec*, i32)* @__bvec_gap_to_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bvec_gap_to_prev(%struct.request_queue* %0, %struct.bio_vec* %1, i32 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = call i32 @queue_virt_boundary(%struct.request_queue* %8)
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %14 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %17 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %15, %18
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = call i32 @queue_virt_boundary(%struct.request_queue* %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %12, %3
  %25 = phi i1 [ true, %3 ], [ %23, %12 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @queue_virt_boundary(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
