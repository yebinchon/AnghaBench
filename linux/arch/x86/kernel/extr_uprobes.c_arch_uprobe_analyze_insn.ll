; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_arch_uprobe_analyze_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_arch_uprobe_analyze_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mm_struct = type { i32 }
%struct.insn = type { i32 }

@UPROBE_FIX_IP = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@UPROBE_FIX_SETF = common dso_local global i32 0, align 4
@UPROBE_FIX_CALL = common dso_local global i32 0, align 4
@default_xol_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uprobe_analyze_insn(%struct.arch_uprobe* %0, %struct.mm_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_uprobe*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.insn, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %5, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @UPROBE_FIX_IP, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = call i32 @is_64bit_mm(%struct.mm_struct* %13)
  %15 = call i32 @uprobe_init_insn(%struct.arch_uprobe* %12, %struct.insn* %8, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %22 = call i32 @branch_setup_xol_ops(%struct.arch_uprobe* %21, %struct.insn* %8)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %20
  %30 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %31 = call i32 @push_setup_xol_ops(%struct.arch_uprobe* %30, %struct.insn* %8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %29
  %39 = call i32 @OPCODE1(%struct.insn* %8)
  switch i32 %39, label %56 [
    i32 157, label %40
    i32 195, label %47
    i32 203, label %47
    i32 194, label %47
    i32 202, label %47
    i32 234, label %47
    i32 154, label %48
    i32 255, label %50
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @UPROBE_FIX_SETF, align 4
  %42 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %43 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %59

47:                                               ; preds = %38, %38, %38, %38, %38
  store i32 0, i32* %9, align 4
  br label %59

48:                                               ; preds = %38
  %49 = load i32, i32* @UPROBE_FIX_CALL, align 4
  store i32 %49, i32* %9, align 4
  br label %59

50:                                               ; preds = %38
  %51 = call i32 @MODRM_REG(%struct.insn* %8)
  switch i32 %51, label %55 [
    i32 2, label %52
    i32 3, label %52
    i32 4, label %54
    i32 5, label %54
  ]

52:                                               ; preds = %50, %50
  %53 = load i32, i32* @UPROBE_FIX_CALL, align 4
  store i32 %53, i32* %9, align 4
  br label %55

54:                                               ; preds = %50, %50
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %54, %52
  br label %56

56:                                               ; preds = %38, %55
  %57 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %58 = call i32 @riprel_analyze(%struct.arch_uprobe* %57, %struct.insn* %8)
  br label %59

59:                                               ; preds = %56, %48, %47, %40
  %60 = getelementptr inbounds %struct.insn, %struct.insn* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %63 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %67 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 8
  %71 = load %struct.arch_uprobe*, %struct.arch_uprobe** %5, align 8
  %72 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %71, i32 0, i32 0
  store i32* @default_xol_ops, i32** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %59, %36, %27, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @uprobe_init_insn(%struct.arch_uprobe*, %struct.insn*, i32) #1

declare dso_local i32 @is_64bit_mm(%struct.mm_struct*) #1

declare dso_local i32 @branch_setup_xol_ops(%struct.arch_uprobe*, %struct.insn*) #1

declare dso_local i32 @push_setup_xol_ops(%struct.arch_uprobe*, %struct.insn*) #1

declare dso_local i32 @OPCODE1(%struct.insn*) #1

declare dso_local i32 @MODRM_REG(%struct.insn*) #1

declare dso_local i32 @riprel_analyze(%struct.arch_uprobe*, %struct.insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
