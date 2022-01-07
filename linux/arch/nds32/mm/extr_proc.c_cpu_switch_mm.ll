; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_switch_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_switch_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NDS32_SR_TLB_MISC = common dso_local global i32 0, align 4
@TLB_MISC_mskCID = common dso_local global i64 0, align 8
@NDS32_SR_L1_PPTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_switch_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load i32, i32* @NDS32_SR_TLB_MISC, align 4
  %5 = call i64 @__nds32__mfsr(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @TLB_MISC_mskCID, align 8
  %8 = xor i64 %7, -1
  %9 = and i64 %6, %8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = or i64 %9, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @NDS32_SR_TLB_MISC, align 4
  %17 = call i32 @__nds32__mtsr_dsb(i64 %15, i32 %16)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @__pa(i32 %20)
  %22 = load i32, i32* @NDS32_SR_L1_PPTB, align 4
  %23 = call i32 @__nds32__mtsr_isb(i32 %21, i32 %22)
  ret void
}

declare dso_local i64 @__nds32__mfsr(i32) #1

declare dso_local i32 @__nds32__mtsr_dsb(i64, i32) #1

declare dso_local i32 @__nds32__mtsr_isb(i32, i32) #1

declare dso_local i32 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
