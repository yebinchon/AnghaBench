; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-uniphier.c___uniphier_cache_maint_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-uniphier.c___uniphier_cache_maint_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_cache_data = type { i64 }

@UNIPHIER_SSCOLPQS_EF = common dso_local global i64 0, align 8
@UNIPHIER_SSCOLPQS = common dso_local global i64 0, align 8
@UNIPHIER_SSCOQM_CE = common dso_local global i64 0, align 8
@UNIPHIER_SSCOQM = common dso_local global i64 0, align 8
@UNIPHIER_SSCOQAD = common dso_local global i64 0, align 8
@UNIPHIER_SSCOQSZ = common dso_local global i64 0, align 8
@UNIPHIER_SSCOPPQSEF = common dso_local global i64 0, align 8
@UNIPHIER_SSCOPPQSEF_FE = common dso_local global i64 0, align 8
@UNIPHIER_SSCOPPQSEF_OE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_cache_data*, i64, i64, i64)* @__uniphier_cache_maint_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__uniphier_cache_maint_common(%struct.uniphier_cache_data* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.uniphier_cache_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uniphier_cache_data* %0, %struct.uniphier_cache_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i64, i64* @UNIPHIER_SSCOLPQS_EF, align 8
  %13 = load %struct.uniphier_cache_data*, %struct.uniphier_cache_data** %5, align 8
  %14 = getelementptr inbounds %struct.uniphier_cache_data, %struct.uniphier_cache_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UNIPHIER_SSCOLPQS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel_relaxed(i64 %12, i64 %17)
  br label %19

19:                                               ; preds = %49, %4
  %20 = load i64, i64* @UNIPHIER_SSCOQM_CE, align 8
  %21 = load i64, i64* %8, align 8
  %22 = or i64 %20, %21
  %23 = load %struct.uniphier_cache_data*, %struct.uniphier_cache_data** %5, align 8
  %24 = getelementptr inbounds %struct.uniphier_cache_data, %struct.uniphier_cache_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UNIPHIER_SSCOQM, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i64 %22, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @UNIPHIER_SSCOQM_S_IS_RANGE(i64 %29)
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %19
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.uniphier_cache_data*, %struct.uniphier_cache_data** %5, align 8
  %36 = getelementptr inbounds %struct.uniphier_cache_data, %struct.uniphier_cache_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UNIPHIER_SSCOQAD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i64 %34, i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.uniphier_cache_data*, %struct.uniphier_cache_data** %5, align 8
  %43 = getelementptr inbounds %struct.uniphier_cache_data, %struct.uniphier_cache_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UNIPHIER_SSCOQSZ, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i64 %41, i64 %46)
  br label %48

48:                                               ; preds = %33, %19
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.uniphier_cache_data*, %struct.uniphier_cache_data** %5, align 8
  %51 = getelementptr inbounds %struct.uniphier_cache_data, %struct.uniphier_cache_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @UNIPHIER_SSCOPPQSEF, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i64 @readl_relaxed(i64 %54)
  %56 = load i64, i64* @UNIPHIER_SSCOPPQSEF_FE, align 8
  %57 = load i64, i64* @UNIPHIER_SSCOPPQSEF_OE, align 8
  %58 = or i64 %56, %57
  %59 = and i64 %55, %58
  %60 = call i64 @unlikely(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %19, label %62

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %75, %62
  %64 = load %struct.uniphier_cache_data*, %struct.uniphier_cache_data** %5, align 8
  %65 = getelementptr inbounds %struct.uniphier_cache_data, %struct.uniphier_cache_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UNIPHIER_SSCOLPQS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i64 @readl_relaxed(i64 %68)
  %70 = load i64, i64* @UNIPHIER_SSCOLPQS_EF, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @likely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = call i32 (...) @cpu_relax()
  br label %63

77:                                               ; preds = %63
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @local_irq_restore(i64 %78)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @UNIPHIER_SSCOQM_S_IS_RANGE(i64) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
