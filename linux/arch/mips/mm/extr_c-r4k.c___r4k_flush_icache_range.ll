; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c___r4k_flush_icache_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c___r4k_flush_icache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flush_icache_range_args = type { i64, i64, i32, i32 }

@R4K_HIT = common dso_local global i32 0, align 4
@R4K_INDEX = common dso_local global i32 0, align 4
@icache_size = common dso_local global i64 0, align 8
@cpu_has_ic_fills_f_dc = common dso_local global i32 0, align 4
@dcache_size = common dso_local global i64 0, align 8
@local_r4k_flush_icache_range_ipi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @__r4k_flush_icache_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__r4k_flush_icache_range(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flush_icache_range_args, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.flush_icache_range_args, %struct.flush_icache_range_args* %7, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.flush_icache_range_args, %struct.flush_icache_range_args* %7, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* @R4K_HIT, align 4
  %15 = load i32, i32* @R4K_INDEX, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.flush_icache_range_args, %struct.flush_icache_range_args* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.flush_icache_range_args, %struct.flush_icache_range_args* %7, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = call i32 (...) @preempt_disable()
  %21 = load i32, i32* @R4K_INDEX, align 4
  %22 = call i64 @r4k_op_needs_ipi(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %3
  %25 = load i32, i32* @R4K_HIT, align 4
  %26 = call i64 @r4k_op_needs_ipi(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* @icache_size, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* @cpu_has_ic_fills_f_dc, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %8, align 8
  %37 = mul i64 %36, 2
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* @dcache_size, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %35, %28
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @R4K_INDEX, align 4
  %47 = xor i32 %46, -1
  %48 = getelementptr inbounds %struct.flush_icache_range_args, %struct.flush_icache_range_args* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %47
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %24, %3
  %53 = getelementptr inbounds %struct.flush_icache_range_args, %struct.flush_icache_range_args* %7, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @local_r4k_flush_icache_range_ipi, align 4
  %56 = call i32 @r4k_on_each_cpu(i32 %54, i32 %55, %struct.flush_icache_range_args* %7)
  %57 = call i32 (...) @preempt_enable()
  %58 = call i32 (...) @instruction_hazard()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @r4k_op_needs_ipi(i32) #1

declare dso_local i32 @r4k_on_each_cpu(i32, i32, %struct.flush_icache_range_args*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @instruction_hazard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
