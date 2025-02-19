; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_syscalls.c_do_mmap2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_syscalls.c_do_mmap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i64, i32)* @do_mmap2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_mmap2(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @arch_validate_prot(i64 %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  br label %48

23:                                               ; preds = %7
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %27, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %48

35:                                               ; preds = %26
  %36 = load i32, i32* %14, align 4
  %37 = load i64, i64* %13, align 8
  %38 = zext i32 %36 to i64
  %39 = lshr i64 %37, %38
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %35, %23
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i64 @ksys_mmap_pgoff(i64 %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46)
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %40, %34, %22
  %49 = load i64, i64* %15, align 8
  ret i64 %49
}

declare dso_local i32 @arch_validate_prot(i64, i64) #1

declare dso_local i64 @ksys_mmap_pgoff(i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
