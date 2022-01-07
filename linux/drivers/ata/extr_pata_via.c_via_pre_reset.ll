; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_via.c_via_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.via_isa_bridge* }
%struct.via_isa_bridge = type { i32 }
%struct.pci_dev = type { i32 }

@VIA_NO_ENABLES = common dso_local global i32 0, align 4
@via_pre_reset.via_enable_bits = internal constant [2 x %struct.pci_bits] [%struct.pci_bits { i32 64, i32 1, i32 2, i32 2 }, %struct.pci_bits { i32 64, i32 1, i32 1, i32 1 }], align 16
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @via_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_pre_reset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.via_isa_bridge*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %10 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %9, i32 0, i32 0
  %11 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  store %struct.ata_port* %11, %struct.ata_port** %6, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %15, align 8
  store %struct.via_isa_bridge* %16, %struct.via_isa_bridge** %7, align 8
  %17 = load %struct.via_isa_bridge*, %struct.via_isa_bridge** %7, align 8
  %18 = getelementptr inbounds %struct.via_isa_bridge, %struct.via_isa_bridge* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VIA_NO_ENABLES, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %2
  %24 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.pci_dev* @to_pci_dev(i32 %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds [2 x %struct.pci_bits], [2 x %struct.pci_bits]* @via_pre_reset.via_enable_bits, i64 0, i64 %33
  %35 = call i32 @pci_test_config_bits(%struct.pci_dev* %30, %struct.pci_bits* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ata_sff_prereset(%struct.ata_link* %42, i64 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_test_config_bits(%struct.pci_dev*, %struct.pci_bits*) #1

declare dso_local i32 @ata_sff_prereset(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
