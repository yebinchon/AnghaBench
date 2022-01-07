; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_kgdb.c_do_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_kgdb.c_do_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@stepped_address = common dso_local global i32 0, align 4
@stepped_opcode = common dso_local global i32 0, align 4
@STEP_OPCODE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @do_single_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_single_step(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i16*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = call i16* @get_step_address(%struct.pt_regs* %4)
  store i16* %5, i16** %3, align 8
  %6 = load i16*, i16** %3, align 8
  %7 = ptrtoint i16* %6 to i32
  store i32 %7, i32* @stepped_address, align 4
  %8 = load i16*, i16** %3, align 8
  %9 = ptrtoint i16* %8 to i64
  %10 = call i32 @__raw_readw(i64 %9)
  store i32 %10, i32* @stepped_opcode, align 4
  %11 = load i16, i16* @STEP_OPCODE, align 2
  %12 = load i16*, i16** %3, align 8
  store i16 %11, i16* %12, align 2
  %13 = load i16*, i16** %3, align 8
  %14 = ptrtoint i16* %13 to i64
  %15 = load i16*, i16** %3, align 8
  %16 = ptrtoint i16* %15 to i64
  %17 = load i32, i32* @stepped_opcode, align 4
  %18 = call i64 @instruction_size(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @flush_icache_range(i64 %14, i64 %19)
  ret void
}

declare dso_local i16* @get_step_address(%struct.pt_regs*) #1

declare dso_local i32 @__raw_readw(i64) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i64 @instruction_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
