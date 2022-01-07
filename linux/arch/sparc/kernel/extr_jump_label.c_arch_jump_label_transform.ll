; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_jump_label.c_arch_jump_label_transform.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_jump_label.c_arch_jump_label_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i64, i64 }

@JUMP_LABEL_JMP = common dso_local global i32 0, align 4
@text_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_jump_label_transform(%struct.jump_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.jump_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jump_entry* %0, %struct.jump_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %10 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @JUMP_LABEL_JMP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %18 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %22 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %20, %24
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 3
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 2
  %34 = and i32 %33, 524287
  %35 = or i32 275251200, %34
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %16
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 8388607
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, -8388608
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 2
  %47 = and i32 %46, 4194303
  %48 = or i32 276824064, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %36, %31
  br label %51

50:                                               ; preds = %2
  store i32 16777216, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = call i32 @mutex_lock(i32* @text_mutex)
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @flushi(i32* %55)
  %57 = call i32 @mutex_unlock(i32* @text_mutex)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @flushi(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
