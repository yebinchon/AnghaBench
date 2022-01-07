; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_clock.c_clk_get_rate.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_clock.c_clk_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, %struct.clk*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_get_rate(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = call i32 @IS_ERR_OR_NULL(%struct.clk* %4)
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %3, align 8
  %11 = getelementptr inbounds %struct.clk, %struct.clk* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.clk*, %struct.clk** %3, align 8
  %16 = getelementptr inbounds %struct.clk, %struct.clk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %2, align 8
  br label %45

18:                                               ; preds = %9
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i64 (%struct.clk*)**
  %29 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %28, align 8
  %30 = icmp ne i64 (%struct.clk*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.clk*, %struct.clk** %3, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i64 (%struct.clk*)**
  %37 = load i64 (%struct.clk*)*, i64 (%struct.clk*)** %36, align 8
  %38 = load %struct.clk*, %struct.clk** %3, align 8
  %39 = call i64 %37(%struct.clk* %38)
  store i64 %39, i64* %2, align 8
  br label %45

40:                                               ; preds = %23, %18
  %41 = load %struct.clk*, %struct.clk** %3, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 1
  %43 = load %struct.clk*, %struct.clk** %42, align 8
  %44 = call i64 @clk_get_rate(%struct.clk* %43)
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %40, %31, %14, %8
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
