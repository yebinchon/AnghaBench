; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_process_int_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_process_int_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { i32 }

@sdio_ireg = common dso_local global i32 0, align 4
@DN_LD_HOST_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"tx_done already received:  int_status=0x%x\00", align 1
@UP_LD_HOST_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*)* @btmrvl_sdio_process_int_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_process_int_status(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.btmrvl_sdio_card*, align 8
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  %6 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %7 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  store %struct.btmrvl_sdio_card* %9, %struct.btmrvl_sdio_card** %5, align 8
  %10 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %11 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %10, i32 0, i32 1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @spin_lock_irqsave(i32* %11, i32 %12)
  %14 = load i32, i32* @sdio_ireg, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* @sdio_ireg, align 4
  %15 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %16 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %15, i32 0, i32 1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i32 %17)
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %20 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sdio_claim_host(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DN_LD_HOST_INT_STATUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %29 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @BT_DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %40

36:                                               ; preds = %27
  %37 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %38 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @UP_LD_HOST_INT_STATUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %48 = call i32 @btmrvl_sdio_card_to_host(%struct.btmrvl_private* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %5, align 8
  %51 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sdio_release_host(i32 %52)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @btmrvl_sdio_card_to_host(%struct.btmrvl_private*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
