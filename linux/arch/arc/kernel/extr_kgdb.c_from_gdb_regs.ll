; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_kgdb.c_from_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_kgdb.c_from_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.callee_regs = type { i32 }

@_R0 = common dso_local global i32 0, align 4
@_FP = common dso_local global i64 0, align 8
@__SP = common dso_local global i64 0, align 8
@_BLINK = common dso_local global i64 0, align 8
@_RET = common dso_local global i64 0, align 8
@_STATUS32 = common dso_local global i64 0, align 8
@_LP_COUNT = common dso_local global i64 0, align 8
@_LP_END = common dso_local global i64 0, align 8
@_LP_START = common dso_local global i64 0, align 8
@_BTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.pt_regs*, %struct.callee_regs*)* @from_gdb_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @from_gdb_regs(i64* %0, %struct.pt_regs* %1, %struct.callee_regs* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.callee_regs*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.callee_regs* %2, %struct.callee_regs** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 %9, 26
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @_R0, align 4
  %16 = add nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %13, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = load %struct.callee_regs*, %struct.callee_regs** %6, align 8
  %22 = call i32 @set_reg(i32 %12, i64 %19, %struct.pt_regs* %20, %struct.callee_regs* %21)
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* @_FP, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* @__SP, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* @_BLINK, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = load i64, i64* @_RET, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i64*, i64** %4, align 8
  %52 = load i64, i64* @_STATUS32, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* @_LP_COUNT, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = load i64, i64* @_LP_END, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 6
  store i64 %66, i64* %68, align 8
  %69 = load i64*, i64** %4, align 8
  %70 = load i64, i64* @_LP_START, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 7
  store i64 %72, i64* %74, align 8
  %75 = load i64*, i64** %4, align 8
  %76 = load i64, i64* @_BTA, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 8
  store i64 %78, i64* %80, align 8
  ret void
}

declare dso_local i32 @set_reg(i32, i64, %struct.pt_regs*, %struct.callee_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
