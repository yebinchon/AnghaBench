; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_local_r4k___flush_cache_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_local_r4k___flush_cache_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @local_r4k___flush_cache_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @local_r4k___flush_cache_all(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @current_cpu_type()
  switch i32 %3, label %13 [
    i32 137, label %4
    i32 130, label %4
    i32 131, label %4
    i32 128, label %4
    i32 129, label %4
    i32 135, label %4
    i32 134, label %4
    i32 133, label %4
    i32 132, label %4
    i32 136, label %6
    i32 138, label %10
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %5 = call i32 (...) @r4k_blast_scache()
  br label %16

6:                                                ; preds = %1
  %7 = call i32 (...) @get_ebase_cpunum()
  %8 = ashr i32 %7, 2
  %9 = call i32 @r4k_blast_scache_node(i32 %8)
  br label %16

10:                                               ; preds = %1
  %11 = call i32 (...) @r4k_blast_scache()
  %12 = call i32 (...) @__sync()
  br label %16

13:                                               ; preds = %1
  %14 = call i32 (...) @r4k_blast_dcache()
  %15 = call i32 (...) @r4k_blast_icache()
  br label %16

16:                                               ; preds = %13, %10, %6, %4
  ret void
}

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @r4k_blast_scache(...) #1

declare dso_local i32 @r4k_blast_scache_node(i32) #1

declare dso_local i32 @get_ebase_cpunum(...) #1

declare dso_local i32 @__sync(...) #1

declare dso_local i32 @r4k_blast_dcache(...) #1

declare dso_local i32 @r4k_blast_icache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
