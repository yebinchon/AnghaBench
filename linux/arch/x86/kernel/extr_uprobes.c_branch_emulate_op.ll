; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_branch_emulate_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_branch_emulate_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pt_regs = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_uprobe*, %struct.pt_regs*)* @branch_emulate_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_emulate_op(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %9 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, %11
  store i64 %15, i64* %13, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %17 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %21 = call i64 @branch_is_call(%struct.arch_uprobe* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @emulate_push_stack(%struct.pt_regs* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %43

29:                                               ; preds = %23
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %33 = call i32 @check_jmp_cond(%struct.arch_uprobe* %31, %struct.pt_regs* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %38, %39
  %41 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @branch_is_call(%struct.arch_uprobe*) #1

declare dso_local i64 @emulate_push_stack(%struct.pt_regs*, i64) #1

declare dso_local i32 @check_jmp_cond(%struct.arch_uprobe*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
