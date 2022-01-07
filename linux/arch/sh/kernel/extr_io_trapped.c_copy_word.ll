; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_io_trapped.c_copy_word.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_io_trapped.c_copy_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64, i32)* @copy_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_word(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %23 [
    i32 1, label %11
    i32 2, label %14
    i32 4, label %17
    i32 8, label %20
  ]

11:                                               ; preds = %4
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @__raw_readb(i64 %12)
  store i64 %13, i64* %9, align 8
  br label %23

14:                                               ; preds = %4
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @__raw_readw(i64 %15)
  store i64 %16, i64* %9, align 8
  br label %23

17:                                               ; preds = %4
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @__raw_readl(i64 %18)
  store i64 %19, i64* %9, align 8
  br label %23

20:                                               ; preds = %4
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @__raw_readq(i64 %21)
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %4, %20, %17, %14, %11
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %41 [
    i32 1, label %25
    i32 2, label %29
    i32 4, label %33
    i32 8, label %37
  ]

25:                                               ; preds = %23
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @__raw_writeb(i64 %26, i64 %27)
  br label %41

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @__raw_writew(i64 %30, i64 %31)
  br label %41

33:                                               ; preds = %23
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @__raw_writel(i64 %34, i64 %35)
  br label %41

37:                                               ; preds = %23
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @__raw_writeq(i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %23, %37, %33, %29, %25
  %42 = load i64, i64* %9, align 8
  ret i64 %42
}

declare dso_local i64 @__raw_readb(i64) #1

declare dso_local i64 @__raw_readw(i64) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @__raw_readq(i64) #1

declare dso_local i32 @__raw_writeb(i64, i64) #1

declare dso_local i32 @__raw_writew(i64, i64) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @__raw_writeq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
