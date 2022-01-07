; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_32.c_fetch_reg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_32.c_fetch_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }
%struct.reg_window32 = type { i64* }

@UREG_FP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, %struct.pt_regs*)* @fetch_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @fetch_reg_addr(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.reg_window32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  store i64* %15, i64** %3, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @UREG_FP, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.reg_window32*
  store %struct.reg_window32* %23, %struct.reg_window32** %6, align 8
  %24 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %25 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sub i32 %27, 16
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  store i64* %30, i64** %3, align 8
  br label %31

31:                                               ; preds = %16, %9
  %32 = load i64*, i64** %3, align 8
  ret i64* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
