; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_feature-fixups.c_patch_alt_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_feature-fixups.c_patch_alt_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @patch_alt_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alt_instruction(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @instr_is_relative_branch(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @branch_target(i32* %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ugt i32* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25, %18
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @translate_branch(i32* %30, i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %42

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @raw_patch_instruction(i32* %39, i32 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @instr_is_relative_branch(i32) #1

declare dso_local i64 @branch_target(i32*) #1

declare dso_local i32 @translate_branch(i32*, i32*) #1

declare dso_local i32 @raw_patch_instruction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
