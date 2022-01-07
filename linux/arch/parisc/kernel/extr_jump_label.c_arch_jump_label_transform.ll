; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_jump_label.c_arch_jump_label_transform.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_jump_label.c_arch_jump_label_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32 }

@JUMP_LABEL_JMP = common dso_local global i32 0, align 4
@INSN_NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_jump_label_transform(%struct.jump_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.jump_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.jump_entry* %0, %struct.jump_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %10 = call i64 @jump_entry_code(%struct.jump_entry* %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @JUMP_LABEL_JMP, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  %16 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %17 = call i64 @jump_entry_target(%struct.jump_entry* %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 8
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 262143
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, -262144
  br label %32

32:                                               ; preds = %29, %15
  %33 = phi i1 [ true, %15 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 2
  %38 = call i32 @reassemble_17(i32 %37)
  %39 = or i32 -402653182, %38
  store i32 %39, i32* %6, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @INSN_NOP, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @patch_text(i8* %43, i32 %44)
  ret void
}

declare dso_local i64 @jump_entry_code(%struct.jump_entry*) #1

declare dso_local i64 @jump_entry_target(%struct.jump_entry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reassemble_17(i32) #1

declare dso_local i32 @patch_text(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
