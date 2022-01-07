; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_compute_effective_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_compute_effective_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@TSTATE_PRIV = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compute_effective_address(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TSTATE_PRIV, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = lshr i32 %18, 14
  %20 = and i32 %19, 31
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 31
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 8192
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @maybe_flush_windows(i32 %27, i32 0, i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = call i64 @fetch_reg(i32 %31, %struct.pt_regs* %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @sign_extend_imm13(i32 %34)
  %36 = add i64 %33, %35
  store i64 %36, i64* %10, align 8
  br label %50

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @maybe_flush_windows(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %45 = call i64 @fetch_reg(i32 %43, %struct.pt_regs* %44)
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %48 = call i64 @fetch_reg(i32 %46, %struct.pt_regs* %47)
  %49 = add i64 %45, %48
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %37, %26
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @TIF_32BIT, align 4
  %55 = call i64 @test_thread_flag(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %10, align 8
  %59 = and i64 %58, 4294967295
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %57, %53, %50
  %61 = load i64, i64* %10, align 8
  ret i64 %61
}

declare dso_local i32 @maybe_flush_windows(i32, i32, i32, i32) #1

declare dso_local i64 @fetch_reg(i32, %struct.pt_regs*) #1

declare dso_local i64 @sign_extend_imm13(i32) #1

declare dso_local i64 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
