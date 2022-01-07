; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-reset.c_owl_reset_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-reset.c_owl_reset_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.owl_reset = type { i32, %struct.owl_reset_map* }
%struct.owl_reset_map = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @owl_reset_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_reset_assert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.owl_reset*, align 8
  %6 = alloca %struct.owl_reset_map*, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %8 = call %struct.owl_reset* @to_owl_reset(%struct.reset_controller_dev* %7)
  store %struct.owl_reset* %8, %struct.owl_reset** %5, align 8
  %9 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %10 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %9, i32 0, i32 1
  %11 = load %struct.owl_reset_map*, %struct.owl_reset_map** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.owl_reset_map, %struct.owl_reset_map* %11, i64 %12
  store %struct.owl_reset_map* %13, %struct.owl_reset_map** %6, align 8
  %14 = load %struct.owl_reset*, %struct.owl_reset** %5, align 8
  %15 = getelementptr inbounds %struct.owl_reset, %struct.owl_reset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.owl_reset_map*, %struct.owl_reset_map** %6, align 8
  %18 = getelementptr inbounds %struct.owl_reset_map, %struct.owl_reset_map* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.owl_reset_map*, %struct.owl_reset_map** %6, align 8
  %21 = getelementptr inbounds %struct.owl_reset_map, %struct.owl_reset_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_update_bits(i32 %16, i32 %19, i32 %22, i32 0)
  ret i32 %23
}

declare dso_local %struct.owl_reset* @to_owl_reset(%struct.reset_controller_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
