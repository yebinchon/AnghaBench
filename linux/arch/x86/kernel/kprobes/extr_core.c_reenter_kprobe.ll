; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_reenter_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_reenter_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32 }
%struct.pt_regs = type { i32 }
%struct.kprobe_ctlblk = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unrecoverable kprobe detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*)* @reenter_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reenter_kprobe(%struct.kprobe* %0, %struct.pt_regs* %1, %struct.kprobe_ctlblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kprobe*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.kprobe_ctlblk*, align 8
  store %struct.kprobe* %0, %struct.kprobe** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store %struct.kprobe_ctlblk* %2, %struct.kprobe_ctlblk** %7, align 8
  %8 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %9 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 129, label %11
    i32 131, label %11
    i32 130, label %11
    i32 128, label %18
  ]

11:                                               ; preds = %3, %3, %3
  %12 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %13 = call i32 @kprobes_inc_nmissed_count(%struct.kprobe* %12)
  %14 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %16 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %7, align 8
  %17 = call i32 @setup_singlestep(%struct.kprobe* %14, %struct.pt_regs* %15, %struct.kprobe_ctlblk* %16, i32 1)
  br label %25

18:                                               ; preds = %3
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %21 = call i32 @dump_kprobe(%struct.kprobe* %20)
  %22 = call i32 (...) @BUG()
  br label %23

23:                                               ; preds = %3, %18
  %24 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %26

25:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.kprobe*) #1

declare dso_local i32 @setup_singlestep(%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dump_kprobe(%struct.kprobe*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
