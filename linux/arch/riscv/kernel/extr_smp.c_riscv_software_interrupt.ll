; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_smp.c_riscv_software_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_smp.c_riscv_software_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64* }

@ipi_data = common dso_local global %struct.TYPE_2__* null, align 8
@IPI_RESCHEDULE = common dso_local global i32 0, align 4
@IPI_CALL_FUNC = common dso_local global i32 0, align 4
@IPI_CPU_STOP = common dso_local global i32 0, align 4
@IPI_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @riscv_software_interrupt() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipi_data, align 8
  %5 = call i64 (...) @smp_processor_id()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64* %7, i64** %1, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ipi_data, align 8
  %9 = call i64 (...) @smp_processor_id()
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %2, align 8
  %13 = call i32 (...) @clear_ipi()
  br label %14

14:                                               ; preds = %0, %66
  %15 = call i32 (...) @mb()
  %16 = load i64*, i64** %1, align 8
  %17 = call i64 @xchg(i64* %16, i32 0)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  ret void

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @IPI_RESCHEDULE, align 4
  %24 = shl i32 1, %23
  %25 = sext i32 %24 to i64
  %26 = and i64 %22, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i64*, i64** %2, align 8
  %30 = load i32, i32* @IPI_RESCHEDULE, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = call i32 (...) @scheduler_ipi()
  br label %36

36:                                               ; preds = %28, %21
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* @IPI_CALL_FUNC, align 4
  %39 = shl i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = and i64 %37, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i64*, i64** %2, align 8
  %45 = load i32, i32* @IPI_CALL_FUNC, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = call i32 (...) @generic_smp_call_function_interrupt()
  br label %51

51:                                               ; preds = %43, %36
  %52 = load i64, i64* %3, align 8
  %53 = load i32, i32* @IPI_CPU_STOP, align 4
  %54 = shl i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i64*, i64** %2, align 8
  %60 = load i32, i32* @IPI_CPU_STOP, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = call i32 (...) @ipi_stop()
  br label %66

66:                                               ; preds = %58, %51
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @IPI_MAX, align 8
  %69 = lshr i64 %67, %68
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = call i32 (...) @mb()
  br label %14
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @clear_ipi(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @xchg(i64*, i32) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @generic_smp_call_function_interrupt(...) #1

declare dso_local i32 @ipi_stop(...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
