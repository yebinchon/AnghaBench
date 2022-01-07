; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754dp.c_ieee754dp_issnan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754dp.c_ieee754dp_issnan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.ieee754dp = type { i32 }

@DP_FBITS = common dso_local global i64 0, align 8
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ieee754dp_issnan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee754dp_issnan(i32 %0) #0 {
  %2 = alloca %union.ieee754dp, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ieee754dp_isnan(i32 %6)
  %8 = call i32 @assert(i32 %7)
  %9 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DPMANT(i32 %10)
  %12 = load i64, i64* @DP_FBITS, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i32 @DP_MBIT(i64 %13)
  %15 = and i32 %11, %14
  %16 = load i64, i64* @DP_FBITS, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @DP_MBIT(i64 %17)
  %19 = icmp eq i32 %15, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  %22 = load i32, i32* %3, align 4
  %23 = xor i32 %21, %22
  ret i32 %23
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ieee754dp_isnan(i32) #1

declare dso_local i32 @DPMANT(i32) #1

declare dso_local i32 @DP_MBIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
