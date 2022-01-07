; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_prm_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_prm_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@AM43XX_PRM_OCP_SOCKET_INST = common dso_local global i32 0, align 4
@omap4_prcm_irq_setup = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@omap_prm_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@AM43XX_PRM_DEVICE_INST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prm_save_context() #0 {
  %1 = load i32, i32* @AM43XX_PRM_OCP_SOCKET_INST, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omap4_prcm_irq_setup, i32 0, i32 1), align 4
  %3 = call i8* @omap4_prm_read_inst_reg(i32 %1, i32 %2)
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_prm_context, i32 0, i32 1), align 8
  %4 = load i32, i32* @AM43XX_PRM_DEVICE_INST, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omap4_prcm_irq_setup, i32 0, i32 0), align 4
  %6 = call i8* @omap4_prm_read_inst_reg(i32 %4, i32 %5)
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_prm_context, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @omap4_prm_read_inst_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
