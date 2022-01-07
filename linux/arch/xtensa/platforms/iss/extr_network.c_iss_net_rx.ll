; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_iss_net_rx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_iss_net_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.iss_net_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 (%struct.iss_net_private.0*)*, i32 (%struct.iss_net_private.1*, %struct.sk_buff**)*, i32 (%struct.sk_buff*)* }
%struct.iss_net_private.0 = type opaque
%struct.iss_net_private.1 = type opaque
%struct.sk_buff = type { i64, i32, %struct.net_device* }

@ETH_HEADER_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @iss_net_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_net_rx(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.iss_net_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.iss_net_private* @netdev_priv(%struct.net_device* %7)
  store %struct.iss_net_private* %8, %struct.iss_net_private** %4, align 8
  %9 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %10 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.iss_net_private.0*)*, i64 (%struct.iss_net_private.0*)** %11, align 8
  %13 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %14 = bitcast %struct.iss_net_private* %13 to %struct.iss_net_private.0*
  %15 = call i64 %12(%struct.iss_net_private.0* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 2
  %23 = load i64, i64* @ETH_HEADER_OTHER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call %struct.sk_buff* @dev_alloc_skb(i64 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = icmp eq %struct.sk_buff* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %30 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  store i32 0, i32* %2, align 4
  br label %88

34:                                               ; preds = %18
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb_reserve(%struct.sk_buff* %35, i32 2)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 2
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @skb_reset_mac_header(%struct.sk_buff* %40)
  %42 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %43 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.iss_net_private.1*, %struct.sk_buff**)*, i32 (%struct.iss_net_private.1*, %struct.sk_buff**)** %44, align 8
  %46 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %47 = bitcast %struct.iss_net_private* %46 to %struct.iss_net_private.1*
  %48 = call i32 %45(%struct.iss_net_private.1* %47, %struct.sk_buff** %6)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @skb_put(%struct.sk_buff* %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %34
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @skb_trim(%struct.sk_buff* %55, i32 %56)
  %58 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %59 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 %61(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %70 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %68
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load %struct.iss_net_private*, %struct.iss_net_private** %4, align 8
  %77 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = call i32 @netif_rx_ni(%struct.sk_buff* %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %34
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %54, %28, %17
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.iss_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
