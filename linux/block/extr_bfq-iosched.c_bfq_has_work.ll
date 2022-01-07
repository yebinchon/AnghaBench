; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_has_work.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_has_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bfq_data* }
%struct.bfq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*)* @bfq_has_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_has_work(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.bfq_data*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %4 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.bfq_data*, %struct.bfq_data** %9, align 8
  store %struct.bfq_data* %10, %struct.bfq_data** %3, align 8
  %11 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %12 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %11, i32 0, i32 0
  %13 = call i32 @list_empty_careful(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %17 = call i64 @bfq_tot_busy_queues(%struct.bfq_data* %16)
  %18 = icmp sgt i64 %17, 0
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ true, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @list_empty_careful(i32*) #1

declare dso_local i64 @bfq_tot_busy_queues(%struct.bfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
