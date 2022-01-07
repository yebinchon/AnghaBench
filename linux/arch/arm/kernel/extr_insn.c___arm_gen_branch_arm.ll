; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_insn.c___arm_gen_branch_arm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_insn.c___arm_gen_branch_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @__arm_gen_branch_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__arm_gen_branch_arm(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 3925868544, i64* %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %8, align 8
  %14 = or i64 %13, 16777216
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 8
  %19 = sub nsw i64 %16, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp slt i64 %20, -33554432
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %9, align 8
  %24 = icmp sgt i64 %23, 33554428
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i1 [ true, %15 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @WARN_ON_ONCE(i32 1)
  store i64 0, i64* %4, align 8
  br label %39

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = ashr i64 %33, 2
  %35 = and i64 %34, 16777215
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = or i64 %36, %37
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %32, %30
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
