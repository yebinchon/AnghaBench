; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@xcall_flush_tlb_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_page(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @CTX_HWBITS(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = call i32 (...) @get_cpu()
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %16 = icmp eq %struct.mm_struct* %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %24 = call i32 @mm_cpumask(%struct.mm_struct* %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @cpumask_of(i32 %25)
  %27 = call i32 @cpumask_copy(i32 %24, i32 %26)
  br label %34

28:                                               ; preds = %17, %2
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %32 = call i32 @mm_cpumask(%struct.mm_struct* %31)
  %33 = call i32 @smp_cross_call_masked(i32* @xcall_flush_tlb_page, i64 %29, i64 %30, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @__flush_tlb_page(i64 %35, i64 %36)
  %38 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i64 @CTX_HWBITS(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_cross_call_masked(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @__flush_tlb_page(i64, i64) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
