; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_mipsxx.c___n_counters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_mipsxx.c___n_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_perf = common dso_local global i32 0, align 4
@MIPS_PERFCTRL_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__n_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__n_counters() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @cpu_has_perf, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

5:                                                ; preds = %0
  %6 = call i32 (...) @read_c0_perfctrl0()
  %7 = load i32, i32* @MIPS_PERFCTRL_M, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %24

11:                                               ; preds = %5
  %12 = call i32 (...) @read_c0_perfctrl1()
  %13 = load i32, i32* @MIPS_PERFCTRL_M, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 2, i32* %1, align 4
  br label %24

17:                                               ; preds = %11
  %18 = call i32 (...) @read_c0_perfctrl2()
  %19 = load i32, i32* @MIPS_PERFCTRL_M, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 3, i32* %1, align 4
  br label %24

23:                                               ; preds = %17
  store i32 4, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %22, %16, %10, %4
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @read_c0_perfctrl0(...) #1

declare dso_local i32 @read_c0_perfctrl1(...) #1

declare dso_local i32 @read_c0_perfctrl2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
