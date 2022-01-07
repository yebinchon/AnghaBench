; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_skip_sstep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_uprobes.c_arch_uprobe_skip_sstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32 }
%struct.pt_regs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_skip_sstep(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %6 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %7 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 16777216
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 4
  store i32 %18, i32* %16, align 4
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
