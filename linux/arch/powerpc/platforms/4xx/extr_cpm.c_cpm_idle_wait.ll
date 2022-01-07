; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_cpm.c_cpm_idle_wait.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_cpm.c_cpm_idle_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_WE = common dso_local global i64 0, align 8
@MSR_EE = common dso_local global i64 0, align 8
@MSR_CE = common dso_local global i64 0, align 8
@MSR_DE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpm_idle_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpm_idle_wait() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @mfmsr()
  store i64 %2, i64* %1, align 8
  %3 = call i32 (...) @mb()
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @MSR_WE, align 8
  %6 = or i64 %4, %5
  %7 = load i64, i64* @MSR_EE, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @MSR_CE, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @MSR_DE, align 8
  %12 = or i64 %10, %11
  %13 = call i32 @mtmsr(i64 %12)
  %14 = call i32 (...) @isync()
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @mtmsr(i64 %15)
  %17 = call i32 (...) @isync()
  ret void
}

declare dso_local i64 @mfmsr(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mtmsr(i64) #1

declare dso_local i32 @isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
