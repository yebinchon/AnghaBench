; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-se7751.c_pci_fixup_pcic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/pci/extr_fixups-se7751.c_pci_fixup_pcic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SH7751_BCR1 = common dso_local global i64 0, align 8
@SH7751_BCR2 = common dso_local global i64 0, align 8
@SH7751_WCR1 = common dso_local global i64 0, align 8
@SH7751_WCR2 = common dso_local global i64 0, align 8
@SH7751_WCR3 = common dso_local global i64 0, align 8
@SH7751_MCR = common dso_local global i64 0, align 8
@SH7751_PCIBCR1 = common dso_local global i32 0, align 4
@SH7751_PCIBCR2 = common dso_local global i32 0, align 4
@SH7751_PCIWCR1 = common dso_local global i32 0, align 4
@SH7751_PCIWCR2 = common dso_local global i32 0, align 4
@SH7751_PCIWCR3 = common dso_local global i32 0, align 4
@PCIMCR_MRSET_OFF = common dso_local global i64 0, align 8
@PCIMCR_RFSH_OFF = common dso_local global i64 0, align 8
@SH7751_PCIMCR = common dso_local global i32 0, align 4
@SH7751_PCIINTM = common dso_local global i32 0, align 4
@SH7751_PCIAINTM = common dso_local global i32 0, align 4
@SH7751_PCICONF1 = common dso_local global i32 0, align 4
@SH7751_PCICONF2 = common dso_local global i32 0, align 4
@SH7751_PCICONF4 = common dso_local global i32 0, align 4
@SH7751_PCICONF5 = common dso_local global i32 0, align 4
@SH7751_PCICONF6 = common dso_local global i32 0, align 4
@SH7751_PCICONF11 = common dso_local global i32 0, align 4
@SH7751_PCILSR0 = common dso_local global i32 0, align 4
@SH7751_PCILSR1 = common dso_local global i32 0, align 4
@SH7751_PCILAR0 = common dso_local global i32 0, align 4
@SH7751_PCILAR1 = common dso_local global i32 0, align 4
@SH7751_PCICR = common dso_local global i32 0, align 4
@SH7751_PCI_MEMORY_BASE = common dso_local global i32 0, align 4
@SH7751_PCIMBR = common dso_local global i32 0, align 4
@SH7751_PCIIOBR = common dso_local global i32 0, align 4
@SH7751_PCIIOBR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"SH7751 PCI: Finished initialization of the PCI controller\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_fixup_pcic(%struct.pci_channel* %0) #0 {
  %2 = alloca %struct.pci_channel*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store %struct.pci_channel* %0, %struct.pci_channel** %2, align 8
  %9 = load i64, i64* @SH7751_BCR1, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load volatile i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @SH7751_BCR2, align 8
  %13 = inttoptr i64 %12 to i16*
  %14 = load volatile i16, i16* %13, align 2
  store i16 %14, i16* %8, align 2
  %15 = load i64, i64* @SH7751_WCR1, align 8
  %16 = inttoptr i64 %15 to i64*
  %17 = load volatile i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @SH7751_WCR2, align 8
  %19 = inttoptr i64 %18 to i64*
  %20 = load volatile i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* @SH7751_WCR3, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load volatile i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* @SH7751_MCR, align 8
  %25 = inttoptr i64 %24 to i64*
  %26 = load volatile i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %3, align 8
  %28 = or i64 %27, 524288
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @SH7751_BCR1, align 8
  %31 = inttoptr i64 %30 to i64*
  store volatile i64 %29, i64* %31, align 8
  %32 = load i64, i64* %3, align 8
  %33 = or i64 %32, 1074266112
  store i64 %33, i64* %3, align 8
  %34 = load i32, i32* @SH7751_PCIBCR1, align 4
  %35 = load i64, i64* %3, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @PCIC_WRITE(i32 %34, i32 %36)
  %38 = load i32, i32* @SH7751_PCIBCR2, align 4
  %39 = load i16, i16* %8, align 2
  %40 = zext i16 %39 to i32
  %41 = call i32 @PCIC_WRITE(i32 %38, i32 %40)
  %42 = load i32, i32* @SH7751_PCIWCR1, align 4
  %43 = load i64, i64* %4, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @PCIC_WRITE(i32 %42, i32 %44)
  %46 = load i32, i32* @SH7751_PCIWCR2, align 4
  %47 = load i64, i64* %5, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @PCIC_WRITE(i32 %46, i32 %48)
  %50 = load i32, i32* @SH7751_PCIWCR3, align 4
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @PCIC_WRITE(i32 %50, i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @PCIMCR_MRSET_OFF, align 8
  %56 = and i64 %54, %55
  %57 = load i64, i64* @PCIMCR_RFSH_OFF, align 8
  %58 = and i64 %56, %57
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* @SH7751_PCIMCR, align 4
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @PCIC_WRITE(i32 %59, i32 %61)
  %63 = load i32, i32* @SH7751_PCIINTM, align 4
  %64 = call i32 @PCIC_WRITE(i32 %63, i32 50175)
  %65 = load i32, i32* @SH7751_PCIAINTM, align 4
  %66 = call i32 @PCIC_WRITE(i32 %65, i32 14351)
  %67 = load i32, i32* @SH7751_PCICONF1, align 4
  %68 = call i32 @PCIC_WRITE(i32 %67, i32 -208666425)
  %69 = load i32, i32* @SH7751_PCICONF2, align 4
  %70 = call i32 @PCIC_WRITE(i32 %69, i32 0)
  %71 = load i32, i32* @SH7751_PCICONF4, align 4
  %72 = call i32 @PCIC_WRITE(i32 %71, i32 -1426063359)
  %73 = load i32, i32* @SH7751_PCICONF5, align 4
  %74 = call i32 @PCIC_WRITE(i32 %73, i32 201326592)
  %75 = load i32, i32* @SH7751_PCICONF6, align 4
  %76 = call i32 @PCIC_WRITE(i32 %75, i32 -805306368)
  %77 = load i32, i32* @SH7751_PCICONF11, align 4
  %78 = call i32 @PCIC_WRITE(i32 %77, i32 889524308)
  %79 = load i32, i32* @SH7751_PCILSR0, align 4
  %80 = call i32 @PCIC_WRITE(i32 %79, i32 66060288)
  %81 = load i32, i32* @SH7751_PCILSR1, align 4
  %82 = call i32 @PCIC_WRITE(i32 %81, i32 0)
  %83 = load i32, i32* @SH7751_PCILAR0, align 4
  %84 = call i32 @PCIC_WRITE(i32 %83, i32 201326592)
  %85 = load i32, i32* @SH7751_PCILAR1, align 4
  %86 = call i32 @PCIC_WRITE(i32 %85, i32 0)
  %87 = load i32, i32* @SH7751_PCICR, align 4
  %88 = call i32 @PCIC_WRITE(i32 %87, i32 -1526726655)
  %89 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %90 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SH7751_PCI_MEMORY_BASE, align 4
  %96 = icmp ne i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load i32, i32* @SH7751_PCIMBR, align 4
  %100 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %101 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PCIC_WRITE(i32 %99, i32 %105)
  %107 = load i32, i32* @SH7751_PCIIOBR, align 4
  %108 = load %struct.pci_channel*, %struct.pci_channel** %2, align 8
  %109 = getelementptr inbounds %struct.pci_channel, %struct.pci_channel* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SH7751_PCIIOBR_MASK, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @PCIC_WRITE(i32 %107, i32 %115)
  %117 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @PCIC_WRITE(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
