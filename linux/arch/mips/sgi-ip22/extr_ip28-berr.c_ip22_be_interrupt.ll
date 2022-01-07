; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip28-berr.c_ip22_be_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip28-berr.c_ip22_be_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@count_be_interrupt = common dso_local global i32 0, align 4
@MIPS_BE_DISCARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Oops\00", align 1
@SIGBUS = common dso_local global i32 0, align 4
@debug_be_interrupt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip22_be_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %4, %struct.pt_regs** %3, align 8
  %5 = load i32, i32* @count_be_interrupt, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @count_be_interrupt, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = call i64 @ip28_be_interrupt(%struct.pt_regs* %7)
  %9 = load i64, i64* @MIPS_BE_DISCARD, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = call i32 @die_if_kernel(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %12)
  %14 = load i32, i32* @SIGBUS, align 4
  %15 = call i32 @force_sig(i32 %14)
  br label %23

16:                                               ; preds = %1
  %17 = load i64, i64* @debug_be_interrupt, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = call i32 @show_regs(%struct.pt_regs* %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %11
  ret void
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i64 @ip28_be_interrupt(%struct.pt_regs*) #1

declare dso_local i32 @die_if_kernel(i8*, %struct.pt_regs*) #1

declare dso_local i32 @force_sig(i32) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
