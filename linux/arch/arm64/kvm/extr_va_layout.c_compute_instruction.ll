; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_va_layout.c_compute_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_va_layout.c_compute_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AARCH64_BREAK_FAULT = common dso_local global i32 0, align 4
@AARCH64_INSN_LOGIC_AND = common dso_local global i32 0, align 4
@AARCH64_INSN_VARIANT_64BIT = common dso_local global i32 0, align 4
@va_mask = common dso_local global i32 0, align 4
@tag_lsb = common dso_local global i32 0, align 4
@tag_val = common dso_local global i32 0, align 4
@AARCH64_INSN_ADSB_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @compute_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_instruction(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @AARCH64_BREAK_FAULT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %50 [
    i32 0, label %10
    i32 1, label %17
    i32 2, label %24
    i32 3, label %33
    i32 4, label %42
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @AARCH64_INSN_LOGIC_AND, align 4
  %12 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @va_mask, align 4
  %16 = call i32 @aarch64_insn_gen_logical_immediate(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @tag_lsb, align 4
  %23 = call i32 @aarch64_insn_gen_extr(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %50

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @tag_val, align 4
  %28 = call i32 @GENMASK(i32 11, i32 0)
  %29 = and i32 %27, %28
  %30 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %31 = load i32, i32* @AARCH64_INSN_ADSB_ADD, align 4
  %32 = call i32 @aarch64_insn_gen_add_sub_imm(i32 %25, i32 %26, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @tag_val, align 4
  %37 = call i32 @GENMASK(i32 23, i32 12)
  %38 = and i32 %36, %37
  %39 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %40 = load i32, i32* @AARCH64_INSN_ADSB_ADD, align 4
  %41 = call i32 @aarch64_insn_gen_add_sub_imm(i32 %34, i32 %35, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %50

42:                                               ; preds = %3
  %43 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @tag_lsb, align 4
  %48 = sub nsw i32 64, %47
  %49 = call i32 @aarch64_insn_gen_extr(i32 %43, i32 %44, i32 %45, i32 %46, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %3, %42, %33, %24, %17, %10
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @aarch64_insn_gen_logical_immediate(i32, i32, i32, i32, i32) #1

declare dso_local i32 @aarch64_insn_gen_extr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @aarch64_insn_gen_add_sub_imm(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
