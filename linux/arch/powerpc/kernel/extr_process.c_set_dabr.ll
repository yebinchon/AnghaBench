; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_set_dabr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_set_dabr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64)* }
%struct.arch_hw_breakpoint = type { i64, i64 }

@HW_BRK_TYPE_DABR = common dso_local global i64 0, align 8
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch_hw_breakpoint*)* @set_dabr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dabr(%struct.arch_hw_breakpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arch_hw_breakpoint*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.arch_hw_breakpoint* %0, %struct.arch_hw_breakpoint** %3, align 8
  %6 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %7 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %10 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HW_BRK_TYPE_DABR, align 8
  %13 = and i64 %11, %12
  %14 = or i64 %8, %13
  store i64 %14, i64* %4, align 8
  %15 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %16 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = lshr i64 %17, 3
  %19 = and i64 %18, 7
  store i64 %19, i64* %5, align 8
  %20 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %21 = icmp ne i32 (i64, i64)* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 %23(i64 %24, i64 %25)
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @__set_dabr(i64 %28, i64 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @__set_dabr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
