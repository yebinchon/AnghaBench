; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_exec_pop_r4_to_rN.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_unwind.c_unwind_exec_pop_r4_to_rN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_ctrl_block = type { i64* }

@SP = common dso_local global i64 0, align 8
@URC_FAILURE = common dso_local global i32 0, align 4
@URC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_ctrl_block*, i64)* @unwind_exec_pop_r4_to_rN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_exec_pop_r4_to_rN(%struct.unwind_ctrl_block* %0, i64 %1) #0 {
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
  store i32 4, i32* %7, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, 7
  %20 = add i64 4, %19
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @unwind_pop_register(%struct.unwind_ctrl_block* %23, i64** %6, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @URC_FAILURE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %40 = call i64 @unwind_pop_register(%struct.unwind_ctrl_block* %39, i64** %6, i32 14)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @URC_FAILURE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i64*, i64** %6, align 8
  %48 = ptrtoint i64* %47 to i64
  %49 = load %struct.unwind_ctrl_block*, %struct.unwind_ctrl_block** %4, align 8
  %50 = getelementptr inbounds %struct.unwind_ctrl_block, %struct.unwind_ctrl_block* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @SP, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %48, i64* %53, align 8
  %54 = load i32, i32* @URC_OK, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %46, %42, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @unwind_pop_register(%struct.unwind_ctrl_block*, i64**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
