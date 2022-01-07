; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_cr4_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_cr4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@X86_FEATURE_PCID = common dso_local global i32 0, align 4
@X86_CR4_PCIDE = common dso_local global i64 0, align 8
@cr_pinning = common dso_local global i32 0, align 4
@cr4_pinned_bits = common dso_local global i64 0, align 8
@cpu_tlbstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cr4_init() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @__read_cr4()
  store i64 %2, i64* %1, align 8
  %3 = load i32, i32* @X86_FEATURE_PCID, align 4
  %4 = call i64 @boot_cpu_has(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i64, i64* @X86_CR4_PCIDE, align 8
  %8 = load i64, i64* %1, align 8
  %9 = or i64 %8, %7
  store i64 %9, i64* %1, align 8
  br label %10

10:                                               ; preds = %6, %0
  %11 = call i64 @static_branch_likely(i32* @cr_pinning)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i64, i64* @cr4_pinned_bits, align 8
  %15 = load i64, i64* %1, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %1, align 8
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @__write_cr4(i64 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 0), align 4
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @this_cpu_write(i32 %20, i64 %21)
  ret void
}

declare dso_local i64 @__read_cr4(...) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i32 @__write_cr4(i64) #1

declare dso_local i32 @this_cpu_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
