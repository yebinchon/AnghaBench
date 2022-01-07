; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vcc_tx_aal5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vcc_tx_aal5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32 }
%struct.lanai_vcc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@vcc_txreadptr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vcc_tx_aal5: n too small (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_dev*, %struct.lanai_vcc*, %struct.sk_buff*)* @vcc_tx_aal5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_tx_aal5(%struct.lanai_dev* %0, %struct.lanai_vcc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.lanai_dev*, align 8
  %5 = alloca %struct.lanai_vcc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lanai_dev* %0, %struct.lanai_dev** %4, align 8
  store %struct.lanai_vcc* %1, %struct.lanai_vcc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %10 = call i64 @vcc_is_backlogged(%struct.lanai_vcc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %15 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %16 = load i32, i32* @vcc_txreadptr, align 4
  %17 = call i32 @cardvcc_read(%struct.lanai_vcc* %15, i32 %16)
  %18 = call i32 @TXREADPTR_GET_PTR(i32 %17)
  %19 = call i32 @vcc_tx_space(%struct.lanai_vcc* %14, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @aal5_size(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 16
  %26 = icmp sge i32 %25, 64
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @APRINTK(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 16
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %13
  %35 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %36 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %39 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__set_bit(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %34, %12
  %43 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %44 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @skb_queue_tail(i32* %45, %struct.sk_buff* %46)
  br label %54

48:                                               ; preds = %13
  %49 = load %struct.lanai_dev*, %struct.lanai_dev** %4, align 8
  %50 = load %struct.lanai_vcc*, %struct.lanai_vcc** %5, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @lanai_send_one_aal5(%struct.lanai_dev* %49, %struct.lanai_vcc* %50, %struct.sk_buff* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %42
  ret void
}

declare dso_local i64 @vcc_is_backlogged(%struct.lanai_vcc*) #1

declare dso_local i32 @vcc_tx_space(%struct.lanai_vcc*, i32) #1

declare dso_local i32 @TXREADPTR_GET_PTR(i32) #1

declare dso_local i32 @cardvcc_read(%struct.lanai_vcc*, i32) #1

declare dso_local i32 @aal5_size(i32) #1

declare dso_local i32 @APRINTK(i32, i8*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @lanai_send_one_aal5(%struct.lanai_dev*, %struct.lanai_vcc*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
