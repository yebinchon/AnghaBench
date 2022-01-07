; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_bio_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_bio_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i64, i32, %struct.kyber_hctx_data* }
%struct.kyber_hctx_data = type { %struct.kyber_ctx_queue* }
%struct.kyber_ctx_queue = type { i32, %struct.list_head* }
%struct.list_head = type { i32 }
%struct.bio = type { i32 }
%struct.blk_mq_ctx = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.bio*, i32)* @kyber_bio_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyber_bio_merge(%struct.blk_mq_hw_ctx* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kyber_hctx_data*, align 8
  %8 = alloca %struct.blk_mq_ctx*, align 8
  %9 = alloca %struct.kyber_ctx_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %13, i32 0, i32 2
  %15 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %14, align 8
  store %struct.kyber_hctx_data* %15, %struct.kyber_hctx_data** %7, align 8
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.blk_mq_ctx* @blk_mq_get_ctx(i32 %18)
  store %struct.blk_mq_ctx* %19, %struct.blk_mq_ctx** %8, align 8
  %20 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %21 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %20, i32 0, i32 0
  %22 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %21, align 8
  %23 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %22, i64 %30
  store %struct.kyber_ctx_queue* %31, %struct.kyber_ctx_queue** %9, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kyber_sched_domain(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %9, align 8
  %37 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %36, i32 0, i32 1
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 %40
  store %struct.list_head* %41, %struct.list_head** %11, align 8
  %42 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %9, align 8
  %43 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.list_head*, %struct.list_head** %11, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @blk_mq_bio_list_merge(i32 %47, %struct.list_head* %48, %struct.bio* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.kyber_ctx_queue*, %struct.kyber_ctx_queue** %9, align 8
  %53 = getelementptr inbounds %struct.kyber_ctx_queue, %struct.kyber_ctx_queue* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local %struct.blk_mq_ctx* @blk_mq_get_ctx(i32) #1

declare dso_local i32 @kyber_sched_domain(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @blk_mq_bio_list_merge(i32, %struct.list_head*, %struct.bio*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
