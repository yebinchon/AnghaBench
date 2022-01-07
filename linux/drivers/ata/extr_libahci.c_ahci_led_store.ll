; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_led_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_led_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__*, %struct.ahci_port_priv* }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32, i64)* }
%struct.ahci_port_priv = type { %struct.ahci_em_priv* }
%struct.ahci_em_priv = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EM_MSG_LED_PMP_SLOT = common dso_local global i32 0, align 4
@EM_MAX_SLOTS = common dso_local global i32 0, align 4
@EM_MSG_LED_VALUE_ACTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i8*, i64)* @ahci_led_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_led_store(%struct.ata_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ahci_port_priv*, align 8
  %11 = alloca %struct.ahci_em_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %13, align 8
  store %struct.ahci_port_priv* %14, %struct.ahci_port_priv** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @kstrtouint(i8* %15, i32 0, i32* %8)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EM_MSG_LED_PMP_SLOT, align 4
  %24 = and i32 %22, %23
  %25 = lshr i32 %24, 8
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @EM_MAX_SLOTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @EM_MAX_SLOTS, align 4
  %32 = call i32 @array_index_nospec(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %10, align 8
  %34 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %33, i32 0, i32 0
  %35 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %35, i64 %37
  store %struct.ahci_em_priv* %38, %struct.ahci_em_priv** %11, align 8
  br label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %62

42:                                               ; preds = %29
  %43 = load %struct.ahci_em_priv*, %struct.ahci_em_priv** %11, align 8
  %44 = getelementptr inbounds %struct.ahci_em_priv, %struct.ahci_em_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @EM_MSG_LED_VALUE_ACTIVITY, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %54 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ata_port*, i32, i64)*, i32 (%struct.ata_port*, i32, i64)** %56, align 8
  %58 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 %57(%struct.ata_port* %58, i32 %59, i64 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %52, %39, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
