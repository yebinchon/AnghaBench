; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_alternative.c_get_alt_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_alternative.c_get_alt_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alt_instr = type { i32 }

@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alt_instr*, i32*, i32*)* @get_alt_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alt_insn(%struct.alt_instr* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.alt_instr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.alt_instr* %0, %struct.alt_instr** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @aarch64_insn_is_branch_imm(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @aarch64_get_branch_offset(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load %struct.alt_instr*, %struct.alt_instr** %4, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @branch_insn_requires_update(%struct.alt_instr* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load i64, i64* %9, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = sub i64 %31, %33
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @aarch64_set_branch_offset(i32 %35, i64 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %30, %19
  br label %67

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @aarch64_insn_is_adrp(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @aarch64_insn_adrp_get_offset(i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @SZ_4K, align 4
  %48 = call i64 @align_down(i32* %46, i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @SZ_4K, align 4
  %54 = call i64 @align_down(i32* %52, i32 %53)
  %55 = sub i64 %51, %54
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @aarch64_insn_adrp_set_offset(i32 %56, i64 %57)
  store i32 %58, i32* %7, align 4
  br label %66

59:                                               ; preds = %39
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @aarch64_insn_uses_literal(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (...) @BUG()
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @aarch64_insn_is_branch_imm(i32) #1

declare dso_local i64 @aarch64_get_branch_offset(i32) #1

declare dso_local i64 @branch_insn_requires_update(%struct.alt_instr*, i64) #1

declare dso_local i32 @aarch64_set_branch_offset(i32, i64) #1

declare dso_local i64 @aarch64_insn_is_adrp(i32) #1

declare dso_local i64 @aarch64_insn_adrp_get_offset(i32) #1

declare dso_local i64 @align_down(i32*, i32) #1

declare dso_local i32 @aarch64_insn_adrp_set_offset(i32, i64) #1

declare dso_local i64 @aarch64_insn_uses_literal(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
