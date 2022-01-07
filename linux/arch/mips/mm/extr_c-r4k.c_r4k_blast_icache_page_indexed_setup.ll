; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_icache_page_indexed_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_icache_page_indexed_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_noop = common dso_local global i64 0, align 8
@r4k_blast_icache_page_indexed = common dso_local global i8* null, align 8
@blast_icache16_page_indexed = common dso_local global i8* null, align 8
@R4600_V1_INDEX_ICACHEOP_WAR = common dso_local global i64 0, align 8
@blast_icache32_r4600_v1_page_indexed = common dso_local global i8* null, align 8
@TX49XX_ICACHE_INDEX_INV_WAR = common dso_local global i64 0, align 8
@tx49_blast_icache32_page_indexed = common dso_local global i8* null, align 8
@CPU_LOONGSON2 = common dso_local global i64 0, align 8
@loongson2_blast_icache32_page_indexed = common dso_local global i8* null, align 8
@blast_icache32_page_indexed = common dso_local global i8* null, align 8
@blast_icache64_page_indexed = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r4k_blast_icache_page_indexed_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_blast_icache_page_indexed_setup() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @cpu_icache_line_size()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @cache_noop, align 8
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @r4k_blast_icache_page_indexed, align 8
  br label %48

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** @blast_icache16_page_indexed, align 8
  store i8* %12, i8** @r4k_blast_icache_page_indexed, align 8
  br label %47

13:                                               ; preds = %8
  %14 = load i64, i64* %1, align 8
  %15 = icmp eq i64 %14, 32
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i64, i64* @R4600_V1_INDEX_ICACHEOP_WAR, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = call i64 (...) @cpu_is_r4600_v1_x()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** @blast_icache32_r4600_v1_page_indexed, align 8
  store i8* %23, i8** @r4k_blast_icache_page_indexed, align 8
  br label %39

24:                                               ; preds = %19, %16
  %25 = load i64, i64* @TX49XX_ICACHE_INDEX_INV_WAR, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8*, i8** @tx49_blast_icache32_page_indexed, align 8
  store i8* %28, i8** @r4k_blast_icache_page_indexed, align 8
  br label %38

29:                                               ; preds = %24
  %30 = call i64 (...) @current_cpu_type()
  %31 = load i64, i64* @CPU_LOONGSON2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** @loongson2_blast_icache32_page_indexed, align 8
  store i8* %34, i8** @r4k_blast_icache_page_indexed, align 8
  br label %37

35:                                               ; preds = %29
  %36 = load i8*, i8** @blast_icache32_page_indexed, align 8
  store i8* %36, i8** @r4k_blast_icache_page_indexed, align 8
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %22
  br label %46

40:                                               ; preds = %13
  %41 = load i64, i64* %1, align 8
  %42 = icmp eq i64 %41, 64
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** @blast_icache64_page_indexed, align 8
  store i8* %44, i8** @r4k_blast_icache_page_indexed, align 8
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %39
  br label %47

47:                                               ; preds = %46, %11
  br label %48

48:                                               ; preds = %47, %5
  ret void
}

declare dso_local i64 @cpu_icache_line_size(...) #1

declare dso_local i64 @cpu_is_r4600_v1_x(...) #1

declare dso_local i64 @current_cpu_type(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
