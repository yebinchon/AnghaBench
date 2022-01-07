; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu.c_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s32/extr_mmu.c_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_PPC_BOOK3S_601 = common dso_local global i32 0, align 4
@SZ_8M = common dso_local global i32 0, align 4
@SZ_256M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @block_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_size(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @CONFIG_PPC_BOOK3S_601, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SZ_8M, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SZ_256M, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ffs(i64 %17)
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %19, 31
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = sub i64 %21, %22
  %24 = call i32 @fls(i64 %23)
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %25, 31
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 1, %30
  %32 = call i32 @min3(i32 %27, i32 %29, i32 %31)
  ret i32 %32
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @min3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
