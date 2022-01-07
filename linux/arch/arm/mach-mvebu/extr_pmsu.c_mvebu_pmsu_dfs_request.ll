; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_pmsu_dfs_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_pmsu_dfs_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmsu_mp_base = common dso_local global i64 0, align 8
@PMSU_EVENT_STATUS_AND_MASK_DFS_DONE = common dso_local global i32 0, align 4
@PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK = common dso_local global i32 0, align 4
@mvebu_pmsu_dfs_request_local = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvebu_pmsu_dfs_request(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_logical_map(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @pmsu_mp_base, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @PMSU_EVENT_STATUS_AND_MASK(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @PMSU_EVENT_STATUS_AND_MASK_DFS_DONE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* @pmsu_mp_base, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @PMSU_EVENT_STATUS_AND_MASK(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel(i32 %18, i64 %22)
  %24 = load i64, i64* @pmsu_mp_base, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @PMSU_EVENT_STATUS_AND_MASK(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* @pmsu_mp_base, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @PMSU_EVENT_STATUS_AND_MASK(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @writel(i32 %32, i64 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @mvebu_pmsu_dfs_request_local, align 4
  %40 = call i32 @smp_call_function_single(i32 %38, i32 %39, i32* null, i32 0)
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* @HZ, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %60, %1
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @time_before(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i64, i64* @pmsu_mp_base, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @PMSU_EVENT_STATUS_AND_MASK(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PMSU_EVENT_STATUS_AND_MASK_DFS_DONE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %62

60:                                               ; preds = %49
  %61 = call i32 @udelay(i32 10)
  br label %44

62:                                               ; preds = %59, %44
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @time_after(i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @ETIME, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %86

70:                                               ; preds = %62
  %71 = load i64, i64* @pmsu_mp_base, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @PMSU_EVENT_STATUS_AND_MASK(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @readl(i64 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @PMSU_EVENT_STATUS_AND_MASK_DFS_DONE_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i64, i64* @pmsu_mp_base, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @PMSU_EVENT_STATUS_AND_MASK(i32 %82)
  %84 = add nsw i64 %81, %83
  %85 = call i32 @writel(i32 %80, i64 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %70, %67
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PMSU_EVENT_STATUS_AND_MASK(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i32*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
