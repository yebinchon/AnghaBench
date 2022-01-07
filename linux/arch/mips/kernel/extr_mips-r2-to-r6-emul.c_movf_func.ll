; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-r2-to-r6-emul.c_movf_func.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-r2-to-r6-emul.c_movf_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32* }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@fpucondbit = common dso_local global i32* null, align 8
@movs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @movf_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @movf_func(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** @fpucondbit, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MIPSInst_RT(i32 %13)
  %15 = ashr i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @MIPSInst_RD(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @MIPSInst_RS(i32 %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @MIPSInst_RD(i32 %38)
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %27, %23, %2
  %42 = load i32, i32* @movs, align 4
  %43 = call i32 @MIPS_R2_STATS(i32 %42)
  ret i32 0
}

declare dso_local i32 @MIPSInst_RT(i32) #1

declare dso_local i64 @MIPSInst_RD(i32) #1

declare dso_local i64 @MIPSInst_RS(i32) #1

declare dso_local i32 @MIPS_R2_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
