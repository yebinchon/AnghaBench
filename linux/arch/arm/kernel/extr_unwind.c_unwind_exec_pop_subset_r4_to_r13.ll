; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_exec_pop_subset_r4_to_r13.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_exec_pop_subset_r4_to_r13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_ctrl_block = type { i64* }

@SP = common dso_local global i64 0, align 8
@URC_FAILURE = common dso_local global i32 0, align 4
@URC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_ctrl_block*, i64)* @unwind_exec_pop_subset_r4_to_r13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_exec_pop_subset_r4_to_r13(%struct.unwind_ctrl_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unwind_ctrl_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.unwind_ctrl_block* %0, %struct.unwind_ctrl_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %10 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @SP, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %6, align 8
  store i32 4, i32* %8, align 4
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, 512
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %35, %2
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 1
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @unwind_pop_register(%struct.unwind_ctrl_block* %27, i64** %6, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @URC_FAILURE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i64, i64* %5, align 8
  %37 = lshr i64 %36, 1
  store i64 %37, i64* %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i64*, i64** %6, align 8
  %45 = ptrtoint i64* %44 to i64
  %46 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %47 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @SP, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %45, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* @URC_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %31
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @unwind_pop_register(%struct.unwind_ctrl_block*, i64**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
