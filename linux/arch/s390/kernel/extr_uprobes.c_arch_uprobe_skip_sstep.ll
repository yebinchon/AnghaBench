; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_arch_uprobe_skip_sstep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_uprobes.c_arch_uprobe_skip_sstep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32 }
%struct.pt_regs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@PSW_BITS_AMODE_24BIT = common dso_local global i64 0, align 8
@PSW_BITS_AMODE_31BIT = common dso_local global i64 0, align 8
@UPROBE_SWBP_INSN_SIZE = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@ILL_ILLADR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_skip_sstep(%struct.arch_uprobe* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @psw_bits(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PSW_BITS_AMODE_24BIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %32, label %18

18:                                               ; preds = %2
  %19 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @psw_bits(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PSW_BITS_AMODE_31BIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %18
  %30 = call i32 (...) @is_compat_task()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %29, %2
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  %35 = load i32, i32* @UPROBE_SWBP_INSN_SIZE, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__rewind_psw(i32 %37, i32 %35)
  %39 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %43 = load i32, i32* @SIGILL, align 4
  %44 = load i32, i32* @ILL_ILLADR, align 4
  %45 = call i32 @do_report_trap(%struct.pt_regs* %42, i32 %43, i32 %44, i32* null)
  store i32 1, i32* %3, align 4
  br label %57

46:                                               ; preds = %29, %18
  %47 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %48 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @probe_is_insn_relative_long(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %55 = call i32 @handle_insn_ril(%struct.arch_uprobe* %53, %struct.pt_regs* %54)
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @psw_bits(i32) #1

declare dso_local i32 @is_compat_task(...) #1

declare dso_local i32 @__rewind_psw(i32, i32) #1

declare dso_local i32 @do_report_trap(%struct.pt_regs*, i32, i32, i32*) #1

declare dso_local i64 @probe_is_insn_relative_long(i32) #1

declare dso_local i32 @handle_insn_ril(%struct.arch_uprobe*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
