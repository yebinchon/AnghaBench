; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_core.c_hwrng_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_core.c_hwrng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { {}*, i64, i32, i32 }

@default_quality = common dso_local global i32 0, align 4
@current_quality = common dso_local global i32 0, align 4
@hwrng_fill = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @hwrng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwrng_init(%struct.hwrng* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  %5 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %6 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %5, i32 0, i32 3
  %7 = call i64 @kref_get_unless_zero(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %12 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.hwrng*)**
  %14 = load i32 (%struct.hwrng*)*, i32 (%struct.hwrng*)** %13, align 8
  %15 = icmp ne i32 (%struct.hwrng*)* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %18 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.hwrng*)**
  %20 = load i32 (%struct.hwrng*)*, i32 (%struct.hwrng*)** %19, align 8
  %21 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %22 = call i32 %20(%struct.hwrng* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %10
  %29 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %30 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %29, i32 0, i32 3
  %31 = call i32 @kref_init(i32* %30)
  %32 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %33 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %32, i32 0, i32 2
  %34 = call i32 @reinit_completion(i32* %33)
  br label %35

35:                                               ; preds = %28, %9
  %36 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %37 = call i32 @add_early_randomness(%struct.hwrng* %36)
  %38 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %39 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @default_quality, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i64 [ %40, %42 ], [ %45, %43 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @current_quality, align 4
  %49 = load i32, i32* @current_quality, align 4
  %50 = icmp sgt i32 %49, 1024
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1024, i32* @current_quality, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* @current_quality, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* @hwrng_fill, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @hwrng_fill, align 8
  %60 = call i32 @kthread_stop(i64 %59)
  br label %61

61:                                               ; preds = %58, %55, %52
  %62 = load i32, i32* @current_quality, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i64, i64* @hwrng_fill, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 (...) @start_khwrngd()
  br label %69

69:                                               ; preds = %67, %64, %61
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %25
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @add_early_randomness(%struct.hwrng*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @start_khwrngd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
