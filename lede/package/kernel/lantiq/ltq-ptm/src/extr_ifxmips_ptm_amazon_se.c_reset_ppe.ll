; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_amazon_se.c_reset_ppe.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_amazon_se.c_reset_ppe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFX_PP32_ENET_MAC_CFG = common dso_local global i32* null, align 8
@IFX_PP32_ETOP_CFG = common dso_local global i32* null, align 8
@IFX_PP32_ETOP_IG_PLEN_CTRL = common dso_local global i32* null, align 8
@IFX_PP32_ETOP_MDIO_CFG = common dso_local global i32* null, align 8
@IFX_RCU_DOMAIN_PPE = common dso_local global i32 0, align 4
@IFX_RCU_MODULE_PTM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_ppe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_ppe() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
