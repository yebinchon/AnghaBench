; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_mov_i_no8m.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_mov_i_no8m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@ARM_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.jit_ctx*)* @emit_mov_i_no8m to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mov_i_no8m(i32 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @ARM_PC, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %11 = call i32 @imm_offset(i32 %9, %struct.jit_ctx* %10)
  %12 = call i32 @ARM_LDR_I(i32 %7, i32 %8, i32 %11)
  %13 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %14 = call i32 @emit(i32 %12, %struct.jit_ctx* %13)
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_LDR_I(i32, i32, i32) #1

declare dso_local i32 @imm_offset(i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
