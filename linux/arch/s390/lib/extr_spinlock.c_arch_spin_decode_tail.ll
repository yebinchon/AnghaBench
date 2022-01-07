; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_decode_tail.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_spinlock.c_arch_spin_decode_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spin_wait = type { i32 }

@_Q_TAIL_IDX_MASK = common dso_local global i32 0, align 4
@_Q_TAIL_IDX_OFFSET = common dso_local global i32 0, align 4
@_Q_TAIL_CPU_MASK = common dso_local global i32 0, align 4
@_Q_TAIL_CPU_OFFSET = common dso_local global i32 0, align 4
@spin_wait = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spin_wait* (i32)* @arch_spin_decode_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spin_wait* @arch_spin_decode_tail(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @_Q_TAIL_IDX_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @_Q_TAIL_IDX_OFFSET, align 4
  %9 = ashr i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @_Q_TAIL_CPU_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @_Q_TAIL_CPU_OFFSET, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** @spin_wait, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call %struct.spin_wait* @per_cpu_ptr(i32* %18, i32 %20)
  ret %struct.spin_wait* %21
}

declare dso_local %struct.spin_wait* @per_cpu_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
