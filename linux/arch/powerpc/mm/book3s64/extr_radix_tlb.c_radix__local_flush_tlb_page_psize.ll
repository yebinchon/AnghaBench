; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_radix__local_flush_tlb_page_psize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_radix__local_flush_tlb_page_psize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MMU_NO_CONTEXT = common dso_local global i64 0, align 8
@RIC_FLUSH_TLB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radix__local_flush_tlb_page_psize(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @preempt_disable()
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @MMU_NO_CONTEXT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RIC_FLUSH_TLB, align 4
  %21 = call i32 @_tlbiel_va(i64 %17, i64 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %3
  %23 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @_tlbiel_va(i64, i64, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
