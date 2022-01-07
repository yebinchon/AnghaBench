; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_gen_imm_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_gen_imm_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.jit_ctx = type { i32 }

@S16_MIN = common dso_local global i32 0, align 4
@S16_MAX = common dso_local global i32 0, align 4
@addiu = common dso_local global i32 0, align 4
@MIPS_R_ZERO = common dso_local global i32 0, align 4
@lui = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_insn*, i32, %struct.jit_ctx*)* @gen_imm_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_imm_to_reg(%struct.bpf_insn* %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca %struct.bpf_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_insn* %0, %struct.bpf_insn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %9 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @S16_MIN, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S16_MAX, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %22 = load i32, i32* @addiu, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MIPS_R_ZERO, align 4
  %25 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %26 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %21, i32 %22, i32 %23, i32 %24, i32 %27)
  br label %51

29:                                               ; preds = %14, %3
  %30 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %7, align 4
  %34 = load %struct.bpf_insn*, %struct.bpf_insn** %4, align 8
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %40 = load i32, i32* @lui, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 16
  %44 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %39, i32 %40, i32 %41, i32 %43)
  %45 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %46 = load i32, i32* @addiu, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (%struct.jit_ctx*, i32, i32, i32, ...) @emit_instr(%struct.jit_ctx* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %29, %20
  ret void
}

declare dso_local i32 @emit_instr(%struct.jit_ctx*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
