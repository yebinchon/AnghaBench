; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_clk_register_clkdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_clk_register_clkdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clk_lookup = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_register_clkdev(%struct.clk* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk_lookup*, align 8
  store %struct.clk* %0, %struct.clk** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.clk*, %struct.clk** %5, align 8
  %10 = call i64 @IS_ERR(%struct.clk* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.clk*, %struct.clk** %5, align 8
  %14 = call i32 @PTR_ERR(%struct.clk* %13)
  store i32 %14, i32* %4, align 4
  br label %21

15:                                               ; preds = %3
  %16 = load %struct.clk*, %struct.clk** %5, align 8
  %17 = call i32 @__clk_get_hw(%struct.clk* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @do_clk_register_clkdev(i32 %17, %struct.clk_lookup** %8, i8* %18, i8* %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @do_clk_register_clkdev(i32, %struct.clk_lookup**, i8*, i8*) #1

declare dso_local i32 @__clk_get_hw(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
