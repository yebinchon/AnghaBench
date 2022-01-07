; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_dma_inval_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_cpu_dma_inval_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@L1_cache_info = common dso_local global %struct.TYPE_2__* null, align 8
@DCACHE = common dso_local global i64 0, align 8
@CCTL_CMD_L2_PA_WBINVAL = common dso_local global i32 0, align 4
@CCTL_CMD_L2_PA_INVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_dma_inval_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @L1_cache_info, align 8
  %12 = load i64, i64* @DCACHE, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %17, 1
  %19 = xor i64 %18, -1
  %20 = and i64 %16, %19
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, 1
  %27 = xor i64 %26, -1
  %28 = and i64 %24, %27
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %81

36:                                               ; preds = %2
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @local_irq_save(i64 %37)
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @cpu_dcache_wbinval_range(i64 %43, i64 %46)
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %49, %50
  %52 = load i32, i32* @CCTL_CMD_L2_PA_WBINVAL, align 4
  %53 = call i32 @cpu_l2cache_op(i64 %48, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %42, %36
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = sub i64 %59, %60
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @cpu_dcache_wbinval_range(i64 %61, i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = sub i64 %64, %65
  %67 = load i64, i64* %4, align 8
  %68 = load i32, i32* @CCTL_CMD_L2_PA_WBINVAL, align 4
  %69 = call i32 @cpu_l2cache_op(i64 %66, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %54
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @cpu_dcache_inval_range(i64 %71, i64 %72)
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* @CCTL_CMD_L2_PA_INVAL, align 4
  %77 = call i32 @cpu_l2cache_op(i64 %74, i64 %75, i32 %76)
  %78 = call i32 (...) @__nds32__msync_all()
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @local_irq_restore(i64 %79)
  br label %81

81:                                               ; preds = %70, %35
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @cpu_dcache_wbinval_range(i64, i64) #1

declare dso_local i32 @cpu_l2cache_op(i64, i64, i32) #1

declare dso_local i32 @cpu_dcache_inval_range(i64, i64) #1

declare dso_local i32 @__nds32__msync_all(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
