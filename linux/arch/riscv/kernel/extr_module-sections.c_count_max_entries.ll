; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module-sections.c_count_max_entries.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module-sections.c_count_max_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@R_RISCV_CALL_PLT = common dso_local global i32 0, align 4
@R_RISCV_GOT_HI20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*, i32*)* @count_max_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_max_entries(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %52, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ELF_RISCV_R_TYPE(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @R_RISCV_CALL_PLT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @duplicate_rela(%struct.TYPE_4__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %51

36:                                               ; preds = %15
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @R_RISCV_GOT_HI20, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @duplicate_rela(%struct.TYPE_4__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %11

55:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ELF_RISCV_R_TYPE(i32) #1

declare dso_local i32 @duplicate_rela(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
