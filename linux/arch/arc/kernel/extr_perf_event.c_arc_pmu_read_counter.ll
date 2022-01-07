; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_read_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARC_REG_PCT_INDEX = common dso_local global i32 0, align 4
@ARC_REG_PCT_CONTROL = common dso_local global i32 0, align 4
@ARC_REG_PCT_CONTROL_SN = common dso_local global i32 0, align 4
@ARC_REG_PCT_SNAPH = common dso_local global i32 0, align 4
@ARC_REG_PCT_SNAPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arc_pmu_read_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_pmu_read_counter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @ARC_REG_PCT_INDEX, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @write_aux_reg(i32 %5, i32 %6)
  %8 = load i32, i32* @ARC_REG_PCT_CONTROL, align 4
  %9 = call i32 @read_aux_reg(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @ARC_REG_PCT_CONTROL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ARC_REG_PCT_CONTROL_SN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @write_aux_reg(i32 %10, i32 %13)
  %15 = load i32, i32* @ARC_REG_PCT_SNAPH, align 4
  %16 = call i32 @read_aux_reg(i32 %15)
  %17 = shl i32 %16, 32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @ARC_REG_PCT_SNAPL, align 4
  %19 = call i32 @read_aux_reg(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @write_aux_reg(i32, i32) #1

declare dso_local i32 @read_aux_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
