; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_is_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_is_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_is_match(%struct.clk* %0, %struct.clk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  %6 = load %struct.clk*, %struct.clk** %4, align 8
  %7 = load %struct.clk*, %struct.clk** %5, align 8
  %8 = icmp eq %struct.clk* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

10:                                               ; preds = %2
  %11 = load %struct.clk*, %struct.clk** %4, align 8
  %12 = call i32 @IS_ERR_OR_NULL(%struct.clk* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load %struct.clk*, %struct.clk** %5, align 8
  %16 = call i32 @IS_ERR_OR_NULL(%struct.clk* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load %struct.clk*, %struct.clk** %4, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.clk*, %struct.clk** %5, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %14, %10
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
