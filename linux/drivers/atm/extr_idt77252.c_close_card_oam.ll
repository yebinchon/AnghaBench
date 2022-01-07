; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_close_card_oam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_close_card_oam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i64, i32, i32, %struct.vc_map** }
%struct.vc_map = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SAR_SRAM_RCT_SIZE = common dso_local global i64 0, align 8
@SAR_CMD_CLOSE_CONNECTION = common dso_local global i64 0, align 8
@SAR_REG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: closing a VC with pending rx buffers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*)* @close_card_oam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_card_oam(%struct.idt77252_dev* %0) #0 {
  %2 = alloca %struct.idt77252_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vc_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %2, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %78, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %12 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %9
  store i32 3, i32* %7, align 4
  br label %17

17:                                               ; preds = %74, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 5
  br i1 %19, label %20, label %77

20:                                               ; preds = %17
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @VPCI2VC(%struct.idt77252_dev* %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %26 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %25, i32 0, i32 4
  %27 = load %struct.vc_map**, %struct.vc_map*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %27, i64 %29
  %31 = load %struct.vc_map*, %struct.vc_map** %30, align 8
  store %struct.vc_map* %31, %struct.vc_map** %5, align 8
  %32 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %33 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %36 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SAR_SRAM_RCT_SIZE, align 8
  %39 = mul i64 %37, %38
  %40 = add i64 %34, %39
  store i64 %40, i64* %4, align 8
  %41 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %42 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %41, i32 0, i32 3
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i64, i64* @SAR_CMD_CLOSE_CONNECTION, align 8
  %46 = load i64, i64* %4, align 8
  %47 = shl i64 %46, 2
  %48 = or i64 %45, %47
  %49 = load i32, i32* @SAR_REG_CMD, align 4
  %50 = call i32 @writel(i64 %48, i32 %49)
  %51 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %52 = call i32 @waitfor_idle(%struct.idt77252_dev* %51)
  %53 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %54 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %53, i32 0, i32 3
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %58 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i64 @skb_queue_len(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %20
  %64 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %65 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %69 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %70 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @recycle_rx_pool_skb(%struct.idt77252_dev* %68, %struct.TYPE_4__* %71)
  br label %73

73:                                               ; preds = %63, %20
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %17

77:                                               ; preds = %17
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %9

81:                                               ; preds = %9
  ret void
}

declare dso_local i32 @VPCI2VC(%struct.idt77252_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @waitfor_idle(%struct.idt77252_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @recycle_rx_pool_skb(%struct.idt77252_dev*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
