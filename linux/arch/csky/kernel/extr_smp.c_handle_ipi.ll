; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_smp.c_handle_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_smp.c_handle_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ipi_data = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IPI_RESCHEDULE = common dso_local global i32 0, align 4
@IPI_CALL_FUNC = common dso_local global i32 0, align 4
@IPI_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @handle_ipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ipi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %2, %32
  %7 = call %struct.TYPE_2__* @this_cpu_ptr(i32* @ipi_data)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i64 @xchg(i32* %8, i32 0)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %13

14:                                               ; preds = %6
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @IPI_RESCHEDULE, align 4
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  %19 = and i64 %15, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @scheduler_ipi()
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @IPI_CALL_FUNC, align 4
  %26 = shl i32 1, %25
  %27 = sext i32 %26 to i64
  %28 = and i64 %24, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 (...) @generic_smp_call_function_interrupt()
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @IPI_MAX, align 8
  %35 = lshr i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  br label %6
}

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @this_cpu_ptr(i32*) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @generic_smp_call_function_interrupt(...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
