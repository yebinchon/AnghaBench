; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-lpc.c___opal_lpc_inl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-lpc.c___opal_lpc_inl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opal_lpc_chip_id = common dso_local global i64 0, align 8
@OPAL_LPC_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__opal_lpc_inl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__opal_lpc_inl(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @opal_lpc_chip_id, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ugt i64 %9, 65532
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  store i32 -1, i32* %2, align 4
  br label %47

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @opal_lpc_inb(i64 %17)
  %19 = shl i32 %18, 24
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  %22 = call i32 @opal_lpc_inb(i64 %21)
  %23 = shl i32 %22, 16
  %24 = or i32 %19, %23
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 2
  %27 = call i32 @opal_lpc_inb(i64 %26)
  %28 = shl i32 %27, 8
  %29 = or i32 %24, %28
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 3
  %32 = call i32 @opal_lpc_inb(i64 %31)
  %33 = or i32 %29, %32
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %12
  %35 = load i64, i64* @opal_lpc_chip_id, align 8
  %36 = load i32, i32* @OPAL_LPC_IO, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @opal_lpc_read(i64 %35, i32 %36, i64 %37, i32* %5, i32 4)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i32 [ -1, %41 ], [ %44, %42 ]
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %16, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @opal_lpc_inb(i64) #1

declare dso_local i64 @opal_lpc_read(i64, i32, i64, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
