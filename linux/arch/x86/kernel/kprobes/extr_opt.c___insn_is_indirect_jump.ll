; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c___insn_is_indirect_jump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c___insn_is_indirect_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*)* @__insn_is_indirect_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__insn_is_indirect_jump(%struct.insn* %0) #0 {
  %2 = alloca %struct.insn*, align 8
  store %struct.insn* %0, %struct.insn** %2, align 8
  %3 = load %struct.insn*, %struct.insn** %2, align 8
  %4 = getelementptr inbounds %struct.insn, %struct.insn* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.insn*, %struct.insn** %2, align 8
  %12 = getelementptr inbounds %struct.insn, %struct.insn* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @X86_MODRM_REG(i32 %14)
  %16 = and i32 %15, 6
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %26, label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.insn*, %struct.insn** %2, align 8
  %20 = getelementptr inbounds %struct.insn, %struct.insn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 234
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi i1 [ true, %10 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @X86_MODRM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
