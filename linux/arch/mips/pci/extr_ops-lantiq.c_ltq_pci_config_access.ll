; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-lantiq.c_ltq_pci_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-lantiq.c_ltq_pci_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@ebu_lock = common dso_local global i32 0, align 4
@ltq_pci_mapped_cfg = common dso_local global i64 0, align 8
@LTQ_PCI_CFG_BUSNUM_SHF = common dso_local global i32 0, align 4
@LTQ_PCI_CFG_FUNNUM_SHF = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@PCI_ACCESS_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @ltq_pci_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_pci_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 248
  %22 = icmp ugt i32 %21, 120
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 248
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 248
  %30 = icmp eq i32 %29, 104
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23, %19, %5
  store i32 1, i32* %6, align 4
  br label %110

32:                                               ; preds = %27
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @spin_lock_irqsave(i32* @ebu_lock, i64 %33)
  %35 = load i64, i64* @ltq_pci_mapped_cfg, align 8
  store i64 %35, i64* %12, align 8
  %36 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %37 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LTQ_PCI_CFG_BUSNUM_SHF, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @LTQ_PCI_CFG_FUNNUM_SHF, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, -4
  %47 = or i32 %44, %46
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* %12, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %12, align 8
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %32
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @swab32(i32 %58)
  %60 = load i64, i64* %12, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @ltq_w32(i32 %59, i32* %61)
  br label %72

63:                                               ; preds = %32
  %64 = load i64, i64* %12, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @ltq_r32(i32* %65)
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @swab32(i32 %69)
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %56
  %73 = call i32 (...) @wmb()
  %74 = load i64, i64* @ltq_pci_mapped_cfg, align 8
  store i64 %74, i64* %12, align 8
  %75 = load i32, i32* @LTQ_PCI_CFG_FUNNUM_SHF, align 4
  %76 = shl i32 0, %75
  %77 = add nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %12, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = call i32 @ltq_r32(i32* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @swab32(i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i64, i64* @ltq_pci_mapped_cfg, align 8
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* @LTQ_PCI_CFG_FUNNUM_SHF, align 4
  %88 = shl i32 104, %87
  %89 = add nsw i32 %88, 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %12, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i64, i64* %12, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = call i32 @ltq_w32(i32 %93, i32* %95)
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* @ebu_lock, i64 %97)
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %109

102:                                              ; preds = %72
  %103 = load i8, i8* %7, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @PCI_ACCESS_READ, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 1, i32* %6, align 4
  br label %110

109:                                              ; preds = %102, %72
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %108, %31
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ltq_w32(i32, i32*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @ltq_r32(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
