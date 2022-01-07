; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_do_swap_desc_tasklet.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_vdsl.c_do_swap_desc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_descriptor = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i64 }

@WAN_SWAP_DESC_BASE = common dso_local global %struct.tx_descriptor* null, align 8
@g_ptm_priv_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@WAN_SWAP_DESC_NUM = common dso_local global i64 0, align 8
@RX_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"can't allocate swap buffer for PPE firmware use\0A\00", align 1
@DATA_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@MBOX_IGU1_ISRC = common dso_local global i32 0, align 4
@MBOX_IGU1_IER = common dso_local global i32 0, align 4
@g_swap_desc_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @do_swap_desc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_swap_desc_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tx_descriptor*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 32, i32* %3, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %84

11:                                               ; preds = %7
  %12 = load %struct.tx_descriptor*, %struct.tx_descriptor** @WAN_SWAP_DESC_BASE, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_ptm_priv_data, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %12, i64 %16
  %18 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %84

22:                                               ; preds = %11
  %23 = load %struct.tx_descriptor*, %struct.tx_descriptor** @WAN_SWAP_DESC_BASE, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_ptm_priv_data, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %23, i64 %27
  store %struct.tx_descriptor* %28, %struct.tx_descriptor** %4, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_ptm_priv_data, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load i64, i64* @WAN_SWAP_DESC_NUM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_ptm_priv_data, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %22
  %41 = load %struct.tx_descriptor*, %struct.tx_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %41, i32 0, i32 1
  %43 = load volatile i32, i32* %42, align 4
  %44 = call %struct.sk_buff* @get_skb_pointer(i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i32, i32* @RX_MAX_BUFFER_SIZE, align 4
  %52 = call %struct.sk_buff* @alloc_skb_tx(i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = icmp eq %struct.sk_buff* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @DATA_BUFFER_ALIGNMENT, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %61, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %6, align 4
  %71 = sub i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = sub i64 %72, 8
  %74 = inttoptr i64 %73 to %struct.sk_buff**
  store %struct.sk_buff* %65, %struct.sk_buff** %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = and i32 %78, 268435455
  %80 = load %struct.tx_descriptor*, %struct.tx_descriptor** %4, align 8
  %81 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %80, i32 0, i32 1
  store volatile i32 %79, i32* %81, align 4
  %82 = load %struct.tx_descriptor*, %struct.tx_descriptor** %4, align 8
  %83 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %82, i32 0, i32 0
  store volatile i32 1, i32* %83, align 4
  br label %7

84:                                               ; preds = %21, %7
  %85 = load i32, i32* @MBOX_IGU1_ISRC, align 4
  %86 = call i32 @IFX_REG_W32_MASK(i32 0, i32 16, i32 %85)
  %87 = load %struct.tx_descriptor*, %struct.tx_descriptor** @WAN_SWAP_DESC_BASE, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_ptm_priv_data, i32 0, i32 0), align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %87, i64 %91
  %93 = getelementptr inbounds %struct.tx_descriptor, %struct.tx_descriptor* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i32, i32* @MBOX_IGU1_IER, align 4
  %98 = call i32 @IFX_REG_W32_MASK(i32 0, i32 65536, i32 %97)
  br label %101

99:                                               ; preds = %84
  %100 = call i32 @tasklet_hi_schedule(i32* @g_swap_desc_tasklet)
  br label %101

101:                                              ; preds = %99, %96
  ret void
}

declare dso_local %struct.sk_buff* @get_skb_pointer(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb_tx(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
