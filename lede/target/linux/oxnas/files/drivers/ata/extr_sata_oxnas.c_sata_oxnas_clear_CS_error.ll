; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_clear_CS_error.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/ata/extr_sata_oxnas.c_sata_oxnas_clear_CS_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.sata_oxnas_port_priv* }
%struct.sata_oxnas_port_priv = type { i32* }

@SATA_CONTROL = common dso_local global i32 0, align 4
@SATA_CTL_ERR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @sata_oxnas_clear_CS_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_oxnas_clear_CS_error(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.sata_oxnas_port_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %7, align 8
  store %struct.sata_oxnas_port_priv* %8, %struct.sata_oxnas_port_priv** %3, align 8
  %9 = load %struct.sata_oxnas_port_priv*, %struct.sata_oxnas_port_priv** %3, align 8
  %10 = getelementptr inbounds %struct.sata_oxnas_port_priv, %struct.sata_oxnas_port_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @SATA_CONTROL, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @ioread32(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @SATA_CTL_ERR_MASK, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @SATA_CONTROL, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @iowrite32(i32 %20, i32* %24)
  ret void
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
