; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lib/extr_bitops.c___mips_test_and_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lib/extr_bitops.c___mips_test_and_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZLONG_MASK = common dso_local global i64 0, align 8
@SZLONG_LOG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mips_test_and_set_bit(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load i64*, i64** %4, align 8
  store i64* %10, i64** %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @SZLONG_MASK, align 8
  %13 = and i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @SZLONG_LOG, align 8
  %17 = lshr i64 %15, %16
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 %17
  store i64* %19, i64** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 1, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @raw_local_irq_save(i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %33, %31
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @raw_local_irq_restore(i64 %35)
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
