; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk.c_mmp_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk.c_mmp_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.mmp_clk_unit = type { i32, %struct.TYPE_2__, %struct.clk** }
%struct.TYPE_2__ = type { i32, %struct.clk** }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmp_clk_init(%struct.device_node* %0, %struct.mmp_clk_unit* %1, i32 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mmp_clk_unit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk**, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.mmp_clk_unit* %1, %struct.mmp_clk_unit** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.clk** @kcalloc(i32 %8, i32 8, i32 %9)
  store %struct.clk** %10, %struct.clk*** %7, align 8
  %11 = load %struct.clk**, %struct.clk*** %7, align 8
  %12 = icmp ne %struct.clk** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %34

14:                                               ; preds = %3
  %15 = load %struct.clk**, %struct.clk*** %7, align 8
  %16 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %5, align 8
  %17 = getelementptr inbounds %struct.mmp_clk_unit, %struct.mmp_clk_unit* %16, i32 0, i32 2
  store %struct.clk** %15, %struct.clk*** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %5, align 8
  %20 = getelementptr inbounds %struct.mmp_clk_unit, %struct.mmp_clk_unit* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.clk**, %struct.clk*** %7, align 8
  %22 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %5, align 8
  %23 = getelementptr inbounds %struct.mmp_clk_unit, %struct.mmp_clk_unit* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.clk** %21, %struct.clk*** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %5, align 8
  %27 = getelementptr inbounds %struct.mmp_clk_unit, %struct.mmp_clk_unit* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = load i32, i32* @of_clk_src_onecell_get, align 4
  %31 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %5, align 8
  %32 = getelementptr inbounds %struct.mmp_clk_unit, %struct.mmp_clk_unit* %31, i32 0, i32 1
  %33 = call i32 @of_clk_add_provider(%struct.device_node* %29, i32 %30, %struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.clk** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
