; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_process.c_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_process.c_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i32, i32, i32, i64 }

@STATUS_U_MASK = common dso_local global i32 0, align 4
@STATUS_L_MASK = common dso_local global i32 0, align 4
@ISA_INIT_STATUS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_thread(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* @STATUS_U_MASK, align 4
  %14 = load i32, i32* @STATUS_L_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ISA_INIT_STATUS_BITS, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 3
  store i32 16, i32* %21, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 4
  store i32 128, i32* %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
