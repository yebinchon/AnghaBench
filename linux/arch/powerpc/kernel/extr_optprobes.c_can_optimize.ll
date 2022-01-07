; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_can_optimize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_can_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.pt_regs = type { i64, i32, i32 }
%struct.instruction_op = type { i32 }

@kretprobe_trampoline = common dso_local global i32 0, align 4
@MSR_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kprobe*)* @can_optimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @can_optimize(%struct.kprobe* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.pt_regs, align 8
  %5 = alloca %struct.instruction_op, align 4
  %6 = alloca i64, align 8
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %8 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @kretprobe_trampoline
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %13 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = add i64 %15, 4
  store i64 %16, i64* %2, align 8
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %19 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call i32 @is_kernel_addr(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i64 0, i64* %2, align 8
  br label %56

25:                                               ; preds = %17
  %26 = call i32 @memset(%struct.pt_regs* %4, i32 0, i32 16)
  %27 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %28 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @MSR_KERNEL, align 4
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %36 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @is_conditional_branch(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %25
  %43 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %44 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @analyse_instr(%struct.instruction_op* %5, %struct.pt_regs* %4, i32 %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = call i32 @emulate_update_regs(%struct.pt_regs* %4, %struct.instruction_op* %5)
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %50, %42, %25
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %54, %24, %11
  %57 = load i64, i64* %2, align 8
  ret i64 %57
}

declare dso_local i32 @is_kernel_addr(i64) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @is_conditional_branch(i32) #1

declare dso_local i32 @analyse_instr(%struct.instruction_op*, %struct.pt_regs*, i32) #1

declare dso_local i32 @emulate_update_regs(%struct.pt_regs*, %struct.instruction_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
