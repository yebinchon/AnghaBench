; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_tx_win_args_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_tx_win_args_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_tx_win_attr = type { i64, i64, i64, i64 }

@VAS_THRESH_DISABLED = common dso_local global i64 0, align 8
@VAS_COP_TYPE_MAX = common dso_local global i32 0, align 4
@VAS_TX_WCREDS_MAX = common dso_local global i64 0, align 8
@VAS_COP_TYPE_FTW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vas_tx_win_attr*)* @tx_win_args_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_win_args_valid(i32 %0, %struct.vas_tx_win_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vas_tx_win_attr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.vas_tx_win_attr* %1, %struct.vas_tx_win_attr** %5, align 8
  %6 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %5, align 8
  %7 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VAS_THRESH_DISABLED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @VAS_COP_TYPE_MAX, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %40

17:                                               ; preds = %12
  %18 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %5, align 8
  %19 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VAS_TX_WCREDS_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %40

24:                                               ; preds = %17
  %25 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %5, align 8
  %26 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @VAS_COP_TYPE_FTW, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %5, align 8
  %35 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %29
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %33, %24
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %23, %16, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
