; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_kgdb.c_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_kgdb.c_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.callee_regs = type { i32 }

@_R0 = common dso_local global i32 0, align 4
@GDB_MAX_REGS = common dso_local global i32 0, align 4
@_FP = common dso_local global i64 0, align 8
@__SP = common dso_local global i64 0, align 8
@_BLINK = common dso_local global i64 0, align 8
@_RET = common dso_local global i64 0, align 8
@_STATUS32 = common dso_local global i64 0, align 8
@_LP_COUNT = common dso_local global i64 0, align 8
@_LP_END = common dso_local global i64 0, align 8
@_LP_START = common dso_local global i64 0, align 8
@_BTA = common dso_local global i64 0, align 8
@_STOP_PC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.pt_regs*, %struct.callee_regs*)* @to_gdb_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_gdb_regs(i64* %0, %struct.pt_regs* %1, %struct.callee_regs* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.callee_regs*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.callee_regs* %2, %struct.callee_regs** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 %9, 26
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = load %struct.callee_regs*, %struct.callee_regs** %6, align 8
  %15 = call i64 @get_reg(i32 %12, %struct.pt_regs* %13, %struct.callee_regs* %14)
  %16 = load i64*, i64** %4, align 8
  %17 = load i32, i32* @_R0, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  store i64 %15, i64* %21, align 8
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

25:                                               ; preds = %8
  store i32 27, i32* %7, align 4
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GDB_MAX_REGS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i64*, i64** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %26

38:                                               ; preds = %26
  %39 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* @_FP, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 %41, i64* %44, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* @__SP, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %47, i64* %50, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = load i64, i64* @_BLINK, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %53, i64* %56, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* @_RET, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 %59, i64* %62, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %4, align 8
  %67 = load i64, i64* @_STATUS32, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %68, align 8
  %69 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = load i64, i64* @_LP_COUNT, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %71, i64* %74, align 8
  %75 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %76 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %4, align 8
  %79 = load i64, i64* @_LP_END, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  %81 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = load i64, i64* @_LP_START, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %83, i64* %86, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %4, align 8
  %91 = load i64, i64* @_BTA, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64 %89, i64* %92, align 8
  %93 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %4, align 8
  %97 = load i64, i64* @_STOP_PC, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %95, i64* %98, align 8
  ret void
}

declare dso_local i64 @get_reg(i32, %struct.pt_regs*, %struct.callee_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
