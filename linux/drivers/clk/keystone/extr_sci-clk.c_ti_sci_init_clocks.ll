; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_ti_sci_init_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_ti_sci_init_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_clk_provider = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sci_clk_provider*)* @ti_sci_init_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_init_clocks(%struct.sci_clk_provider* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sci_clk_provider*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sci_clk_provider* %0, %struct.sci_clk_provider** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %3, align 8
  %9 = getelementptr inbounds %struct.sci_clk_provider, %struct.sci_clk_provider* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %3, align 8
  %14 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %3, align 8
  %15 = getelementptr inbounds %struct.sci_clk_provider, %struct.sci_clk_provider* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_sci_clk_build(%struct.sci_clk_provider* %13, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @_sci_clk_build(%struct.sci_clk_provider*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
