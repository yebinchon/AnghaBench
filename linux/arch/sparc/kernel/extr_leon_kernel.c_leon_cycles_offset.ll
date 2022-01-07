; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_cycles_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_cycles_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@leon3_gptimer_regs = common dso_local global %struct.TYPE_4__* null, align 8
@leon3_gptimer_idx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @leon_cycles_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leon_cycles_offset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @leon3_gptimer_regs, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i64, i64* @leon3_gptimer_idx, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = call i32 @LEON3_BYPASS_LOAD_PA(i32* %10)
  store i32 %11, i32* %1, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @leon3_gptimer_regs, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @leon3_gptimer_idx, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @LEON3_BYPASS_LOAD_PA(i32* %17)
  store i32 %18, i32* %2, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @leon3_gptimer_regs, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* @leon3_gptimer_idx, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @LEON3_BYPASS_LOAD_PA(i32* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @LEON3_GPTIMER_CTRL_ISPENDING(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @leon3_gptimer_regs, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* @leon3_gptimer_idx, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @LEON3_BYPASS_LOAD_PA(i32* %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %1, align 4
  %38 = mul nsw i32 2, %37
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %0
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %29
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @LEON3_BYPASS_LOAD_PA(i32*) #1

declare dso_local i64 @LEON3_GPTIMER_CTRL_ISPENDING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
