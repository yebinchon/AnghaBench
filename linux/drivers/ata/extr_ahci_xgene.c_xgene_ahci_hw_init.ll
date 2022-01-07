; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i64, %struct.xgene_ahci_context* }
%struct.xgene_ahci_context = type { i32, i64, i64 }

@MAX_AHCI_CHN_PERCTR = common dso_local global i32 0, align 4
@HOST_IRQ_STAT = common dso_local global i64 0, align 8
@INTSTATUSMASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"top level interrupt mask 0x%X value 0x%08X\0A\00", align 1
@ERRINTSTATUSMASK = common dso_local global i64 0, align 8
@INT_SLV_TMOMASK = common dso_local global i64 0, align 8
@SLVRDERRATTRIBUTES = common dso_local global i64 0, align 8
@SLVWRERRATTRIBUTES = common dso_local global i64 0, align 8
@MSTRDERRATTRIBUTES = common dso_local global i64 0, align 8
@MSTWRERRATTRIBUTES = common dso_local global i64 0, align 8
@BUSCTLREG = common dso_local global i64 0, align 8
@IOFMSTRWAUX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"coherency 0x%X value 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @xgene_ahci_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_ahci_hw_init(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca %struct.xgene_ahci_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %8, i32 0, i32 1
  %10 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %9, align 8
  store %struct.xgene_ahci_context* %10, %struct.xgene_ahci_context** %4, align 8
  %11 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %12 = call i32 @xgene_ahci_init_memram(%struct.xgene_ahci_context* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %155

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %26, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAX_AHCI_CHN_PERCTR, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @xgene_ahci_set_phy_cfg(%struct.xgene_ahci_context* %23, i32 %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HOST_IRQ_STAT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 -1, i64 %34)
  %36 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HOST_IRQ_STAT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %43 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @INTSTATUSMASK, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %49 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INTSTATUSMASK, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %55 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @INTSTATUSMASK, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %57, i32 %58)
  %60 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %61 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ERRINTSTATUSMASK, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 0, i64 %64)
  %66 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %67 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ERRINTSTATUSMASK, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  %72 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %73 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INT_SLV_TMOMASK, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 0, i64 %76)
  %78 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %79 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @INT_SLV_TMOMASK, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  %84 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %85 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SLVRDERRATTRIBUTES, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 -1, i64 %88)
  %90 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %91 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SLVWRERRATTRIBUTES, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 -1, i64 %94)
  %96 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %97 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MSTRDERRATTRIBUTES, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 -1, i64 %100)
  %102 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %103 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MSTWRERRATTRIBUTES, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 -1, i64 %106)
  %108 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %109 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BUSCTLREG, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readl(i64 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, -3
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, -2
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %120 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @BUSCTLREG, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 %118, i64 %123)
  %125 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %126 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IOFMSTRWAUX, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @readl(i64 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, 8
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, 512
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %137 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @IOFMSTRWAUX, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  %142 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %143 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IOFMSTRWAUX, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @readl(i64 %146)
  store i32 %147, i32* %7, align 4
  %148 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %4, align 8
  %149 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* @IOFMSTRWAUX, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @dev_dbg(i32 %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %151, i32 %152)
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %29, %15
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @xgene_ahci_init_memram(%struct.xgene_ahci_context*) #1

declare dso_local i32 @xgene_ahci_set_phy_cfg(%struct.xgene_ahci_context*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
