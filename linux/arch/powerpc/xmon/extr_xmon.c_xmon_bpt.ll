; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_xmon_bpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_xmon_bpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }
%struct.bpt = type { i32, i64 }

@MSR_IR = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @xmon_bpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmon_bpt(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.bpt*, align 8
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MSR_IR, align 4
  %10 = load i32, i32* @MSR_PR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MSR_64BIT, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = load i32, i32* @MSR_IR, align 4
  %16 = load i32, i32* @MSR_64BIT, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.bpt* @in_breakpoint_table(i64 %23, i64* %5)
  store %struct.bpt* %24, %struct.bpt** %4, align 8
  %25 = load %struct.bpt*, %struct.bpt** %4, align 8
  %26 = icmp ne %struct.bpt* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.bpt*, %struct.bpt** %4, align 8
  %32 = getelementptr inbounds %struct.bpt, %struct.bpt* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.bpt*, %struct.bpt** %4, align 8
  %38 = getelementptr inbounds %struct.bpt, %struct.bpt* %37, i32 0, i32 0
  %39 = call i32 @atomic_dec(i32* %38)
  store i32 1, i32* %2, align 4
  br label %51

40:                                               ; preds = %27, %20
  %41 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.bpt* @at_breakpoint(i64 %43)
  store %struct.bpt* %44, %struct.bpt** %4, align 8
  %45 = load %struct.bpt*, %struct.bpt** %4, align 8
  %46 = icmp ne %struct.bpt* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %50 = call i32 @xmon_core(%struct.pt_regs* %49, i32 0)
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %47, %30, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.bpt* @in_breakpoint_table(i64, i64*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.bpt* @at_breakpoint(i64) #1

declare dso_local i32 @xmon_core(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
