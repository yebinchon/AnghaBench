; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_pending.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_flush_tlb_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32 }
%struct.tlb_pending_info = type { i64, i64*, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@tlb_pending_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_pending(%struct.mm_struct* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlb_pending_info, align 8
  %9 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CTX_HWBITS(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = call i32 (...) @get_cpu()
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.tlb_pending_info, %struct.tlb_pending_info* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.tlb_pending_info, %struct.tlb_pending_info* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds %struct.tlb_pending_info, %struct.tlb_pending_info* %8, i32 0, i32 1
  store i64* %19, i64** %20, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  %25 = icmp eq %struct.mm_struct* %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %33 = call i32 @mm_cpumask(%struct.mm_struct* %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cpumask_of(i32 %34)
  %36 = call i32 @cpumask_copy(i32 %33, i32 %35)
  br label %42

37:                                               ; preds = %26, %3
  %38 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %39 = call i32 @mm_cpumask(%struct.mm_struct* %38)
  %40 = load i32, i32* @tlb_pending_func, align 4
  %41 = call i32 @smp_call_function_many(i32 %39, i32 %40, %struct.tlb_pending_info* %8, i32 1)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = call i32 @__flush_tlb_pending(i32 %43, i64 %44, i64* %45)
  %47 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @CTX_HWBITS(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @smp_call_function_many(i32, i32, %struct.tlb_pending_info*, i32) #1

declare dso_local i32 @__flush_tlb_pending(i32, i64, i64*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
