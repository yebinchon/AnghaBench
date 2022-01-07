; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_hw_overflow_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_hw_overflow_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.perf_event = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@breakinfo = common dso_local global %struct.TYPE_4__* null, align 8
@DR_TRAP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)* @kgdb_hw_overflow_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_hw_overflow_handler(%struct.perf_event* %0, %struct.perf_sample_data* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %31, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @breakinfo, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load i32, i32* @DR_TRAP0, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %21, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %10

34:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
