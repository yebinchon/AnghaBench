; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_mailbox_irq_handler.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_adsl.c_mailbox_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MBOX_IGU1_ISR = common dso_local global i32 0, align 4
@MBOX_IGU1_ISRC = common dso_local global i32 0, align 4
@MBOX_IGU1_IER = common dso_local global i32 0, align 4
@MAX_ITF_NUMBER = common dso_local global i32 0, align 4
@g_net_dev = common dso_local global i32* null, align 8
@g_ptm_priv_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mailbox_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mailbox_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @MBOX_IGU1_ISR, align 4
  %8 = call i32 @IFX_REG_R32(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MBOX_IGU1_ISRC, align 4
  %11 = call i32 @IFX_REG_W32(i32 %9, i32 %10)
  %12 = load i32, i32* @MBOX_IGU1_IER, align 4
  %13 = call i32 @IFX_REG_R32(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %56, %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @__fls(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %5, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 16
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @MBOX_IGU1_IER, align 4
  %31 = call i32 @IFX_REG_W32_MASK(i32 %29, i32 0, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 16
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MAX_ITF_NUMBER, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i32*, i32** @g_net_dev, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_wake_queue(i32 %42)
  br label %44

44:                                               ; preds = %37, %27
  br label %56

45:                                               ; preds = %20
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* @MBOX_IGU1_IER, align 4
  %49 = call i32 @IFX_REG_W32_MASK(i32 %47, i32 0, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_ptm_priv_data, i32 0, i32 0), align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @napi_schedule(i32* %54)
  br label %56

56:                                               ; preds = %45, %44
  br label %16

57:                                               ; preds = %16
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @IFX_REG_R32(i32) #1

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
