; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-lpc.c___opal_lpc_outl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-lpc.c___opal_lpc_outl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opal_lpc_chip_id = common dso_local global i64 0, align 8
@OPAL_LPC_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @__opal_lpc_outl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__opal_lpc_outl(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @opal_lpc_chip_id, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp ugt i64 %8, 65532
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %40

11:                                               ; preds = %7
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 3
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 24
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @opal_lpc_outb(i32 %17, i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 16
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 1
  %24 = call i32 @opal_lpc_outb(i32 %21, i64 %23)
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 8
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 2
  %29 = call i32 @opal_lpc_outb(i32 %26, i64 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 3
  %33 = call i32 @opal_lpc_outb(i32 %30, i64 %32)
  br label %40

34:                                               ; preds = %11
  %35 = load i64, i64* @opal_lpc_chip_id, align 8
  %36 = load i32, i32* @OPAL_LPC_IO, align 4
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @opal_lpc_write(i64 %35, i32 %36, i64 %37, i32 %38, i32 4)
  br label %40

40:                                               ; preds = %34, %15, %10
  ret void
}

declare dso_local i32 @opal_lpc_outb(i32, i64) #1

declare dso_local i32 @opal_lpc_write(i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
