; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_offload_check_rx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_offload_check_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32 }
%struct.sk_buff = type { i32 }

@MTK_RXD4_CPU_REASON = common dso_local global i32 0, align 4
@MTK_RXD4_FOE_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_offload_check_rx(%struct.fe_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MTK_RXD4_CPU_REASON, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @FIELD_GET(i32 %9, i32 %10)
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 130, label %12
    i32 131, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %3, %3, %3
  %13 = load i32, i32* @MTK_RXD4_FOE_ENTRY, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @FIELD_GET(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mtk_offload_keepalive(%struct.fe_priv* %16, i32 %17)
  store i32 -1, i32* %4, align 4
  br label %21

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %19, %12
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @mtk_offload_keepalive(%struct.fe_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
