; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/extr_board-apsh4a3a.c_apsh4a3a_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/extr_board-apsh4a3a.c_apsh4a3a_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @apsh4a3a_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apsh4a3a_clk_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %4, %struct.clk** %2, align 8
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = call i64 @IS_ERR(%struct.clk* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.clk*, %struct.clk** %2, align 8
  %10 = call i32 @PTR_ERR(%struct.clk* %9)
  store i32 %10, i32* %1, align 4
  br label %17

11:                                               ; preds = %0
  %12 = load %struct.clk*, %struct.clk** %2, align 8
  %13 = call i32 @clk_set_rate(%struct.clk* %12, i32 33333000)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = call i32 @clk_put(%struct.clk* %14)
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
