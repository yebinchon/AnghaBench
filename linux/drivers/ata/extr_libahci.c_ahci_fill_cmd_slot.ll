; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_fill_cmd_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_fill_cmd_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i64, i8* }

@AHCI_CMD_TBL_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahci_fill_cmd_slot(%struct.ahci_port_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ahci_port_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahci_port_priv* %0, %struct.ahci_port_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AHCI_CMD_TBL_SZ, align 4
  %13 = mul i32 %11, %12
  %14 = add i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i8* %16, i8** %23, align 8
  %24 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %32, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 16
  %42 = ashr i32 %41, 16
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %45 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %43, i8** %50, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
