; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_traps.c_do_trap_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_traps.c_do_trap_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32, i32, i64, i8*)* @do_trap_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_trap_error(%struct.pt_regs* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %12 = call i64 @user_mode(%struct.pt_regs* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @do_trap(%struct.pt_regs* %15, i32 %16, i32 %17, i64 %18)
  br label %29

20:                                               ; preds = %5
  %21 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %22 = call i32 @fixup_exception(%struct.pt_regs* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @die(%struct.pt_regs* %25, i8* %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28, %14
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @do_trap(%struct.pt_regs*, i32, i32, i64) #1

declare dso_local i32 @fixup_exception(%struct.pt_regs*) #1

declare dso_local i32 @die(%struct.pt_regs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
