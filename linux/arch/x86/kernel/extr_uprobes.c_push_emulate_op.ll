; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_push_emulate_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_push_emulate_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_uprobe*, %struct.pt_regs*)* @push_emulate_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_emulate_op(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64*, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %8 = bitcast %struct.pt_regs* %7 to i8*
  %9 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %10 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %8, i64 %13
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %6, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @emulate_push_stack(%struct.pt_regs* %16, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %24 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %22, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @emulate_push_stack(%struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
