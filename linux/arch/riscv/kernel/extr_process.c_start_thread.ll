; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_process.c_start_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_process.c_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i32 }

@SR_SPIE = common dso_local global i32 0, align 4
@has_fpu = common dso_local global i64 0, align 8
@SR_FS_INITIAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@USER_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_thread(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @SR_SPIE, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load i64, i64* @has_fpu, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* @SR_FS_INITIAL, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @current, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = call i32 @fstate_restore(i32 %18, %struct.pt_regs* %19)
  br label %21

21:                                               ; preds = %12, %3
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @USER_DS, align 4
  %29 = call i32 @set_fs(i32 %28)
  ret void
}

declare dso_local i32 @fstate_restore(i32, %struct.pt_regs*) #1

declare dso_local i32 @set_fs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
