; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_push_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kprobes.c_push_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe_ctlblk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kprobe = type { i32 }

@current_kprobe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe_ctlblk*, %struct.kprobe*)* @push_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_kprobe(%struct.kprobe_ctlblk* %0, %struct.kprobe* %1) #0 {
  %3 = alloca %struct.kprobe_ctlblk*, align 8
  %4 = alloca %struct.kprobe*, align 8
  store %struct.kprobe_ctlblk* %0, %struct.kprobe_ctlblk** %3, align 8
  store %struct.kprobe* %1, %struct.kprobe** %4, align 8
  %5 = load i32, i32* @current_kprobe, align 4
  %6 = call i32 @__this_cpu_read(i32 %5)
  %7 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %3, align 8
  %8 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 4
  %10 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %3, align 8
  %11 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %3, align 8
  %14 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @current_kprobe, align 4
  %17 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %18 = call i32 @__this_cpu_write(i32 %16, %struct.kprobe* %17)
  ret void
}

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
