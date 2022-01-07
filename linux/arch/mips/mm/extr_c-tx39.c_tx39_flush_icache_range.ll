; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-tx39.c_tx39_flush_icache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-tx39.c_tx39_flush_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dcache_size = common dso_local global i64 0, align 8
@icache_size = common dso_local global i64 0, align 8
@TX39_CONF_ICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @tx39_flush_icache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx39_flush_icache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = sub i64 %7, %8
  %10 = load i64, i64* @dcache_size, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @tx39_blast_dcache()
  br label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @protected_blast_dcache_range(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub i64 %19, %20
  %22 = load i64, i64* @icache_size, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (...) @tx39_blast_icache()
  br label %43

26:                                               ; preds = %18
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = call i64 (...) @read_c0_conf()
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @TX39_CONF_ICE, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = call i32 @write_c0_conf(i64 %33)
  %35 = call i32 (...) @TX39_STOP_STREAMING()
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @protected_blast_icache_range(i64 %36, i64 %37)
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @write_c0_conf(i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @local_irq_restore(i64 %41)
  br label %43

43:                                               ; preds = %26, %24
  ret void
}

declare dso_local i32 @tx39_blast_dcache(...) #1

declare dso_local i32 @protected_blast_dcache_range(i64, i64) #1

declare dso_local i32 @tx39_blast_icache(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_c0_conf(...) #1

declare dso_local i32 @write_c0_conf(i64) #1

declare dso_local i32 @TX39_STOP_STREAMING(...) #1

declare dso_local i32 @protected_blast_icache_range(i64, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
