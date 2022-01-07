; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_cp1emu.c_cop1_cfc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_cp1emu.c_cop1_cfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32*, i64 }
%struct.mips_fpu_struct = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%p gpr[%d]<-csr=%08x\0A\00", align 1
@cpu_has_mips_r = common dso_local global i32 0, align 4
@FPU_CSR_FS_S = common dso_local global i32 0, align 4
@MIPS_FENR_FS_S = common dso_local global i32 0, align 4
@MIPS_FENR_FS = common dso_local global i32 0, align 4
@FPU_CSR_ALL_E = common dso_local global i32 0, align 4
@FPU_CSR_RM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%p gpr[%d]<-enr=%08x\0A\00", align 1
@FPU_CSR_ALL_X = common dso_local global i32 0, align 4
@FPU_CSR_ALL_S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%p gpr[%d]<-exr=%08x\0A\00", align 1
@FPU_CSR_COND_S = common dso_local global i32 0, align 4
@MIPS_FCCR_COND0_S = common dso_local global i32 0, align 4
@MIPS_FCCR_COND0 = common dso_local global i32 0, align 4
@FPU_CSR_COND1_S = common dso_local global i32 0, align 4
@MIPS_FCCR_COND1_S = common dso_local global i32 0, align 4
@MIPS_FCCR_CONDX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%p gpr[%d]<-ccr=%08x\0A\00", align 1
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.mips_fpu_struct*, i32)* @cop1_cfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cop1_cfc(%struct.pt_regs* %0, %struct.mips_fpu_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.mips_fpu_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.mips_fpu_struct* %1, %struct.mips_fpu_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %5, align 8
  %10 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @MIPSInst_RD(i32 %12)
  switch i32 %13, label %103 [
    i32 132, label %14
    i32 130, label %24
    i32 129, label %51
    i32 131, label %69
    i32 128, label %101
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @MIPSInst_RT(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %21, i32 %22)
  br label %104

24:                                               ; preds = %3
  %25 = load i32, i32* @cpu_has_mips_r, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %104

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FPU_CSR_FS_S, align 4
  %31 = load i32, i32* @MIPS_FENR_FS_S, align 4
  %32 = sub nsw i32 %30, %31
  %33 = ashr i32 %29, %32
  %34 = load i32, i32* @MIPS_FENR_FS, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FPU_CSR_ALL_E, align 4
  %38 = load i32, i32* @FPU_CSR_RM, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @MIPSInst_RT(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %46, i64 %48, i32 %49)
  br label %104

51:                                               ; preds = %3
  %52 = load i32, i32* @cpu_has_mips_r, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %104

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @FPU_CSR_ALL_X, align 4
  %58 = load i32, i32* @FPU_CSR_ALL_S, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @MIPSInst_RT(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %64, i64 %66, i32 %67)
  br label %104

69:                                               ; preds = %3
  %70 = load i32, i32* @cpu_has_mips_r, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %104

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @FPU_CSR_COND_S, align 4
  %76 = load i32, i32* @MIPS_FCCR_COND0_S, align 4
  %77 = sub nsw i32 %75, %76
  %78 = ashr i32 %74, %77
  %79 = load i32, i32* @MIPS_FCCR_COND0, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @FPU_CSR_COND1_S, align 4
  %83 = load i32, i32* @MIPS_FCCR_COND1_S, align 4
  %84 = sub nsw i32 %82, %83
  %85 = ashr i32 %81, %84
  %86 = load i32, i32* @MIPS_FCCR_CONDX, align 4
  %87 = load i32, i32* @MIPS_FCCR_COND0, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = and i32 %85, %89
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @MIPSInst_RT(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %96, i64 %98, i32 %99)
  br label %104

101:                                              ; preds = %3
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %102, i32* %8, align 4
  br label %104

103:                                              ; preds = %3
  br label %104

104:                                              ; preds = %103, %101, %73, %72, %55, %54, %28, %27, %14
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @MIPSInst_RT(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @MIPSInst_RT(i32 %113)
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %104
  ret void
}

declare dso_local i32 @MIPSInst_RD(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i64, i32) #1

declare dso_local i64 @MIPSInst_RT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
