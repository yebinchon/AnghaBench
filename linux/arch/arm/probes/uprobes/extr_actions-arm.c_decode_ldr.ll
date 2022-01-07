; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_decode_ldr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_actions-arm.c_decode_ldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_probes_insn = type { i32 }
%struct.decode_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_ldr(i32 %0, %struct.arch_probes_insn* %1, %struct.decode_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_probes_insn*, align 8
  %6 = alloca %struct.decode_header*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.arch_probes_insn* %1, %struct.arch_probes_insn** %5, align 8
  store %struct.decode_header* %2, %struct.decode_header** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.arch_probes_insn*, %struct.arch_probes_insn** %5, align 8
  %9 = load %struct.decode_header*, %struct.decode_header** %6, align 8
  %10 = call i32 @decode_wb_pc(i32 %7, %struct.arch_probes_insn* %8, %struct.decode_header* %9, i32 0)
  ret i32 %10
}

declare dso_local i32 @decode_wb_pc(i32, %struct.arch_probes_insn*, %struct.decode_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
