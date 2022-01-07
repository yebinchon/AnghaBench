; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmtksdio_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.mtkbtsdio_hdr = type { i32, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MTK_REG_CTDR = common dso_local global i32 0, align 4
@MTK_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmtksdio_dev*, %struct.sk_buff*)* @btmtksdio_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtksdio_tx_packet(%struct.btmtksdio_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmtksdio_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mtkbtsdio_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.btmtksdio_dev* %0, %struct.btmtksdio_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @skb_headroom(%struct.sk_buff* %8)
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 24
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i32 @pskb_expand_head(%struct.sk_buff* %16, i32 24, i32 0, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %80

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @skb_push(%struct.sk_buff* %25, i32 24)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.mtkbtsdio_hdr*
  store %struct.mtkbtsdio_hdr* %31, %struct.mtkbtsdio_hdr** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @cpu_to_le16(i64 %34)
  %36 = load %struct.mtkbtsdio_hdr*, %struct.mtkbtsdio_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.mtkbtsdio_hdr, %struct.mtkbtsdio_hdr* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = call i8* @cpu_to_le16(i64 0)
  %39 = load %struct.mtkbtsdio_hdr*, %struct.mtkbtsdio_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.mtkbtsdio_hdr, %struct.mtkbtsdio_hdr* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %41)
  %43 = load %struct.mtkbtsdio_hdr*, %struct.mtkbtsdio_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.mtkbtsdio_hdr, %struct.mtkbtsdio_hdr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %46 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MTK_REG_CTDR, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @MTK_SDIO_BLOCK_SIZE, align 4
  %56 = call i32 @round_up(i64 %54, i32 %55)
  %57 = call i32 @sdio_writesb(i32 %47, i32 %48, i64 %51, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %24
  br label %76

61:                                               ; preds = %24
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %4, align 8
  %66 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %64
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  store i32 0, i32* %3, align 4
  br label %80

76:                                               ; preds = %60
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @skb_pull(%struct.sk_buff* %77, i32 24)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %61, %21
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @sdio_writesb(i32, i32, i64, i32) #1

declare dso_local i32 @round_up(i64, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
