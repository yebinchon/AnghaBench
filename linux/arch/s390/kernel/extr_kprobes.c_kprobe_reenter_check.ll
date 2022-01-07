; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_reenter_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_kprobe_reenter_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe_ctlblk = type { i32 }
%struct.kprobe = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid kprobe detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe_ctlblk*, %struct.kprobe*)* @kprobe_reenter_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kprobe_reenter_check(%struct.kprobe_ctlblk* %0, %struct.kprobe* %1) #0 {
  %3 = alloca %struct.kprobe_ctlblk*, align 8
  %4 = alloca %struct.kprobe*, align 8
  store %struct.kprobe_ctlblk* %0, %struct.kprobe_ctlblk** %3, align 8
  store %struct.kprobe* %1, %struct.kprobe** %4, align 8
  %5 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %3, align 8
  %6 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 129, label %8
    i32 131, label %8
    i32 130, label %11
    i32 128, label %11
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %10 = call i32 @kprobes_inc_nmissed_count(%struct.kprobe* %9)
  br label %17

11:                                               ; preds = %2, %2
  br label %12

12:                                               ; preds = %2, %11
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %15 = call i32 @dump_kprobe(%struct.kprobe* %14)
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @kprobes_inc_nmissed_count(%struct.kprobe*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dump_kprobe(%struct.kprobe*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
