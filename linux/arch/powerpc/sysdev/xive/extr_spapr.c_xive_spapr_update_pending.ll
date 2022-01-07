; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_update_pending.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_spapr_update_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_cpu = type { i32, i32 }

@xive_tima = common dso_local global i64 0, align 8
@TM_SPC_ACK_OS_REG = common dso_local global i64 0, align 8
@TM_QW1_NSR_EO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CPU %d odd ack CPPR, got %d at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xive_cpu*)* @xive_spapr_update_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_spapr_update_pending(%struct.xive_cpu* %0) #0 {
  %2 = alloca %struct.xive_cpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xive_cpu* %0, %struct.xive_cpu** %2, align 8
  %6 = load i64, i64* @xive_tima, align 8
  %7 = load i64, i64* @TM_SPC_ACK_OS_REG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_readw(i64 %8)
  %10 = call i32 @be16_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @mb()
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 8
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TM_QW1_NSR_EO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %47

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %28 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %33 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = call i32 (...) @smp_processor_id()
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %40 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %24
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %46 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %23, %43, %1
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @__raw_readw(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
