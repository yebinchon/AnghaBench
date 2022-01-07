; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_set_mmu_pid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_tlb.c_set_mmu_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_TLBMISC = common dso_local global i32 0, align 4
@TLBMISC_WAY = common dso_local global i64 0, align 8
@TLBMISC_PID_MASK = common dso_local global i64 0, align 8
@TLBMISC_PID_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_mmu_pid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @CTL_TLBMISC, align 4
  %5 = call i64 @RDCTL(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @TLBMISC_WAY, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @TLBMISC_PID_MASK, align 8
  %11 = and i64 %9, %10
  %12 = load i64, i64* @TLBMISC_PID_SHIFT, align 8
  %13 = shl i64 %11, %12
  %14 = load i64, i64* %3, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load i32, i32* @CTL_TLBMISC, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @WRCTL(i32 %16, i64 %17)
  ret void
}

declare dso_local i64 @RDCTL(i32) #1

declare dso_local i32 @WRCTL(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
