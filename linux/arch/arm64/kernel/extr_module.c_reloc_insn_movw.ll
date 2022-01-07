; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module.c_reloc_insn_movw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module.c_reloc_insn_movw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AARCH64_INSN_IMM_MOVNZ = common dso_local global i32 0, align 4
@AARCH64_INSN_IMM_16 = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32)* @reloc_insn_movw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reloc_insn_movw(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @do_reloc(i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @AARCH64_INSN_IMM_MOVNZ, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  %30 = and i32 %29, -1610612737
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, 1073741824
  store i32 %35, i32* %14, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = xor i32 %37, -1
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* @AARCH64_INSN_IMM_16, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @aarch64_insn_encode_immediate(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @U16_MAX, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @do_reloc(i32, i32*, i32) #1

declare dso_local i32 @aarch64_insn_encode_immediate(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
