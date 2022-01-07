; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_next_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-sched.c_blk_mq_next_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i64, i16, %struct.blk_mq_ctx** }
%struct.blk_mq_ctx = type { i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blk_mq_ctx* (%struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*)* @blk_mq_next_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blk_mq_ctx* @blk_mq_next_ctx(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_ctx* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.blk_mq_ctx*, align 8
  %5 = alloca i16, align 2
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_ctx* %1, %struct.blk_mq_ctx** %4, align 8
  %6 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %6, i32 0, i32 0
  %8 = load i16*, i16** %7, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i16, i16* %8, i64 %11
  %13 = load i16, i16* %12, align 2
  store i16 %13, i16* %5, align 2
  %14 = load i16, i16* %5, align 2
  %15 = add i16 %14, 1
  store i16 %15, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i16 0, i16* %5, align 2
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %24, i32 0, i32 2
  %26 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %25, align 8
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %26, i64 %28
  %30 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %29, align 8
  ret %struct.blk_mq_ctx* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
