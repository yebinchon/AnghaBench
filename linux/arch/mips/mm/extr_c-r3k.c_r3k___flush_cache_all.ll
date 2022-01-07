; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k___flush_cache_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k___flush_cache_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSEG0 = common dso_local global i64 0, align 8
@dcache_size = common dso_local global i64 0, align 8
@icache_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r3k___flush_cache_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3k___flush_cache_all() #0 {
  %1 = load i64, i64* @KSEG0, align 8
  %2 = load i64, i64* @KSEG0, align 8
  %3 = load i64, i64* @dcache_size, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @r3k_flush_dcache_range(i64 %1, i64 %4)
  %6 = load i64, i64* @KSEG0, align 8
  %7 = load i64, i64* @KSEG0, align 8
  %8 = load i64, i64* @icache_size, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @r3k_flush_icache_range(i64 %6, i64 %9)
  ret void
}

declare dso_local i32 @r3k_flush_dcache_range(i64, i64) #1

declare dso_local i32 @r3k_flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
