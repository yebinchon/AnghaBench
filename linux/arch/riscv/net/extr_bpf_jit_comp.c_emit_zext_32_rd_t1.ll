; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_emit_zext_32_rd_t1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_emit_zext_32_rd_t1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rv_jit_context = type { i32 }

@RV_REG_T2 = common dso_local global i32 0, align 4
@RV_REG_T1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rv_jit_context*)* @emit_zext_32_rd_t1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_zext_32_rd_t1(i32* %0, %struct.rv_jit_context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rv_jit_context*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rv_jit_context* %1, %struct.rv_jit_context** %4, align 8
  %5 = load i32, i32* @RV_REG_T2, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @rv_addi(i32 %5, i32 %7, i32 0)
  %9 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %10 = call i32 @emit(i32 %8, %struct.rv_jit_context* %9)
  %11 = load i32, i32* @RV_REG_T2, align 4
  %12 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %13 = call i32 @emit_zext_32(i32 %11, %struct.rv_jit_context* %12)
  %14 = load i32, i32* @RV_REG_T1, align 4
  %15 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %16 = call i32 @emit_zext_32(i32 %14, %struct.rv_jit_context* %15)
  %17 = load i32, i32* @RV_REG_T2, align 4
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  ret void
}

declare dso_local i32 @emit(i32, %struct.rv_jit_context*) #1

declare dso_local i32 @rv_addi(i32, i32, i32) #1

declare dso_local i32 @emit_zext_32(i32, %struct.rv_jit_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
