; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_mrs_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_mrs_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@SIGILL = common dso_local global i32 0, align 4
@ILL_ILLOPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pt_regs*)* @mrs_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrs_handler(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ESR_ELx_SYS64_ISS_RT(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @esr_sys64_to_sysreg(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @do_emulate_mrs(%struct.pt_regs* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @SIGILL, align 4
  %18 = load i32, i32* @ILL_ILLOPC, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @force_signal_inject(i32 %17, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @ESR_ELx_SYS64_ISS_RT(i32) #1

declare dso_local i32 @esr_sys64_to_sysreg(i32) #1

declare dso_local i64 @do_emulate_mrs(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @force_signal_inject(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
