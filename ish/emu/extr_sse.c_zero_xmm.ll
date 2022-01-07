; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_sse.c_zero_xmm.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_sse.c_zero_xmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.xmm_reg = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.xmm_reg*)* @zero_xmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zero_xmm(%union.xmm_reg* %0) #0 {
  %2 = alloca %union.xmm_reg*, align 8
  store %union.xmm_reg* %0, %union.xmm_reg** %2, align 8
  %3 = load %union.xmm_reg*, %union.xmm_reg** %2, align 8
  %4 = bitcast %union.xmm_reg* %3 to i64**
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 0, i64* %6, align 8
  %7 = load %union.xmm_reg*, %union.xmm_reg** %2, align 8
  %8 = bitcast %union.xmm_reg* %7 to i64**
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  store i64 0, i64* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
