; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_jump_label.c_arch_jump_label_transform.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_jump_label.c_arch_jump_label_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32 }

@J_SIGN_MASK = common dso_local global i32 0, align 4
@JUMP_LABEL_JMP = common dso_local global i32 0, align 4
@NOP_INSN = common dso_local global i32 0, align 4
@JUMP_LABEL_NOP_SIZE = common dso_local global i32 0, align 4
@J_INSN = common dso_local global i32 0, align 4
@J_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_jump_label_transform(%struct.jump_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.jump_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jump_entry* %0, %struct.jump_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %8 = call i32 @jump_entry_target(%struct.jump_entry* %7)
  %9 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %10 = call i32 @jump_entry_code(%struct.jump_entry* %9)
  %11 = add nsw i32 %10, 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @J_SIGN_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @J_SIGN_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @J_SIGN_MASK, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i1 [ true, %2 ], [ %22, %17 ]
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @JUMP_LABEL_JMP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @NOP_INSN, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %36 = call i32 @jump_entry_code(%struct.jump_entry* %35)
  %37 = load i32, i32* @JUMP_LABEL_NOP_SIZE, align 4
  %38 = call i32 @patch_text(i32 %36, i32* %6, i32 %37)
  ret void
}

declare dso_local i32 @jump_entry_target(%struct.jump_entry*) #1

declare dso_local i32 @jump_entry_code(%struct.jump_entry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @patch_text(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
