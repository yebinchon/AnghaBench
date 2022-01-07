; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-int.c_corehi_irqdispatch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-int.c_corehi_irqdispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"CoreHI interrupt, shouldn't happen, we die here!\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"epc\09 : %08lx\0AStatus: %08lx\0ACause : %08lx\0AbadVaddr : %08lx\0A\00", align 1
@mips_revision_sconid = common dso_local global i32 0, align 4
@GT_INTRCAUSE_OFS = common dso_local global i32 0, align 4
@GT_CPUERR_ADDRLO_OFS = common dso_local global i32 0, align 4
@GT_CPUERR_ADDRHI_OFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"GT_INTRCAUSE = %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"GT_CPUERR_ADDR = %02x%08x\0A\00", align 1
@BONITO_PCIBADADDR = common dso_local global i32 0, align 4
@BONITO_PCIMSTAT = common dso_local global i32 0, align 4
@BONITO_INTISR = common dso_local global i32 0, align 4
@BONITO_INTEN = common dso_local global i32 0, align 4
@BONITO_INTPOL = common dso_local global i32 0, align 4
@BONITO_INTEDGE = common dso_local global i32 0, align 4
@BONITO_INTSTEER = common dso_local global i32 0, align 4
@BONITO_PCICMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"BONITO_INTISR = %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"BONITO_INTEN = %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BONITO_INTPOL = %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"BONITO_INTEDGE = %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"BONITO_INTSTEER = %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"BONITO_PCICMD = %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"BONITO_PCIBADADDR = %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"BONITO_PCIMSTAT = %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"CoreHi interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @corehi_irqdispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corehi_irqdispatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_regs*, align 8
  %13 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %13, %struct.pt_regs** %12, align 8
  %14 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26)
  %28 = load i32, i32* @mips_revision_sconid, align 4
  switch i32 %28, label %68 [
    i32 130, label %29
    i32 131, label %29
    i32 129, label %29
    i32 128, label %29
    i32 132, label %31
    i32 133, label %43
  ]

29:                                               ; preds = %0, %0, %0, %0
  %30 = call i32 (...) @ll_msc_irq()
  br label %68

31:                                               ; preds = %0
  %32 = load i32, i32* @GT_INTRCAUSE_OFS, align 4
  %33 = call i32 @GT_READ(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @GT_CPUERR_ADDRLO_OFS, align 4
  %35 = call i32 @GT_READ(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @GT_CPUERR_ADDRHI_OFS, align 4
  %37 = call i32 @GT_READ(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41)
  br label %68

43:                                               ; preds = %0
  %44 = load i32, i32* @BONITO_PCIBADADDR, align 4
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @BONITO_PCIMSTAT, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @BONITO_INTISR, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @BONITO_INTEN, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @BONITO_INTPOL, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @BONITO_INTEDGE, align 4
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @BONITO_INTSTEER, align 4
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @BONITO_PCICMD, align 4
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %0, %43, %31, %29
  %69 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %70 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), %struct.pt_regs* %69)
  ret void
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @pr_emerg(i8*, ...) #1

declare dso_local i32 @ll_msc_irq(...) #1

declare dso_local i32 @GT_READ(i32) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
