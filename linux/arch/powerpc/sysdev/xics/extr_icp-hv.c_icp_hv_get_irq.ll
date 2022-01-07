; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-hv.c_icp_hv_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xics/extr_icp-hv.c_icp_hv_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XICS_IRQ_SPURIOUS = common dso_local global i32 0, align 4
@xics_host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @icp_hv_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_hv_get_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @xics_cppr_top()
  %6 = call i32 @icp_hv_get_xirr(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 16777215
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @XICS_IRQ_SPURIOUS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %29

13:                                               ; preds = %0
  %14 = load i32, i32* @xics_host, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @irq_find_mapping(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @xics_push_cppr(i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %1, align 4
  br label %29

24:                                               ; preds = %13
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @xics_mask_unknown_vec(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @icp_hv_set_xirr(i32 %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %24, %20, %12
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @icp_hv_get_xirr(i32) #1

declare dso_local i32 @xics_cppr_top(...) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xics_push_cppr(i32) #1

declare dso_local i32 @xics_mask_unknown_vec(i32) #1

declare dso_local i32 @icp_hv_set_xirr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
