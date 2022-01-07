; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_mct_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_mct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_base = common dso_local global i64 0, align 8
@EXYNOS4_MCT_L_MASK = common dso_local global i64 0, align 8
@MCT_L_WSTAT_OFFSET = common dso_local global i64 0, align 8
@EXYNOS4_MCT_G_WSTAT = common dso_local global i64 0, align 8
@EXYNOS4_MCT_G_CNT_WSTAT = common dso_local global i64 0, align 8
@loops_per_jiffy = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"MCT hangs after writing %d (offset:0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @exynos4_mct_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_mct_write(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i64, i64* @reg_base, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 %8, i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @EXYNOS4_MCT_L_BASE(i32 0)
  %15 = icmp uge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @EXYNOS4_MCT_L_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* @MCT_L_WSTAT_OFFSET, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @EXYNOS4_MCT_L_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  switch i64 %28, label %32 [
    i64 128, label %29
    i64 130, label %30
    i64 129, label %31
  ]

29:                                               ; preds = %19
  store i32 8, i32* %6, align 4
  br label %33

30:                                               ; preds = %19
  store i32 2, i32* %6, align 4
  br label %33

31:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %33

32:                                               ; preds = %19
  br label %80

33:                                               ; preds = %31, %30, %29
  br label %50

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8
  switch i64 %35, label %48 [
    i64 131, label %36
    i64 133, label %38
    i64 132, label %40
    i64 134, label %42
    i64 136, label %44
    i64 135, label %46
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* @EXYNOS4_MCT_G_WSTAT, align 8
  store i64 %37, i64* %5, align 8
  store i32 65536, i32* %6, align 4
  br label %49

38:                                               ; preds = %34
  %39 = load i64, i64* @EXYNOS4_MCT_G_WSTAT, align 8
  store i64 %39, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %49

40:                                               ; preds = %34
  %41 = load i64, i64* @EXYNOS4_MCT_G_WSTAT, align 8
  store i64 %41, i64* %5, align 8
  store i32 2, i32* %6, align 4
  br label %49

42:                                               ; preds = %34
  %43 = load i64, i64* @EXYNOS4_MCT_G_WSTAT, align 8
  store i64 %43, i64* %5, align 8
  store i32 4, i32* %6, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load i64, i64* @EXYNOS4_MCT_G_CNT_WSTAT, align 8
  store i64 %45, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load i64, i64* @EXYNOS4_MCT_G_CNT_WSTAT, align 8
  store i64 %47, i64* %5, align 8
  store i32 2, i32* %6, align 4
  br label %49

48:                                               ; preds = %34
  br label %80

49:                                               ; preds = %46, %44, %42, %40, %38, %36
  br label %50

50:                                               ; preds = %49, %33
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @loops_per_jiffy, align 4
  %54 = sdiv i32 %53, 1000
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %54, %55
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load i64, i64* @reg_base, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %59, %60
  %62 = call i32 @readl_relaxed(i64 %61)
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* @reg_base, align 8
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %68, %69
  %71 = call i32 @writel_relaxed(i32 %67, i64 %70)
  br label %80

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %66, %48, %32
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @EXYNOS4_MCT_L_BASE(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @panic(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
