; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_jump_label.c___arch_jump_label_transform.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_jump_label.c___arch_jump_label_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32, i64 }

@JUMP_LABEL_JMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jump_entry*, i32, i32)* @__arch_jump_label_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__arch_jump_label_transform(%struct.jump_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jump_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.jump_entry* %0, %struct.jump_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %10 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @JUMP_LABEL_JMP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %18 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %21 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @arm_gen_branch(i64 %19, i32 %22)
  store i32 %23, i32* %8, align 4
  br label %26

24:                                               ; preds = %3
  %25 = call i32 (...) @arm_gen_nop()
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @__patch_text_early(i8* %30, i32 %31)
  br label %37

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @patch_text(i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @arm_gen_branch(i64, i32) #1

declare dso_local i32 @arm_gen_nop(...) #1

declare dso_local i32 @__patch_text_early(i8*, i32) #1

declare dso_local i32 @patch_text(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
