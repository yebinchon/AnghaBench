; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_xmon_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_xmon_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }
%struct.bpt = type { i32, i64 }

@in_xmon = common dso_local global i64 0, align 8
@catch_memory_errors = common dso_local global i64 0, align 8
@MSR_IR = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @xmon_fault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmon_fault_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.bpt*, align 8
  %4 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load i64, i64* @in_xmon, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i64, i64* @catch_memory_errors, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = call i32 @handle_fault(%struct.pt_regs* %11)
  br label %13

13:                                               ; preds = %10, %7, %1
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MSR_IR, align 4
  %18 = load i32, i32* @MSR_PR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MSR_64BIT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = load i32, i32* @MSR_IR, align 4
  %24 = load i32, i32* @MSR_64BIT, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %13
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.bpt* @in_breakpoint_table(i64 %30, i64* %4)
  store %struct.bpt* %31, %struct.bpt** %3, align 8
  %32 = load %struct.bpt*, %struct.bpt** %3, align 8
  %33 = icmp ne %struct.bpt* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.bpt*, %struct.bpt** %3, align 8
  %36 = getelementptr inbounds %struct.bpt, %struct.bpt* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.bpt*, %struct.bpt** %3, align 8
  %43 = getelementptr inbounds %struct.bpt, %struct.bpt* %42, i32 0, i32 0
  %44 = call i32 @atomic_dec(i32* %43)
  br label %45

45:                                               ; preds = %34, %27
  br label %46

46:                                               ; preds = %45, %13
  ret i32 0
}

declare dso_local i32 @handle_fault(%struct.pt_regs*) #1

declare dso_local %struct.bpt* @in_breakpoint_table(i64, i64*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
