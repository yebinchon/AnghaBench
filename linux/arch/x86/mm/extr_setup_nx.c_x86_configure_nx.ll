; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_setup_nx.c_x86_configure_nx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_setup_nx.c_x86_configure_nx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_NX = common dso_local global i32 0, align 4
@disable_nx = common dso_local global i32 0, align 4
@_PAGE_NX = common dso_local global i32 0, align 4
@__supported_pte_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_configure_nx() #0 {
  %1 = load i32, i32* @X86_FEATURE_NX, align 4
  %2 = call i64 @boot_cpu_has(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @disable_nx, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @_PAGE_NX, align 4
  %9 = load i32, i32* @__supported_pte_mask, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @__supported_pte_mask, align 4
  br label %16

11:                                               ; preds = %4, %0
  %12 = load i32, i32* @_PAGE_NX, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @__supported_pte_mask, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @__supported_pte_mask, align 4
  br label %16

16:                                               ; preds = %11, %7
  ret void
}

declare dso_local i64 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
