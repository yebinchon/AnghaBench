; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k6.c_powernow_k6_set_cpu_multiplier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k6.c_powernow_k6_set_cpu_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_CR0_CD = common dso_local global i64 0, align 8
@index_to_register = common dso_local global i32* null, align 8
@POWERNOW_IOPORT = common dso_local global i32 0, align 4
@MSR_K6_EPMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @powernow_k6_set_cpu_multiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powernow_k6_set_cpu_multiplier(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @local_irq_disable()
  %8 = call i64 (...) @read_cr0()
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @X86_CR0_CD, align 8
  %11 = or i64 %9, %10
  %12 = call i32 @write_cr0(i64 %11)
  %13 = call i32 (...) @wbinvd()
  %14 = load i32*, i32** @index_to_register, align 8
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 5
  %20 = or i32 5632, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* @POWERNOW_IOPORT, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* @MSR_K6_EPMR, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @wrmsr(i32 %25, i64 %26, i32 0)
  %28 = load i32, i32* @POWERNOW_IOPORT, align 4
  %29 = add nsw i32 %28, 8
  %30 = call i64 @inl(i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = and i64 %31, 31
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = or i64 %33, %34
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* @POWERNOW_IOPORT, align 4
  %38 = add nsw i32 %37, 8
  %39 = call i32 @outl(i64 %36, i32 %38)
  %40 = load i32, i32* @POWERNOW_IOPORT, align 4
  %41 = add nsw i32 %40, 0
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  %43 = load i32, i32* @MSR_K6_EPMR, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @wrmsr(i32 %43, i64 %44, i32 0)
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @write_cr0(i64 %46)
  %48 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @read_cr0(...) #1

declare dso_local i32 @write_cr0(i64) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @wrmsr(i32, i64, i32) #1

declare dso_local i64 @inl(i32) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
