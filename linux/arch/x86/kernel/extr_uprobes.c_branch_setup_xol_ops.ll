; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_branch_setup_xol_ops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_uprobes.c_branch_setup_xol_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_uprobe = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.insn = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@branch_xol_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_uprobe*, %struct.insn*)* @branch_setup_xol_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch_setup_xol_ops(%struct.arch_uprobe* %0, %struct.insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arch_uprobe*, align 8
  %5 = alloca %struct.insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.arch_uprobe* %0, %struct.arch_uprobe** %4, align 8
  store %struct.insn* %1, %struct.insn** %5, align 8
  %8 = load %struct.insn*, %struct.insn** %5, align 8
  %9 = call i32 @OPCODE1(%struct.insn* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %29 [
    i32 235, label %11
    i32 233, label %11
    i32 144, label %11
    i32 232, label %12
    i32 15, label %16
  ]

11:                                               ; preds = %2, %2, %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %14 = load %struct.insn*, %struct.insn** %5, align 8
  %15 = call i32 @branch_clear_offset(%struct.arch_uprobe* %13, %struct.insn* %14)
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.insn*, %struct.insn** %5, align 8
  %18 = getelementptr inbounds %struct.insn, %struct.insn* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %16
  %26 = load %struct.insn*, %struct.insn** %5, align 8
  %27 = call i32 @OPCODE2(%struct.insn* %26)
  %28 = sub nsw i32 %27, 16
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %2, %25
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @is_cond_jmp_opcode(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOSYS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %82

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %12, %11
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.insn*, %struct.insn** %5, align 8
  %41 = getelementptr inbounds %struct.insn, %struct.insn* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load %struct.insn*, %struct.insn** %5, align 8
  %47 = getelementptr inbounds %struct.insn, %struct.insn* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 102
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @ENOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %82

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %65 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.insn*, %struct.insn** %5, align 8
  %68 = getelementptr inbounds %struct.insn, %struct.insn* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %71 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load %struct.insn*, %struct.insn** %5, align 8
  %74 = getelementptr inbounds %struct.insn, %struct.insn* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %78 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.arch_uprobe*, %struct.arch_uprobe** %4, align 8
  %81 = getelementptr inbounds %struct.arch_uprobe, %struct.arch_uprobe* %80, i32 0, i32 0
  store i32* @branch_xol_ops, i32** %81, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %62, %55, %33, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @OPCODE1(%struct.insn*) #1

declare dso_local i32 @branch_clear_offset(%struct.arch_uprobe*, %struct.insn*) #1

declare dso_local i32 @OPCODE2(%struct.insn*) #1

declare dso_local i32 @is_cond_jmp_opcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
