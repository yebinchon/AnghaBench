; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_dcache_page_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_dcache_page_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_noop = common dso_local global i64 0, align 8
@r4k_blast_dcache_page = common dso_local global i8* null, align 8
@blast_dcache16_page = common dso_local global i8* null, align 8
@r4k_blast_dcache_page_dc32 = common dso_local global i8* null, align 8
@r4k_blast_dcache_page_dc64 = common dso_local global i8* null, align 8
@r4k_blast_dcache_page_dc128 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r4k_blast_dcache_page_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_blast_dcache_page_setup() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @cpu_dcache_line_size()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  switch i64 %3, label %15 [
    i64 0, label %4
    i64 16, label %7
    i64 32, label %9
    i64 64, label %11
    i64 128, label %13
  ]

4:                                                ; preds = %0
  %5 = load i64, i64* @cache_noop, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** @r4k_blast_dcache_page, align 8
  br label %16

7:                                                ; preds = %0
  %8 = load i8*, i8** @blast_dcache16_page, align 8
  store i8* %8, i8** @r4k_blast_dcache_page, align 8
  br label %16

9:                                                ; preds = %0
  %10 = load i8*, i8** @r4k_blast_dcache_page_dc32, align 8
  store i8* %10, i8** @r4k_blast_dcache_page, align 8
  br label %16

11:                                               ; preds = %0
  %12 = load i8*, i8** @r4k_blast_dcache_page_dc64, align 8
  store i8* %12, i8** @r4k_blast_dcache_page, align 8
  br label %16

13:                                               ; preds = %0
  %14 = load i8*, i8** @r4k_blast_dcache_page_dc128, align 8
  store i8* %14, i8** @r4k_blast_dcache_page, align 8
  br label %16

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %15, %13, %11, %9, %7, %4
  ret void
}

declare dso_local i64 @cpu_dcache_line_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
