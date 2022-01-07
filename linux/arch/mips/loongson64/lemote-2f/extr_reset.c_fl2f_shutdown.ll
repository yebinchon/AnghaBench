; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_reset.c_fl2f_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/lemote-2f/extr_reset.c_fl2f_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIVIL_LBAR_GPIO = common dso_local global i32 0, align 4
@GPIOL_OUT_EN = common dso_local global i64 0, align 8
@GPIOL_OUT_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fl2f_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl2f_shutdown() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DIVIL_LBAR_GPIO, align 4
  %6 = call i32 @DIVIL_MSR_REG(i32 %5)
  %7 = call i32 @_rdmsr(i32 %6, i32* %1, i32* %2)
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 65280
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @GPIOL_OUT_EN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @inl(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -536870913
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 8192
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @GPIOL_OUT_EN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 %19, i64 %23)
  %25 = call i32 (...) @mmiowb()
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @GPIOL_OUT_VAL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @inl(i64 %29)
  %31 = and i32 %30, -8193
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, 536870912
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @GPIOL_OUT_VAL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outl(i32 %34, i64 %38)
  %40 = call i32 (...) @mmiowb()
  ret void
}

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @DIVIL_MSR_REG(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
