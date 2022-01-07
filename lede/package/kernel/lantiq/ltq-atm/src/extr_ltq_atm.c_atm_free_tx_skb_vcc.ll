; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_atm_free_tx_skb_vcc.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_atm_free_tx_skb_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { i32 (%struct.atm_vcc*, %struct.sk_buff*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.atm_vcc*)* @atm_free_tx_skb_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_free_tx_skb_vcc(%struct.sk_buff* %0, %struct.atm_vcc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.atm_vcc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.atm_vcc* %1, %struct.atm_vcc** %4, align 8
  %5 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %6 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %5, i32 0, i32 0
  %7 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %6, align 8
  %8 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %11 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %10, i32 0, i32 0
  %12 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %11, align 8
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 %12(%struct.atm_vcc* %13, %struct.sk_buff* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %17)
  br label %19

19:                                               ; preds = %16, %9
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
