; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_exception_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_exception_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Exception in kernel mode\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pt_regs*, i32, i64)* @exception_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exception_common(i32 %0, %struct.pt_regs* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %11 = call i32 @user_mode(%struct.pt_regs* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %39

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @show_signal_msg(i32 %18, %struct.pt_regs* %19, i32 %20, i64 %21)
  %23 = call i64 (...) @arch_irqs_disabled()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %27 = call i32 @arch_irq_disabled_regs(%struct.pt_regs* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 (...) @local_irq_enable()
  br label %31

31:                                               ; preds = %29, %25, %17
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @thread_pkey_regs_save(%struct.TYPE_3__* %37)
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %13
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

declare dso_local i32 @show_signal_msg(i32, %struct.pt_regs*, i32, i64) #1

declare dso_local i64 @arch_irqs_disabled(...) #1

declare dso_local i32 @arch_irq_disabled_regs(%struct.pt_regs*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @thread_pkey_regs_save(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
