; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dawr.c_set_dawr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dawr.c_set_dawr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64)* }
%struct.arch_hw_breakpoint = type { i64, i32, i32 }

@HW_BRK_TYPE_READ = common dso_local global i32 0, align 4
@HW_BRK_TYPE_WRITE = common dso_local global i32 0, align 4
@HW_BRK_TYPE_TRANSLATE = common dso_local global i32 0, align 4
@HW_BRK_TYPE_PRIV_ALL = common dso_local global i32 0, align 4
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SPRN_DAWR = common dso_local global i32 0, align 4
@SPRN_DAWRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_dawr(%struct.arch_hw_breakpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arch_hw_breakpoint*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.arch_hw_breakpoint* %0, %struct.arch_hw_breakpoint** %3, align 8
  %7 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %8 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %11 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HW_BRK_TYPE_READ, align 4
  %14 = load i32, i32* @HW_BRK_TYPE_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = shl i32 %16, 5
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %20 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HW_BRK_TYPE_TRANSLATE, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 2
  %25 = shl i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %30 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HW_BRK_TYPE_PRIV_ALL, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %39 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 7
  %42 = ashr i32 %41, 3
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = and i64 %45, 63
  %47 = shl i64 %46, 10
  %48 = load i64, i64* %5, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %5, align 8
  %50 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %51 = icmp ne i32 (i64, i64)* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 %53(i64 %54, i64 %55)
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %1
  %58 = load i32, i32* @SPRN_DAWR, align 4
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @mtspr(i32 %58, i64 %59)
  %61 = load i32, i32* @SPRN_DAWRX, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @mtspr(i32 %61, i64 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %52
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @mtspr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
