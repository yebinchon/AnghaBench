; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_highbank_cphy_override_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_highbank_cphy_override_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32* }

@port_data = common dso_local global %struct.TYPE_2__* null, align 8
@CPHY_RX_INPUT_STS = common dso_local global i64 0, align 8
@SPHY_LANE = common dso_local global i64 0, align 8
@SPHY_HALF_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @highbank_cphy_override_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @highbank_cphy_override_lane(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port_data, align 8
  %7 = load i64, i64* %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port_data, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %51

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @CPHY_RX_INPUT_STS, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @SPHY_LANE, align 8
  %27 = mul i64 %25, %26
  %28 = add i64 %24, %27
  %29 = call i32 @combo_phy_read(i64 %23, i64 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SPHY_HALF_RATE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = icmp slt i32 %36, 1000
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i1 [ false, %30 ], [ %38, %35 ]
  br i1 %40, label %22, label %41

41:                                               ; preds = %39
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @cphy_override_rx_mode(i64 %42, i32 3)
  %44 = load i64, i64* %2, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port_data, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cphy_override_tx_attenuation(i64 %44, i32 %49)
  br label %51

51:                                               ; preds = %41, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @combo_phy_read(i64, i64) #1

declare dso_local i32 @cphy_override_rx_mode(i64, i32) #1

declare dso_local i32 @cphy_override_tx_attenuation(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
