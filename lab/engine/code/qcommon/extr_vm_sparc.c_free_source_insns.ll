; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_free_source_insns.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_free_source_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.src_insn* }
%struct.src_insn = type { %struct.src_insn* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_info*)* @free_source_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_source_insns(%struct.func_info* %0) #0 {
  %2 = alloca %struct.func_info*, align 8
  %3 = alloca %struct.src_insn*, align 8
  %4 = alloca %struct.src_insn*, align 8
  store %struct.func_info* %0, %struct.func_info** %2, align 8
  %5 = load %struct.func_info*, %struct.func_info** %2, align 8
  %6 = getelementptr inbounds %struct.func_info, %struct.func_info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.src_insn*, %struct.src_insn** %8, align 8
  store %struct.src_insn* %9, %struct.src_insn** %3, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.src_insn*, %struct.src_insn** %3, align 8
  %12 = icmp ne %struct.src_insn* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.src_insn*, %struct.src_insn** %3, align 8
  %15 = getelementptr inbounds %struct.src_insn, %struct.src_insn* %14, i32 0, i32 0
  %16 = load %struct.src_insn*, %struct.src_insn** %15, align 8
  store %struct.src_insn* %16, %struct.src_insn** %4, align 8
  %17 = load %struct.src_insn*, %struct.src_insn** %3, align 8
  %18 = call i32 @Z_Free(%struct.src_insn* %17)
  %19 = load %struct.src_insn*, %struct.src_insn** %4, align 8
  store %struct.src_insn* %19, %struct.src_insn** %3, align 8
  br label %10

20:                                               ; preds = %10
  ret void
}

declare dso_local i32 @Z_Free(%struct.src_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
