; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_emulate_popcntb_inst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_emulate_popcntb_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @emulate_popcntb_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_popcntb_inst(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 16
  %10 = and i32 %9, 31
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 21
  %13 = and i32 %12, 31
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = lshr i64 %22, 1
  %24 = and i64 %23, 6148914691236517205
  %25 = sub i64 %21, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = and i64 %26, 3689348814741910323
  %28 = load i64, i64* %7, align 8
  %29 = lshr i64 %28, 2
  %30 = and i64 %29, 3689348814741910323
  %31 = add i64 %27, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = lshr i64 %33, 4
  %35 = add i64 %32, %34
  %36 = and i64 %35, 1085102592571150095
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %37, i64* %43, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
