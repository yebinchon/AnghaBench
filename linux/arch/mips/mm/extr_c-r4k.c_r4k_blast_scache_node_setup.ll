; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_scache_node_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_blast_scache_node_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_LOONGSON3 = common dso_local global i64 0, align 8
@cache_noop = common dso_local global i64 0, align 8
@r4k_blast_scache_node = common dso_local global i8* null, align 8
@blast_scache16_node = common dso_local global i8* null, align 8
@blast_scache32_node = common dso_local global i8* null, align 8
@blast_scache64_node = common dso_local global i8* null, align 8
@blast_scache128_node = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r4k_blast_scache_node_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_blast_scache_node_setup() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @cpu_scache_line_size()
  store i64 %2, i64* %1, align 8
  %3 = call i64 (...) @current_cpu_type()
  %4 = load i64, i64* @CPU_LOONGSON3, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* @cache_noop, align 8
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @r4k_blast_scache_node, align 8
  br label %33

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = icmp eq i64 %10, 16
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i8*, i8** @blast_scache16_node, align 8
  store i8* %13, i8** @r4k_blast_scache_node, align 8
  br label %32

14:                                               ; preds = %9
  %15 = load i64, i64* %1, align 8
  %16 = icmp eq i64 %15, 32
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i8*, i8** @blast_scache32_node, align 8
  store i8* %18, i8** @r4k_blast_scache_node, align 8
  br label %31

19:                                               ; preds = %14
  %20 = load i64, i64* %1, align 8
  %21 = icmp eq i64 %20, 64
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** @blast_scache64_node, align 8
  store i8* %23, i8** @r4k_blast_scache_node, align 8
  br label %30

24:                                               ; preds = %19
  %25 = load i64, i64* %1, align 8
  %26 = icmp eq i64 %25, 128
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8*, i8** @blast_scache128_node, align 8
  store i8* %28, i8** @r4k_blast_scache_node, align 8
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %22
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31, %12
  br label %33

33:                                               ; preds = %32, %6
  ret void
}

declare dso_local i64 @cpu_scache_line_size(...) #1

declare dso_local i64 @current_cpu_type(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
