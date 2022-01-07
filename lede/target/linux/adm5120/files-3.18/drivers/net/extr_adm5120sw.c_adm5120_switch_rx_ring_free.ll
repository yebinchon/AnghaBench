; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx_ring_free.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rxl_skbuff = common dso_local global i64* null, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@rxl_descs = common dso_local global i64 0, align 8
@RX_DESCS_SIZE = common dso_local global i32 0, align 4
@rxl_descs_dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adm5120_switch_rx_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_switch_rx_ring_free() #0 {
  %1 = alloca i32, align 4
  %2 = load i64*, i64** @rxl_skbuff, align 8
  %3 = icmp ne i64* %2, null
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %24, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @RX_RING_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i64*, i64** @rxl_skbuff, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i64*, i64** @rxl_skbuff, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @kfree_skb(i64 %21)
  br label %23

23:                                               ; preds = %16, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load i64*, i64** @rxl_skbuff, align 8
  %29 = call i32 @kfree(i64* %28)
  br label %30

30:                                               ; preds = %27, %0
  %31 = load i64, i64* @rxl_descs, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @RX_DESCS_SIZE, align 4
  %35 = load i64, i64* @rxl_descs, align 8
  %36 = load i32, i32* @rxl_descs_dma, align 4
  %37 = call i32 @dma_free_coherent(i32* null, i32 %34, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @kfree_skb(i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
