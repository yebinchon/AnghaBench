; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_to_double.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_fpu_hard_struct = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_fpu_hard_struct*, i32)* @denormal_to_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @denormal_to_double(%struct.sh_fpu_hard_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_fpu_hard_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sh_fpu_hard_struct* %0, %struct.sh_fpu_hard_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sh_fpu_hard_struct*, %struct.sh_fpu_hard_struct** %3, align 8
  %10 = getelementptr inbounds %struct.sh_fpu_hard_struct, %struct.sh_fpu_hard_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  store i32 897, i32* %8, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %2
  %15 = load i64, i64* %7, align 8
  %16 = and i64 %15, 2139095040
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, 2147483648
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %25, %18
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %22, 8388608
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = shl i64 %26, 1
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %8, align 4
  br label %21

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, 8388607
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %33, 20
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = lshr i64 %36, 3
  %38 = or i64 %35, %37
  %39 = load i64, i64* %5, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = shl i64 %41, 29
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.sh_fpu_hard_struct*, %struct.sh_fpu_hard_struct** %3, align 8
  %45 = getelementptr inbounds %struct.sh_fpu_hard_struct, %struct.sh_fpu_hard_struct* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.sh_fpu_hard_struct*, %struct.sh_fpu_hard_struct** %3, align 8
  %52 = getelementptr inbounds %struct.sh_fpu_hard_struct, %struct.sh_fpu_hard_struct* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %50, i64* %57, align 8
  br label %58

58:                                               ; preds = %30, %14, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
