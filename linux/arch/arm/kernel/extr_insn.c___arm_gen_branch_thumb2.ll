; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_insn.c___arm_gen_branch_thumb2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_insn.c___arm_gen_branch_thumb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @__arm_gen_branch_thumb2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__arm_gen_branch_thumb2(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 4
  %21 = sub nsw i64 %18, %20
  store i64 %21, i64* %17, align 8
  %22 = load i64, i64* %17, align 8
  %23 = icmp slt i64 %22, -16777216
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %17, align 8
  %26 = icmp sgt i64 %25, 16777214
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %3
  %28 = call i32 @WARN_ON_ONCE(i32 1)
  store i64 0, i64* %4, align 8
  br label %81

29:                                               ; preds = %24
  %30 = load i64, i64* %17, align 8
  %31 = ashr i64 %30, 24
  %32 = and i64 %31, 1
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %17, align 8
  %34 = ashr i64 %33, 23
  %35 = and i64 %34, 1
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %17, align 8
  %37 = ashr i64 %36, 22
  %38 = and i64 %37, 1
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %17, align 8
  %40 = ashr i64 %39, 12
  %41 = and i64 %40, 1023
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %17, align 8
  %43 = ashr i64 %42, 1
  %44 = and i64 %43, 2047
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %8, align 8
  %51 = xor i64 %49, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = xor i64 %56, %57
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = shl i64 %59, 10
  %61 = or i64 61440, %60
  %62 = load i64, i64* %13, align 8
  %63 = or i64 %61, %62
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %9, align 8
  %65 = shl i64 %64, 13
  %66 = or i64 36864, %65
  %67 = load i64, i64* %10, align 8
  %68 = shl i64 %67, 11
  %69 = or i64 %66, %68
  %70 = load i64, i64* %14, align 8
  %71 = or i64 %69, %70
  store i64 %71, i64* %16, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %29
  %75 = load i64, i64* %16, align 8
  %76 = or i64 %75, 16384
  store i64 %76, i64* %16, align 8
  br label %77

77:                                               ; preds = %74, %29
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i64 @__opcode_thumb32_compose(i64 %78, i64 %79)
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %77, %27
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @__opcode_thumb32_compose(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
