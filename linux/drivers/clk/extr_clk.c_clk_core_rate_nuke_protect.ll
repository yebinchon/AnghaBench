; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_rate_nuke_protect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_rate_nuke_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32 }

@prepare_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_core*)* @clk_core_rate_nuke_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_core_rate_nuke_protect(%struct.clk_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  %5 = call i32 @lockdep_assert_held(i32* @prepare_lock)
  %6 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %7 = icmp ne %struct.clk_core* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %13 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %19 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %22 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %24 = call i32 @clk_core_rate_unprotect(%struct.clk_core* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %16, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @clk_core_rate_unprotect(%struct.clk_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
