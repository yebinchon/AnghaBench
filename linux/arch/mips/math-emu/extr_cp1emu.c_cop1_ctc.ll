; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_cp1emu.c_cop1_ctc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_cp1emu.c_cop1_ctc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32*, i64 }
%struct.mips_fpu_struct = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%p gpr[%d]->csr=%08x\0A\00", align 1
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cpu_has_mips_r = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%p gpr[%d]->enr=%08x\0A\00", align 1
@FPU_CSR_FS = common dso_local global i32 0, align 4
@FPU_CSR_ALL_E = common dso_local global i32 0, align 4
@FPU_CSR_RM = common dso_local global i32 0, align 4
@FPU_CSR_FS_S = common dso_local global i32 0, align 4
@MIPS_FENR_FS_S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%p gpr[%d]->exr=%08x\0A\00", align 1
@FPU_CSR_ALL_X = common dso_local global i32 0, align 4
@FPU_CSR_ALL_S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%p gpr[%d]->ccr=%08x\0A\00", align 1
@FPU_CSR_CONDX = common dso_local global i32 0, align 4
@FPU_CSR_COND = common dso_local global i32 0, align 4
@FPU_CSR_COND_S = common dso_local global i32 0, align 4
@MIPS_FCCR_COND0_S = common dso_local global i32 0, align 4
@FPU_CSR_COND1_S = common dso_local global i32 0, align 4
@MIPS_FCCR_COND1_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.mips_fpu_struct*, i32)* @cop1_ctc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cop1_ctc(%struct.pt_regs* %0, %struct.mips_fpu_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.mips_fpu_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.mips_fpu_struct* %1, %struct.mips_fpu_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %5, align 8
  %11 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @MIPSInst_RT(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @MIPSInst_RT(i32 %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @MIPSInst_RD(i32 %26)
  switch i32 %27, label %146 [
    i32 131, label %28
    i32 129, label %46
    i32 128, label %83
    i32 130, label %109
  ]

28:                                               ; preds = %25
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @MIPSInst_RT(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %32, i64 %34, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %41, %44
  store i32 %45, i32* %7, align 4
  br label %147

46:                                               ; preds = %25
  %47 = load i32, i32* @cpu_has_mips_r, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %147

50:                                               ; preds = %46
  %51 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @MIPSInst_RT(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %54, i64 %56, i32 %57)
  %59 = load i32, i32* @FPU_CSR_FS, align 4
  %60 = load i32, i32* @FPU_CSR_ALL_E, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FPU_CSR_RM, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @FPU_CSR_FS_S, align 4
  %69 = load i32, i32* @MIPS_FENR_FS_S, align 4
  %70 = sub nsw i32 %68, %69
  %71 = shl i32 %67, %70
  %72 = load i32, i32* @FPU_CSR_FS, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @FPU_CSR_ALL_E, align 4
  %78 = load i32, i32* @FPU_CSR_RM, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %147

83:                                               ; preds = %25
  %84 = load i32, i32* @cpu_has_mips_r, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %147

87:                                               ; preds = %83
  %88 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @MIPSInst_RT(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %91, i64 %93, i32 %94)
  %96 = load i32, i32* @FPU_CSR_ALL_X, align 4
  %97 = load i32, i32* @FPU_CSR_ALL_S, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @FPU_CSR_ALL_X, align 4
  %104 = load i32, i32* @FPU_CSR_ALL_S, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %147

109:                                              ; preds = %25
  %110 = load i32, i32* @cpu_has_mips_r, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %147

113:                                              ; preds = %109
  %114 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %115 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @MIPSInst_RT(i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %117, i64 %119, i32 %120)
  %122 = load i32, i32* @FPU_CSR_CONDX, align 4
  %123 = load i32, i32* @FPU_CSR_COND, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @FPU_CSR_COND_S, align 4
  %130 = load i32, i32* @MIPS_FCCR_COND0_S, align 4
  %131 = sub nsw i32 %129, %130
  %132 = shl i32 %128, %131
  %133 = load i32, i32* @FPU_CSR_COND, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @FPU_CSR_COND1_S, align 4
  %139 = load i32, i32* @MIPS_FCCR_COND1_S, align 4
  %140 = sub nsw i32 %138, %139
  %141 = shl i32 %137, %140
  %142 = load i32, i32* @FPU_CSR_CONDX, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %7, align 4
  br label %147

146:                                              ; preds = %25
  br label %147

147:                                              ; preds = %146, %113, %112, %87, %86, %50, %49, %28
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %5, align 8
  %150 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  ret void
}

declare dso_local i64 @MIPSInst_RT(i32) #1

declare dso_local i32 @MIPSInst_RD(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
