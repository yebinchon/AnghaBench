; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_icache_page_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_icache_page_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cache_noop = common dso_local global i64 0, align 8
@r4k_blast_icache_page = common dso_local global i8* null, align 8
@blast_icache16_page = common dso_local global i8* null, align 8
@CPU_LOONGSON2 = common dso_local global i64 0, align 8
@loongson2_blast_icache32_page = common dso_local global i8* null, align 8
@blast_icache32_page = common dso_local global i8* null, align 8
@blast_icache64_page = common dso_local global i8* null, align 8
@blast_icache128_page = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r4k_blast_icache_page_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_blast_icache_page_setup() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @cpu_icache_line_size()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @cache_noop, align 8
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** @r4k_blast_icache_page, align 8
  br label %42

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i8*, i8** @blast_icache16_page, align 8
  store i8* %12, i8** @r4k_blast_icache_page, align 8
  br label %41

13:                                               ; preds = %8
  %14 = load i64, i64* %1, align 8
  %15 = icmp eq i64 %14, 32
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = call i64 (...) @current_cpu_type()
  %18 = load i64, i64* @CPU_LOONGSON2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8*, i8** @loongson2_blast_icache32_page, align 8
  store i8* %21, i8** @r4k_blast_icache_page, align 8
  br label %40

22:                                               ; preds = %16, %13
  %23 = load i64, i64* %1, align 8
  %24 = icmp eq i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** @blast_icache32_page, align 8
  store i8* %26, i8** @r4k_blast_icache_page, align 8
  br label %39

27:                                               ; preds = %22
  %28 = load i64, i64* %1, align 8
  %29 = icmp eq i64 %28, 64
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8*, i8** @blast_icache64_page, align 8
  store i8* %31, i8** @r4k_blast_icache_page, align 8
  br label %38

32:                                               ; preds = %27
  %33 = load i64, i64* %1, align 8
  %34 = icmp eq i64 %33, 128
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i8*, i8** @blast_icache128_page, align 8
  store i8* %36, i8** @r4k_blast_icache_page, align 8
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %30
  br label %39

39:                                               ; preds = %38, %25
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %11
  br label %42

42:                                               ; preds = %41, %5
  ret void
}

declare dso_local i64 @cpu_icache_line_size(...) #1

declare dso_local i64 @current_cpu_type(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
