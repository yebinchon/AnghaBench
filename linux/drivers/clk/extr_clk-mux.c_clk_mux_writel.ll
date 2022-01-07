; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_mux_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_mux_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_mux = type { i32, i32 }

@CLK_MUX_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_mux*, i32)* @clk_mux_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_mux_writel(%struct.clk_mux* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_mux*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_mux* %0, %struct.clk_mux** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %6 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CLK_MUX_BIG_ENDIAN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %14 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iowrite32be(i32 %12, i32 %15)
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %20 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writel(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
