; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_ui_keys_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_ui_keys_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_button = type { i32, i32, i64 }

@DA850_N_UI_PB = common dso_local global i32 0, align 4
@da850_evm_ui_keys = common dso_local global %struct.gpio_keys_button* null, align 8
@KEY_F8 = common dso_local global i64 0, align 8
@da850_evm_ui_exp = common dso_local global i32* null, align 8
@DA850_EVM_UI_EXP_PB8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @da850_evm_ui_keys_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da850_evm_ui_keys_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_keys_button*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @DA850_N_UI_PB, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** @da850_evm_ui_keys, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %10, i64 %12
  store %struct.gpio_keys_button* %13, %struct.gpio_keys_button** %4, align 8
  %14 = load i64, i64* @KEY_F8, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load i32*, i32** @da850_evm_ui_exp, align 8
  %21 = load i32, i32* @DA850_EVM_UI_EXP_PB8, align 4
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %28 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @DA850_EVM_UI_EXP_PB8, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %31, %32
  %34 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %9
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
