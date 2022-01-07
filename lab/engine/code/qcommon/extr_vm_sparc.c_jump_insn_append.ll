; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_jump_insn_append.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_sparc.c_jump_insn_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.func_info = type { i32 }
%struct.jump_insn = type { i32, i32, i32*, %struct.dst_insn* }
%struct.dst_insn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.func_info*, i32, i32)* @jump_insn_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump_insn_append(%struct.TYPE_3__* %0, %struct.func_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.func_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jump_insn*, align 8
  %10 = alloca %struct.dst_insn*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.func_info* %1, %struct.func_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call %struct.jump_insn* @Z_Malloc(i32 24)
  store %struct.jump_insn* %11, %struct.jump_insn** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %4
  %21 = call i32 (...) @ErrJump()
  br label %22

22:                                               ; preds = %20, %14
  %23 = load %struct.func_info*, %struct.func_info** %6, align 8
  %24 = load %struct.jump_insn*, %struct.jump_insn** %9, align 8
  %25 = call %struct.dst_insn* @dst_new(%struct.func_info* %23, i32 2, %struct.jump_insn* %24, i32 0)
  store %struct.dst_insn* %25, %struct.dst_insn** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.jump_insn*, %struct.jump_insn** %9, align 8
  %28 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.jump_insn*, %struct.jump_insn** %9, align 8
  %31 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dst_insn*, %struct.dst_insn** %10, align 8
  %33 = load %struct.jump_insn*, %struct.jump_insn** %9, align 8
  %34 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %33, i32 0, i32 3
  store %struct.dst_insn* %32, %struct.dst_insn** %34, align 8
  %35 = load %struct.jump_insn*, %struct.jump_insn** %9, align 8
  %36 = getelementptr inbounds %struct.jump_insn, %struct.jump_insn* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.func_info*, %struct.func_info** %6, align 8
  %38 = load %struct.jump_insn*, %struct.jump_insn** %9, align 8
  %39 = call i32 @jump_insn_insert_tail(%struct.func_info* %37, %struct.jump_insn* %38)
  %40 = load %struct.func_info*, %struct.func_info** %6, align 8
  %41 = load %struct.dst_insn*, %struct.dst_insn** %10, align 8
  %42 = call i32 @dst_insn_insert_tail(%struct.func_info* %40, %struct.dst_insn* %41)
  ret void
}

declare dso_local %struct.jump_insn* @Z_Malloc(i32) #1

declare dso_local i32 @ErrJump(...) #1

declare dso_local %struct.dst_insn* @dst_new(%struct.func_info*, i32, %struct.jump_insn*, i32) #1

declare dso_local i32 @jump_insn_insert_tail(%struct.func_info*, %struct.jump_insn*) #1

declare dso_local i32 @dst_insn_insert_tail(%struct.func_info*, %struct.dst_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
