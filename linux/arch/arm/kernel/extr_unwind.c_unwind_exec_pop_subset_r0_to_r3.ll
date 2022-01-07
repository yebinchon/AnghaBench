; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_exec_pop_subset_r0_to_r3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_exec_pop_subset_r0_to_r3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_ctrl_block = type { i64* }

@SP = common dso_local global i64 0, align 8
@URC_FAILURE = common dso_local global i32 0, align 4
@URC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_ctrl_block*, i64)* @unwind_exec_pop_subset_r0_to_r3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_exec_pop_subset_r0_to_r3(%struct.unwind_ctrl_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unwind_ctrl_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.unwind_ctrl_block* %0, %struct.unwind_ctrl_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %9 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @SP, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @unwind_pop_register(%struct.unwind_ctrl_block* %23, i64** %6, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @URC_FAILURE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i64, i64* %5, align 8
  %33 = lshr i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i64*, i64** %6, align 8
  %38 = ptrtoint i64* %37 to i64
  %39 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %40 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @SP, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %38, i64* %43, align 8
  %44 = load i32, i32* @URC_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @unwind_pop_register(%struct.unwind_ctrl_block*, i64**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
