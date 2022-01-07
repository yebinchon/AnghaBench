; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_clk.c_clk_activate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_clk.c_clk_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_activate(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = call i32 @clk_good(%struct.clk* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.clk*, %struct.clk** %3, align 8
  %14 = getelementptr inbounds %struct.clk, %struct.clk* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.clk*)**
  %16 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %15, align 8
  %17 = icmp ne i32 (%struct.clk*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.clk*)**
  %22 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %21, align 8
  %23 = load %struct.clk*, %struct.clk** %3, align 8
  %24 = call i32 %22(%struct.clk* %23)
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %18, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clk_good(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
