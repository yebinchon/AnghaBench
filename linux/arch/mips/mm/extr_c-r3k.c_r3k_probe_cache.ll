; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_probe_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r3k.c_r3k_probe_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ST0_ISC = common dso_local global i32 0, align 4
@dcache_size = common dso_local global i8* null, align 8
@dcache_lsize = common dso_local global i8* null, align 8
@ST0_SWC = common dso_local global i32 0, align 4
@icache_size = common dso_local global i8* null, align 8
@icache_lsize = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r3k_probe_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r3k_probe_cache() #0 {
  %1 = load i32, i32* @ST0_ISC, align 4
  %2 = call i8* @r3k_cache_size(i32 %1)
  store i8* %2, i8** @dcache_size, align 8
  %3 = load i8*, i8** @dcache_size, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ST0_ISC, align 4
  %7 = call i8* @r3k_cache_lsize(i32 %6)
  store i8* %7, i8** @dcache_lsize, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @ST0_ISC, align 4
  %10 = load i32, i32* @ST0_SWC, align 4
  %11 = or i32 %9, %10
  %12 = call i8* @r3k_cache_size(i32 %11)
  store i8* %12, i8** @icache_size, align 8
  %13 = load i8*, i8** @icache_size, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i32, i32* @ST0_ISC, align 4
  %17 = load i32, i32* @ST0_SWC, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @r3k_cache_lsize(i32 %18)
  store i8* %19, i8** @icache_lsize, align 8
  br label %20

20:                                               ; preds = %15, %8
  ret void
}

declare dso_local i8* @r3k_cache_size(i32) #1

declare dso_local i8* @r3k_cache_lsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
