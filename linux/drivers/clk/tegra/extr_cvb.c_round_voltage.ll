; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_round_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_round_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rail_alignment = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rail_alignment*, i32)* @round_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @round_voltage(i32 %0, %struct.rail_alignment* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rail_alignment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.rail_alignment* %1, %struct.rail_alignment** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %10 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %17 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @max(i32 %15, i32 %18)
  %20 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %21 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %29 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  br label %33

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i32 [ %31, %27 ], [ 0, %32 ]
  %35 = add nsw i32 %24, %34
  %36 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %37 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %42 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %46 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = sdiv i32 %48, 1000
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %3
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %33
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
