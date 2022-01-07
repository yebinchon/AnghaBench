; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_cs.c_bcm63xx_set_cs_param.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_cs.c_bcm63xx_set_cs_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@MPI_CS_PCMCIA_COMMON = common dso_local global i32 0, align 4
@MPI_CS_PCMCIA_ATTR = common dso_local global i32 0, align 4
@MPI_CS_PCMCIA_IO = common dso_local global i32 0, align 4
@bcm63xx_cs_lock = common dso_local global i32 0, align 4
@MPI_CSCTL_DATA16_MASK = common dso_local global i32 0, align 4
@MPI_CSCTL_SYNCMODE_MASK = common dso_local global i32 0, align 4
@MPI_CSCTL_TSIZE_MASK = common dso_local global i32 0, align 4
@MPI_CSCTL_ENDIANSWAP_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm63xx_set_cs_param(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @is_valid_cs(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MPI_CS_PCMCIA_COMMON, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MPI_CS_PCMCIA_ATTR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MPI_CS_PCMCIA_IO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18, %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* @bcm63xx_cs_lock, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @MPI_CSCTL_REG(i32 %32)
  %34 = call i32 @bcm_mpi_readl(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @MPI_CSCTL_DATA16_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @MPI_CSCTL_SYNCMODE_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @MPI_CSCTL_TSIZE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @MPI_CSCTL_ENDIANSWAP_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @MPI_CSCTL_REG(i32 %55)
  %57 = call i32 @bcm_mpi_writel(i32 %54, i32 %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @bcm63xx_cs_lock, i64 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %29, %26, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @is_valid_cs(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcm_mpi_readl(i32) #1

declare dso_local i32 @MPI_CSCTL_REG(i32) #1

declare dso_local i32 @bcm_mpi_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
