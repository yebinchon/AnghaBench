; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_init_rx_win_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_init_rx_win_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_rx_win_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VAS_COP_TYPE_842 = common dso_local global i32 0, align 4
@VAS_COP_TYPE_842_HIPRI = common dso_local global i32 0, align 4
@VAS_COP_TYPE_FAULT = common dso_local global i32 0, align 4
@VAS_COP_TYPE_FTW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vas_init_rx_win_attr(%struct.vas_rx_win_attr* %0, i32 %1) #0 {
  %3 = alloca %struct.vas_rx_win_attr*, align 8
  %4 = alloca i32, align 4
  store %struct.vas_rx_win_attr* %0, %struct.vas_rx_win_attr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %6 = call i32 @memset(%struct.vas_rx_win_attr* %5, i32 0, i32 40)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @VAS_COP_TYPE_842, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VAS_COP_TYPE_842_HIPRI, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10, %2
  %15 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %16 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %18 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %20 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %22 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %24 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %23, i32 0, i32 4
  store i32 1, i32* %24, align 4
  %25 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %26 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %25, i32 0, i32 5
  store i32 1, i32* %26, align 4
  %27 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %28 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %27, i32 0, i32 6
  store i32 1, i32* %28, align 4
  %29 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %30 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %29, i32 0, i32 7
  store i32 1, i32* %30, align 4
  br label %61

31:                                               ; preds = %10
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VAS_COP_TYPE_FAULT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %37 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %39 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %41 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %40, i32 0, i32 8
  store i32 1, i32* %41, align 4
  %42 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %43 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %42, i32 0, i32 4
  store i32 1, i32* %43, align 4
  %44 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %45 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %44, i32 0, i32 5
  store i32 1, i32* %45, align 4
  %46 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %47 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %46, i32 0, i32 6
  store i32 1, i32* %47, align 4
  %48 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %49 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %48, i32 0, i32 7
  store i32 1, i32* %49, align 4
  br label %60

50:                                               ; preds = %31
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @VAS_COP_TYPE_FTW, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %56 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %55, i32 0, i32 9
  store i32 1, i32* %56, align 4
  %57 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %3, align 8
  %58 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %57, i32 0, i32 3
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %35
  br label %61

61:                                               ; preds = %60, %14
  ret void
}

declare dso_local i32 @memset(%struct.vas_rx_win_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
