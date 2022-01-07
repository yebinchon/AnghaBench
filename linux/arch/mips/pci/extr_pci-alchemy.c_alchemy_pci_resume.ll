; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_alchemy_pci_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_alchemy_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alchemy_pci_context = type { i32, i64, i32* }

@__alchemy_pci_ctx = common dso_local global %struct.alchemy_pci_context* null, align 8
@PCI_REG_CMEM = common dso_local global i64 0, align 8
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
@PCI_REG_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alchemy_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alchemy_pci_resume() #0 {
  %1 = alloca %struct.alchemy_pci_context*, align 8
  %2 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** @__alchemy_pci_ctx, align 8
  store %struct.alchemy_pci_context* %2, %struct.alchemy_pci_context** %1, align 8
  %3 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %4 = icmp ne %struct.alchemy_pci_context* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %145

6:                                                ; preds = %0
  %7 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %8 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %13 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_REG_CMEM, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @__raw_writel(i32 %11, i64 %16)
  %18 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %19 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %24 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_REG_B2BMASK_CCH, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @__raw_writel(i32 %22, i64 %27)
  %29 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %30 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %35 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCI_REG_B2BBASE0_VID, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @__raw_writel(i32 %33, i64 %38)
  %40 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %41 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %46 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCI_REG_B2BBASE1_SID, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @__raw_writel(i32 %44, i64 %49)
  %51 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %52 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %57 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCI_REG_MWMASK_DEV, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @__raw_writel(i32 %55, i64 %60)
  %62 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %63 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %68 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCI_REG_MWBASE_REV_CCL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @__raw_writel(i32 %66, i64 %71)
  %73 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %74 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %79 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCI_REG_ID, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @__raw_writel(i32 %77, i64 %82)
  %84 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %85 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %90 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PCI_REG_CLASSREV, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @__raw_writel(i32 %88, i64 %93)
  %95 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %96 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 9
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %101 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCI_REG_PARAM, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @__raw_writel(i32 %99, i64 %104)
  %106 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %107 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 10
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %112 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PCI_REG_MBAR, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @__raw_writel(i32 %110, i64 %115)
  %117 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %118 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 11
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %123 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PCI_REG_TIMEOUT, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @__raw_writel(i32 %121, i64 %126)
  %128 = call i32 (...) @wmb()
  %129 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %130 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %135 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PCI_REG_CONFIG, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @__raw_writel(i32 %133, i64 %138)
  %140 = call i32 (...) @wmb()
  %141 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %142 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %141, i32 0, i32 0
  store i32 8191, i32* %142, align 8
  %143 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %1, align 8
  %144 = call i32 @alchemy_pci_wired_entry(%struct.alchemy_pci_context* %143)
  br label %145

145:                                              ; preds = %6, %5
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @alchemy_pci_wired_entry(%struct.alchemy_pci_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
