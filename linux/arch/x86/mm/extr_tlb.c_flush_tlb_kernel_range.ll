; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flush_tlb_info = type { i32 }

@TLB_FLUSH_ALL = common dso_local global i64 0, align 8
@tlb_single_page_flush_ceiling = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@do_flush_tlb_all = common dso_local global i32 0, align 4
@do_kernel_range_flush = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.flush_tlb_info*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = sub i64 %10, %11
  %13 = load i64, i64* @tlb_single_page_flush_ceiling, align 8
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 %13, %15
  %17 = icmp ugt i64 %12, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %9, %2
  %19 = load i32, i32* @do_flush_tlb_all, align 4
  %20 = call i32 @on_each_cpu(i32 %19, %struct.flush_tlb_info* null, i32 1)
  br label %31

21:                                               ; preds = %9
  %22 = call i32 (...) @preempt_disable()
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call %struct.flush_tlb_info* @get_flush_tlb_info(i32* null, i64 %23, i64 %24, i32 0, i32 0, i32 0)
  store %struct.flush_tlb_info* %25, %struct.flush_tlb_info** %5, align 8
  %26 = load i32, i32* @do_kernel_range_flush, align 4
  %27 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %5, align 8
  %28 = call i32 @on_each_cpu(i32 %26, %struct.flush_tlb_info* %27, i32 1)
  %29 = call i32 (...) @put_flush_tlb_info()
  %30 = call i32 (...) @preempt_enable()
  br label %31

31:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @on_each_cpu(i32, %struct.flush_tlb_info*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.flush_tlb_info* @get_flush_tlb_info(i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @put_flush_tlb_info(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
