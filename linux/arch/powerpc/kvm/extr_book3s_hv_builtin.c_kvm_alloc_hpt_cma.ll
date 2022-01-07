; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvm_alloc_hpt_cma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvm_alloc_hpt_cma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@KVM_CMA_CHUNK_ORDER = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@kvm_cma = common dso_local global i32 0, align 4
@HPT_ALIGN_PAGES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @kvm_alloc_hpt_cma(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @order_base_2(i64 %3)
  %5 = load i64, i64* @KVM_CMA_CHUNK_ORDER, align 8
  %6 = load i64, i64* @PAGE_SHIFT, align 8
  %7 = sub nsw i64 %5, %6
  %8 = icmp slt i64 %4, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @VM_BUG_ON(i32 %9)
  %11 = load i32, i32* @kvm_cma, align 4
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @HPT_ALIGN_PAGES, align 8
  %14 = call i64 @order_base_2(i64 %13)
  %15 = call %struct.page* @cma_alloc(i32 %11, i64 %12, i64 %14, i32 0)
  ret %struct.page* %15
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @order_base_2(i64) #1

declare dso_local %struct.page* @cma_alloc(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
