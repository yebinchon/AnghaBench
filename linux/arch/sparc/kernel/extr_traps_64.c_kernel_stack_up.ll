; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_kernel_stack_up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_kernel_stack_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_window = type { i64* }

@STACK_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_window* (%struct.reg_window*)* @kernel_stack_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_window* @kernel_stack_up(%struct.reg_window* %0) #0 {
  %2 = alloca %struct.reg_window*, align 8
  %3 = alloca %struct.reg_window*, align 8
  %4 = alloca i64, align 8
  store %struct.reg_window* %0, %struct.reg_window** %3, align 8
  %5 = load %struct.reg_window*, %struct.reg_window** %3, align 8
  %6 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 6
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.reg_window* null, %struct.reg_window** %2, align 8
  br label %18

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @STACK_BIAS, align 8
  %16 = add i64 %14, %15
  %17 = inttoptr i64 %16 to %struct.reg_window*
  store %struct.reg_window* %17, %struct.reg_window** %2, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load %struct.reg_window*, %struct.reg_window** %2, align 8
  ret %struct.reg_window* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
