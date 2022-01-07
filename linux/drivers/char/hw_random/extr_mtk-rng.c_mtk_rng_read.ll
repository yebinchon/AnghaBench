; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.mtk_rng = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@RNG_DATA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @mtk_rng_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rng_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hwrng*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtk_rng*, align 8
  %10 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %12 = call %struct.mtk_rng* @to_mtk_rng(%struct.hwrng* %11)
  store %struct.mtk_rng* %12, %struct.mtk_rng** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.mtk_rng*, %struct.mtk_rng** %9, align 8
  %14 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.device*
  %18 = call i32 @pm_runtime_get_sync(%struct.device* %17)
  br label %19

19:                                               ; preds = %28, %4
  %20 = load i64, i64* %7, align 8
  %21 = icmp uge i64 %20, 4
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mtk_rng_wait_ready(%struct.hwrng* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %45

28:                                               ; preds = %22
  %29 = load %struct.mtk_rng*, %struct.mtk_rng** %9, align 8
  %30 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RNG_DATA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr i8, i8* %41, i64 4
  store i8* %42, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 %43, 4
  store i64 %44, i64* %7, align 8
  br label %19

45:                                               ; preds = %27, %19
  %46 = load %struct.mtk_rng*, %struct.mtk_rng** %9, align 8
  %47 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.device*
  %51 = call i32 @pm_runtime_mark_last_busy(%struct.device* %50)
  %52 = load %struct.mtk_rng*, %struct.mtk_rng** %9, align 8
  %53 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.device*
  %57 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %56)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60, %45
  %64 = load i32, i32* %10, align 4
  br label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi i32 [ %64, %63 ], [ %67, %65 ]
  ret i32 %69
}

declare dso_local %struct.mtk_rng* @to_mtk_rng(%struct.hwrng*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mtk_rng_wait_ready(%struct.hwrng*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
