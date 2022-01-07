; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_delay.c___udelay_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_delay.c___udelay_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.s390_idle_data = type { i32 }

@CR0_IRQ_SUBCLASS_MASK = common dso_local global i64 0, align 8
@PSW_MASK_EXT = common dso_local global i64 0, align 8
@PSW_MASK_WAIT = common dso_local global i64 0, align 8
@CIF_IGNORE_IRQ = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @__udelay_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__udelay_disabled(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.s390_idle_data, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = call i64 (...) @get_tod_clock()
  %9 = load i64, i64* %2, align 8
  %10 = shl i64 %9, 12
  %11 = add i64 %8, %10
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @__ctl_store(i64 %12, i32 0, i32 0)
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @CR0_IRQ_SUBCLASS_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = or i64 %18, 2048
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @__ctl_load(i64 %20, i32 0, i32 0)
  %22 = call i64 (...) @__extract_psw()
  %23 = load i64, i64* @PSW_MASK_EXT, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @PSW_MASK_WAIT, align 8
  %26 = or i64 %24, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @set_clock_comparator(i64 %27)
  %29 = load i32, i32* @CIF_IGNORE_IRQ, align 4
  %30 = call i32 @set_cpu_flag(i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @psw_idle(%struct.s390_idle_data* %6, i64 %31)
  %33 = load i32, i32* @CIF_IGNORE_IRQ, align 4
  %34 = call i32 @clear_cpu_flag(i32 %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %36 = call i32 @set_clock_comparator(i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @__ctl_load(i64 %37, i32 0, i32 0)
  ret void
}

declare dso_local i64 @get_tod_clock(...) #1

declare dso_local i32 @__ctl_store(i64, i32, i32) #1

declare dso_local i32 @__ctl_load(i64, i32, i32) #1

declare dso_local i64 @__extract_psw(...) #1

declare dso_local i32 @set_clock_comparator(i64) #1

declare dso_local i32 @set_cpu_flag(i32) #1

declare dso_local i32 @psw_idle(%struct.s390_idle_data*, i64) #1

declare dso_local i32 @clear_cpu_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
