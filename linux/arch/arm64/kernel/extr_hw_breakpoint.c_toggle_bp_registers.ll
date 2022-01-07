; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_toggle_bp_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_toggle_bp_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bp_on_reg = common dso_local global i32 0, align 4
@core_num_brps = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@core_num_wrps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @toggle_bp_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_bp_registers(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_event**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @bp_on_reg, align 4
  %15 = call %struct.perf_event** @this_cpu_ptr(i32 %14)
  store %struct.perf_event** %15, %struct.perf_event*** %11, align 8
  %16 = load i32, i32* @core_num_brps, align 4
  store i32 %16, i32* %8, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @wp_on_reg, align 4
  %19 = call %struct.perf_event** @this_cpu_ptr(i32 %18)
  store %struct.perf_event** %19, %struct.perf_event*** %11, align 8
  %20 = load i32, i32* @core_num_wrps, align 4
  store i32 %20, i32* %8, align 4
  br label %22

21:                                               ; preds = %3
  br label %70

22:                                               ; preds = %17, %13
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %28, i64 %30
  %32 = load %struct.perf_event*, %struct.perf_event** %31, align 8
  %33 = icmp ne %struct.perf_event* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %67

35:                                               ; preds = %27
  %36 = load %struct.perf_event**, %struct.perf_event*** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %36, i64 %38
  %40 = load %struct.perf_event*, %struct.perf_event** %39, align 8
  %41 = call %struct.TYPE_4__* @counter_arch_bp(%struct.perf_event* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @debug_exception_level(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %67

50:                                               ; preds = %35
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @read_wb_reg(i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, -2
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @write_wb_reg(i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %49, %34
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %23

70:                                               ; preds = %21, %23
  ret void
}

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local %struct.TYPE_4__* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @debug_exception_level(i32) #1

declare dso_local i32 @read_wb_reg(i32, i32) #1

declare dso_local i32 @write_wb_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
