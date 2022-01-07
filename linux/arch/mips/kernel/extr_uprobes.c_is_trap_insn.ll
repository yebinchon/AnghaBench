; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_uprobes.c_is_trap_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_uprobes.c_is_trap_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_trap_insn(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %union.mips_instruction, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = bitcast %union.mips_instruction* %4 to i32*
  store i32 %6, i32* %7, align 4
  %8 = bitcast %union.mips_instruction* %4 to %struct.TYPE_4__*
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 140, label %11
    i32 142, label %17
  ]

11:                                               ; preds = %1
  %12 = bitcast %union.mips_instruction* %4 to %struct.TYPE_5__*
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 141, label %15
    i32 139, label %15
    i32 137, label %15
    i32 134, label %15
    i32 133, label %15
    i32 130, label %15
    i32 129, label %15
  ]

15:                                               ; preds = %11, %11, %11, %11, %11, %11, %11
  store i32 1, i32* %2, align 4
  br label %24

16:                                               ; preds = %11
  br label %23

17:                                               ; preds = %1
  %18 = bitcast %union.mips_instruction* %4 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %22 [
    i32 138, label %21
    i32 136, label %21
    i32 135, label %21
    i32 132, label %21
    i32 131, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %17, %17, %17, %17, %17, %17
  store i32 1, i32* %2, align 4
  br label %24

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %1, %22, %16
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
