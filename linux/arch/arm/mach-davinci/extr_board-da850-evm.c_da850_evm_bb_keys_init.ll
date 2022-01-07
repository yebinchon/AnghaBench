; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_bb_keys_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_bb_keys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_button = type { i32, i8*, i64 }

@da850_evm_bb_keys = common dso_local global %struct.gpio_keys_button* null, align 8
@da850_evm_bb_exp = common dso_local global i8** null, align 8
@DA850_EVM_BB_EXP_USER_PB1 = common dso_local global i64 0, align 8
@DA850_N_BB_USER_SW = common dso_local global i32 0, align 4
@SW_LID = common dso_local global i64 0, align 8
@DA850_EVM_BB_EXP_USER_SW1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @da850_evm_bb_keys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da850_evm_bb_keys_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_keys_button*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** @da850_evm_bb_keys, align 8
  %6 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %5, i64 0
  store %struct.gpio_keys_button* %6, %struct.gpio_keys_button** %4, align 8
  %7 = load i8**, i8*** @da850_evm_bb_exp, align 8
  %8 = load i64, i64* @DA850_EVM_BB_EXP_USER_PB1, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %12 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @DA850_EVM_BB_EXP_USER_PB1, align 8
  %16 = add i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %52, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DA850_N_BB_USER_SW, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** @da850_evm_bb_keys, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %25, i64 %28
  store %struct.gpio_keys_button* %29, %struct.gpio_keys_button** %4, align 8
  %30 = load i64, i64* @SW_LID, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i8**, i8*** @da850_evm_bb_exp, align 8
  %37 = load i32, i32* @DA850_EVM_BB_EXP_USER_SW1, align 4
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %44 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @DA850_EVM_BB_EXP_USER_SW1, align 4
  %47 = add i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %47, %48
  %50 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %51 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %24
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %20

55:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
