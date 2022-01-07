; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_isa.c_pci_isa_read_bar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_isa.c_pci_isa_read_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLCP_SOFT_COM = common dso_local global i32 0, align 4
@soft_bar_flag = common dso_local global i32* null, align 8
@bar_space_range = common dso_local global i32* null, align 8
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@divil_msr_reg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_isa_read_bar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @GLCP_SOFT_COM, align 4
  %7 = call i32 @GLCP_MSR_REG(i32 %6)
  %8 = call i32 @_rdmsr(i32 %7, i32* %4, i32* %5)
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** @soft_bar_flag, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load i32*, i32** @bar_space_range, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32*, i32** @soft_bar_flag, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @GLCP_SOFT_COM, align 4
  %34 = call i32 @GLCP_MSR_REG(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @_wrmsr(i32 %34, i32 %35, i32 %36)
  br label %56

38:                                               ; preds = %1
  %39 = load i32*, i32** @divil_msr_reg, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_rdmsr(i32 %43, i32* %4, i32* %5)
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** @bar_space_range, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %45, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, -3
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %38, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @GLCP_MSR_REG(i32) #1

declare dso_local i32 @_wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
