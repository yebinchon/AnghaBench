; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_alchemy_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_alchemy_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alchemy_pci_context = type { i32*, i64 }

@__alchemy_pci_ctx = common dso_local global %struct.alchemy_pci_context* null, align 8
@PCI_REG_CMEM = common dso_local global i64 0, align 8
@PCI_REG_CONFIG = common dso_local global i64 0, align 8
@PCI_REG_B2BMASK_CCH = common dso_local global i64 0, align 8
@PCI_REG_B2BBASE0_VID = common dso_local global i64 0, align 8
@PCI_REG_B2BBASE1_SID = common dso_local global i64 0, align 8
@PCI_REG_MWMASK_DEV = common dso_local global i64 0, align 8
@PCI_REG_MWBASE_REV_CCL = common dso_local global i64 0, align 8
@PCI_REG_ID = common dso_local global i64 0, align 8
@PCI_REG_CLASSREV = common dso_local global i64 0, align 8
@PCI_REG_PARAM = common dso_local global i64 0, align 8
@PCI_REG_MBAR = common dso_local global i64 0, align 8
@PCI_REG_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @alchemy_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_pci_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.alchemy_pci_context*, align 8
  %3 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** @__alchemy_pci_ctx, align 8
  store %struct.alchemy_pci_context* %3, %struct.alchemy_pci_context** %2, align 8
  %4 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %5 = icmp ne %struct.alchemy_pci_context* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %129

7:                                                ; preds = %0
  %8 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %9 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI_REG_CMEM, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @__raw_readl(i64 %12)
  %14 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %15 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %19 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCI_REG_CONFIG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @__raw_readl(i64 %22)
  %24 = and i32 %23, 655359
  %25 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %26 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %30 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCI_REG_B2BMASK_CCH, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @__raw_readl(i64 %33)
  %35 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %36 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %34, i32* %38, align 4
  %39 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %40 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PCI_REG_B2BBASE0_VID, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @__raw_readl(i64 %43)
  %45 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %46 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %44, i32* %48, align 4
  %49 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %50 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI_REG_B2BBASE1_SID, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @__raw_readl(i64 %53)
  %55 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %56 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %54, i32* %58, align 4
  %59 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %60 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCI_REG_MWMASK_DEV, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @__raw_readl(i64 %63)
  %65 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %66 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  store i32 %64, i32* %68, align 4
  %69 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %70 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI_REG_MWBASE_REV_CCL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @__raw_readl(i64 %73)
  %75 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %76 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  store i32 %74, i32* %78, align 4
  %79 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %80 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCI_REG_ID, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @__raw_readl(i64 %83)
  %85 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %86 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  store i32 %84, i32* %88, align 4
  %89 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %90 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCI_REG_CLASSREV, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @__raw_readl(i64 %93)
  %95 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %96 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  store i32 %94, i32* %98, align 4
  %99 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %100 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PCI_REG_PARAM, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @__raw_readl(i64 %103)
  %105 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %106 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 9
  store i32 %104, i32* %108, align 4
  %109 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %110 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PCI_REG_MBAR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @__raw_readl(i64 %113)
  %115 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %116 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 10
  store i32 %114, i32* %118, align 4
  %119 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %120 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PCI_REG_TIMEOUT, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @__raw_readl(i64 %123)
  %125 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %2, align 8
  %126 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 11
  store i32 %124, i32* %128, align 4
  store i32 0, i32* %1, align 4
  br label %129

129:                                              ; preds = %7, %6
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
