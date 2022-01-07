; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_tlb.c_broadcast_tlb_mm_a15_erratum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp_tlb.c_broadcast_tlb_mm_a15_erratum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CPU_BITS_NONE = common dso_local global i32 0, align 4
@ipi_flush_tlb_a15_erratum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @broadcast_tlb_mm_a15_erratum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadcast_tlb_mm_a15_erratum(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* @CPU_BITS_NONE, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @erratum_a15_798181()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = call i32 (...) @get_cpu()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %14 = call i32 @a15_erratum_get_cpumask(i32 %12, %struct.mm_struct* %13, %struct.TYPE_4__* %4)
  %15 = load i32, i32* @ipi_flush_tlb_a15_erratum, align 4
  %16 = call i32 @smp_call_function_many(%struct.TYPE_4__* %4, i32 %15, i32* null, i32 1)
  %17 = call i32 (...) @put_cpu()
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @erratum_a15_798181(...) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @a15_erratum_get_cpumask(i32, %struct.mm_struct*, %struct.TYPE_4__*) #1

declare dso_local i32 @smp_call_function_many(%struct.TYPE_4__*, i32, i32*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
