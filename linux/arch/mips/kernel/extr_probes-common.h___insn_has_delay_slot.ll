; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_probes-common.h___insn_has_delay_slot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_probes-common.h___insn_has_delay_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__insn_has_delay_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__insn_has_delay_slot(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.mips_instruction, align 4
  %4 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %3, i32 0, i32 0
  %5 = bitcast %struct.TYPE_4__* %4 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %union.mips_instruction* %3 to %struct.TYPE_4__*
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %23 [
    i32 129, label %9
    i32 155, label %15
    i32 135, label %21
    i32 136, label %21
    i32 154, label %21
    i32 153, label %21
    i32 140, label %21
    i32 139, label %21
    i32 146, label %21
    i32 145, label %21
    i32 148, label %21
    i32 147, label %21
    i32 137, label %22
  ]

9:                                                ; preds = %1
  %10 = bitcast %union.mips_instruction* %3 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %14 [
    i32 134, label %13
    i32 133, label %13
  ]

13:                                               ; preds = %9, %9
  store i32 1, i32* %2, align 4
  br label %24

14:                                               ; preds = %9
  br label %23

15:                                               ; preds = %1
  %16 = bitcast %union.mips_instruction* %3 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %20 [
    i32 144, label %19
    i32 141, label %19
    i32 152, label %19
    i32 149, label %19
    i32 143, label %19
    i32 142, label %19
    i32 151, label %19
    i32 150, label %19
    i32 138, label %19
  ]

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15
  store i32 1, i32* %2, align 4
  br label %24

20:                                               ; preds = %15
  br label %23

21:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %24

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

23:                                               ; preds = %1, %20, %14
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %21, %19, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
