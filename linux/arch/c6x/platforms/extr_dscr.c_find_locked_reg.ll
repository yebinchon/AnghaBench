; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_dscr.c_find_locked_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_dscr.c_find_locked_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.locked_reg* }
%struct.locked_reg = type { i64, i64 }

@MAX_LOCKED_REGS = common dso_local global i32 0, align 4
@dscr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.locked_reg* (i64)* @find_locked_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.locked_reg* @find_locked_reg(i64 %0) #0 {
  %2 = alloca %struct.locked_reg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAX_LOCKED_REGS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load %struct.locked_reg*, %struct.locked_reg** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.locked_reg, %struct.locked_reg* %10, i64 %12
  %14 = getelementptr inbounds %struct.locked_reg, %struct.locked_reg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.locked_reg*, %struct.locked_reg** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.locked_reg, %struct.locked_reg* %19, i64 %21
  %23 = getelementptr inbounds %struct.locked_reg, %struct.locked_reg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.locked_reg*, %struct.locked_reg** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dscr, i32 0, i32 0), align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.locked_reg, %struct.locked_reg* %27, i64 %29
  store %struct.locked_reg* %30, %struct.locked_reg** %2, align 8
  br label %36

31:                                               ; preds = %17, %9
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %5

35:                                               ; preds = %5
  store %struct.locked_reg* null, %struct.locked_reg** %2, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load %struct.locked_reg*, %struct.locked_reg** %2, align 8
  ret %struct.locked_reg* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
