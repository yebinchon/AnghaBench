; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-r2-to-r6-emul.c_dclo_func.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_mips-r2-to-r6-emul.c_dclo_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }

@CONFIG_32BIT = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@bops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @dclo_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dclo_func(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @CONFIG_32BIT, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SIGILL, align 4
  store i32 %12, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @MIPSInst_RD(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %37

18:                                               ; preds = %13
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @MIPSInst_RS(i32 %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 asm sideeffect "dclo $0, $1", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %26) #2, !srcloc !2
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @MIPSInst_RD(i32 %32)
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* @bops, align 4
  %36 = call i32 @MIPS_R2_STATS(i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %18, %17, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @MIPSInst_RD(i32) #1

declare dso_local i64 @MIPSInst_RS(i32) #1

declare dso_local i32 @MIPS_R2_STATS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 611}
