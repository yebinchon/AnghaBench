; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_mips_process_maar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_mips_process_maar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS_MAAR_S = common dso_local global i32 0, align 4
@MIPS_MAAR_VL = common dso_local global i32 0, align 4
@PG_ELPA = common dso_local global i32 0, align 4
@cpu_guest_has_mvh = common dso_local global i64 0, align 8
@MIPS_MAAR_VH = common dso_local global i64 0, align 8
@mtc_op = common dso_local global i32 0, align 4
@dmtc_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @mips_process_maar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_process_maar(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @MIPS_MAAR_S, align 4
  %7 = or i32 -4096, %6
  %8 = load i32, i32* @MIPS_MAAR_VL, align 4
  %9 = or i32 %7, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = call i32 (...) @read_gc0_pagegrain()
  %12 = load i32, i32* @PG_ELPA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, 72057589742960640
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i64, i64* @cpu_guest_has_mvh, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* @MIPS_MAAR_VH, align 8
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @mtc_op, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* @MIPS_MAAR_VH, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %4, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %54

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @dmtc_op, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* @MIPS_MAAR_VH, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @MIPS_MAAR_VL, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %43, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i64, i64* @MIPS_MAAR_VH, align 8
  %50 = load i64, i64* %4, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %48, %38
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = and i64 %55, %56
  ret i64 %57
}

declare dso_local i32 @read_gc0_pagegrain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
