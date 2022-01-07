; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_window_conflicts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mvebu-mbus.c_mvebu_mbus_window_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mbus_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mbus_state*, i64, i64, i32, i32)* @mvebu_mbus_window_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_mbus_window_conflicts(%struct.mvebu_mbus_state* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvebu_mbus_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mvebu_mbus_state* %0, %struct.mvebu_mbus_state** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %51, %5
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %7, align 8
  %26 = getelementptr inbounds %struct.mvebu_mbus_state, %struct.mvebu_mbus_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %23
  %32 = load %struct.mvebu_mbus_state*, %struct.mvebu_mbus_state** %7, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @mvebu_mbus_read_window(%struct.mvebu_mbus_state* %32, i32 %33, i32* %19, i64* %14, i64* %16, i32* %17, i32* %18, i32* null)
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %51

38:                                               ; preds = %31
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %16, align 8
  %41 = add nsw i64 %39, %40
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %15, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %55

50:                                               ; preds = %45, %38
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %23

54:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @mvebu_mbus_read_window(%struct.mvebu_mbus_state*, i32, i32*, i64*, i64*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
