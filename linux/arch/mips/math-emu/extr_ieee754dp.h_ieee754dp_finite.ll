; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754dp.h_ieee754dp_finite.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754dp.h_ieee754dp_finite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754dp = type { i32 }

@DP_EMAX = common dso_local global i64 0, align 8
@DP_EBIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ieee754dp_finite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee754dp_finite(i32 %0) #0 {
  %2 = alloca %union.ieee754dp, align 4
  %3 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @DPBEXP(i32 %5)
  %7 = load i64, i64* @DP_EMAX, align 8
  %8 = add nsw i64 %7, 1
  %9 = load i64, i64* @DP_EBIAS, align 8
  %10 = add nsw i64 %8, %9
  %11 = icmp ne i64 %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare dso_local i64 @DPBEXP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
