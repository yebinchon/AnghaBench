; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_get_insn_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_get_insn_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@instruction_counter = common dso_local global i32 0, align 4
@SPRN_COUNTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_insn_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_insn_ctr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  br label %3

3:                                                ; preds = %7, %0
  %4 = call i32 @atomic_read(i32* @instruction_counter)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @SPRN_COUNTA, align 4
  %6 = call i64 @mfspr(i32 %5)
  store i64 %6, i64* %2, align 8
  br label %7

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @atomic_read(i32* @instruction_counter)
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %3, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 %12, 16
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %2, align 8
  %16 = lshr i64 %15, 16
  %17 = or i64 %14, %16
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
