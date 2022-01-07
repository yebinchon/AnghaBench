; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_highbank_cphy_disable_overrides.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_highbank.c_highbank_cphy_disable_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@port_data = common dso_local global %struct.TYPE_2__* null, align 8
@CPHY_RX_INPUT_STS = common dso_local global i64 0, align 8
@SPHY_LANE = common dso_local global i64 0, align 8
@CPHY_SATA_RX_OVERRIDE = common dso_local global i32 0, align 4
@CPHY_RX_OVERRIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @highbank_cphy_disable_overrides to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @highbank_cphy_disable_overrides(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port_data, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @port_data, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %40

20:                                               ; preds = %1
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @CPHY_RX_INPUT_STS, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @SPHY_LANE, align 8
  %25 = mul i64 %23, %24
  %26 = add i64 %22, %25
  %27 = call i32 @combo_phy_read(i64 %21, i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @CPHY_SATA_RX_OVERRIDE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @CPHY_RX_OVERRIDE, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @SPHY_LANE, align 8
  %36 = mul i64 %34, %35
  %37 = add i64 %33, %36
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @combo_phy_write(i64 %32, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @combo_phy_read(i64, i64) #1

declare dso_local i32 @combo_phy_write(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
