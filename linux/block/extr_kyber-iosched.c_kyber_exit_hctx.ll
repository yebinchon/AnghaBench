; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_exit_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_exit_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.kyber_hctx_data* }
%struct.kyber_hctx_data = type { %struct.kyber_hctx_data*, i32* }

@KYBER_NUM_DOMAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, i32)* @kyber_exit_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kyber_exit_hctx(%struct.blk_mq_hw_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kyber_hctx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %7, i32 0, i32 0
  %9 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %8, align 8
  store %struct.kyber_hctx_data* %9, %struct.kyber_hctx_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @KYBER_NUM_DOMAINS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %5, align 8
  %16 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @sbitmap_free(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %5, align 8
  %27 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %26, i32 0, i32 0
  %28 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %27, align 8
  %29 = call i32 @kfree(%struct.kyber_hctx_data* %28)
  %30 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %30, i32 0, i32 0
  %32 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %31, align 8
  %33 = call i32 @kfree(%struct.kyber_hctx_data* %32)
  ret void
}

declare dso_local i32 @sbitmap_free(i32*) #1

declare dso_local i32 @kfree(%struct.kyber_hctx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
