; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_jump_insn_insert_tail.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_jump_insn_insert_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_info = type { %struct.jump_insn*, %struct.jump_insn* }
%struct.jump_insn = type { %struct.jump_insn* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_info*, %struct.jump_insn*)* @jump_insn_insert_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump_insn_insert_tail(%struct.func_info* %0, %struct.jump_insn* %1) #0 {
  %3 = alloca %struct.func_info*, align 8
  %4 = alloca %struct.jump_insn*, align 8
  store %struct.func_info* %0, %struct.func_info** %3, align 8
  store %struct.jump_insn* %1, %struct.jump_insn** %4, align 8
  %5 = load %struct.func_info*, %struct.func_info** %3, align 8
  %6 = getelementptr inbounds %struct.func_info, %struct.func_info* %5, i32 0, i32 1
  %7 = load %struct.jump_insn*, %struct.jump_insn** %6, align 8
  %8 = icmp ne %struct.jump_insn* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.jump_insn*, %struct.jump_insn** %4, align 8
  %11 = load %struct.func_info*, %struct.func_info** %3, align 8
  %12 = getelementptr inbounds %struct.func_info, %struct.func_info* %11, i32 0, i32 0
  store %struct.jump_insn* %10, %struct.jump_insn** %12, align 8
  %13 = load %struct.func_info*, %struct.func_info** %3, align 8
  %14 = getelementptr inbounds %struct.func_info, %struct.func_info* %13, i32 0, i32 1
  store %struct.jump_insn* %10, %struct.jump_insn** %14, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.jump_insn*, %struct.jump_insn** %4, align 8
  %17 = load %struct.func_info*, %struct.func_info** %3, align 8
  %18 = getelementptr inbounds %struct.func_info, %struct.func_info* %17, i32 0, i32 0
  %19 = load %struct.jump_insn*, %struct.jump_insn** %18, align 8
  %20 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %19, i32 0, i32 0
  store %struct.jump_insn* %16, %struct.jump_insn** %20, align 8
  %21 = load %struct.jump_insn*, %struct.jump_insn** %4, align 8
  %22 = load %struct.func_info*, %struct.func_info** %3, align 8
  %23 = getelementptr inbounds %struct.func_info, %struct.func_info* %22, i32 0, i32 0
  store %struct.jump_insn* %21, %struct.jump_insn** %23, align 8
  br label %24

24:                                               ; preds = %15, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
