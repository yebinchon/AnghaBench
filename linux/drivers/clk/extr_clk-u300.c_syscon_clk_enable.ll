; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_syscon = type { i32, i64 }

@syscon_vbase = common dso_local global i64 0, align 8
@U300_SYSCON_SBCER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @syscon_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_syscon*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %6 = call %struct.clk_syscon* @to_syscon(%struct.clk_hw* %5)
  store %struct.clk_syscon* %6, %struct.clk_syscon** %4, align 8
  %7 = load %struct.clk_syscon*, %struct.clk_syscon** %4, align 8
  %8 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.clk_syscon*, %struct.clk_syscon** %4, align 8
  %14 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %26

18:                                               ; preds = %12
  %19 = load %struct.clk_syscon*, %struct.clk_syscon** %4, align 8
  %20 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* @syscon_vbase, align 8
  %23 = load i64, i64* @U300_SYSCON_SBCER, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writew(i32 %21, i64 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %17, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.clk_syscon* @to_syscon(%struct.clk_hw*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
