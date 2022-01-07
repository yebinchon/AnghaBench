; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_flush_busy_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_flush_busy_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32 }
%struct.flush_busy_ctx_data = type { i32, %struct.blk_mq_hw_ctx* }
%struct.blk_mq_hw_ctx = type { i32, %struct.blk_mq_ctx** }
%struct.blk_mq_ctx = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbitmap*, i32, i8*)* @flush_busy_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_busy_ctx(%struct.sbitmap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sbitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.flush_busy_ctx_data*, align 8
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  %9 = alloca %struct.blk_mq_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.sbitmap* %0, %struct.sbitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.flush_busy_ctx_data*
  store %struct.flush_busy_ctx_data* %12, %struct.flush_busy_ctx_data** %7, align 8
  %13 = load %struct.flush_busy_ctx_data*, %struct.flush_busy_ctx_data** %7, align 8
  %14 = getelementptr inbounds %struct.flush_busy_ctx_data, %struct.flush_busy_ctx_data* %13, i32 0, i32 1
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %14, align 8
  store %struct.blk_mq_hw_ctx* %15, %struct.blk_mq_hw_ctx** %8, align 8
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %16, i32 0, i32 1
  %18 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %18, i64 %20
  %22 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %21, align 8
  store %struct.blk_mq_ctx* %22, %struct.blk_mq_ctx** %9, align 8
  %23 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.flush_busy_ctx_data*, %struct.flush_busy_ctx_data** %7, align 8
  %36 = getelementptr inbounds %struct.flush_busy_ctx_data, %struct.flush_busy_ctx_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @list_splice_tail_init(i32* %34, i32 %37)
  %39 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @sbitmap_clear_bit(%struct.sbitmap* %39, i32 %40)
  %42 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  ret i32 1
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32) #1

declare dso_local i32 @sbitmap_clear_bit(%struct.sbitmap*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
