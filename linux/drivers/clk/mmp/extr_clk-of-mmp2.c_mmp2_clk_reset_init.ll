; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-mmp2.c_mmp2_clk_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-mmp2.c_mmp2_clk_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.device_node = type { i32 }
%struct.mmp2_clk_unit = type { i64 }
%struct.mmp_clk_reset_cell = type { i32, i32, i64, i64, i32 }

@apbc_gate_clks = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.mmp2_clk_unit*)* @mmp2_clk_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp2_clk_reset_init(%struct.device_node* %0, %struct.mmp2_clk_unit* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.mmp2_clk_unit*, align 8
  %5 = alloca %struct.mmp_clk_reset_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.mmp2_clk_unit* %1, %struct.mmp2_clk_unit** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mmp_clk_reset_cell* @kcalloc(i32 %10, i32 32, i32 %11)
  store %struct.mmp_clk_reset_cell* %12, %struct.mmp_clk_reset_cell** %5, align 8
  %13 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %14 = icmp ne %struct.mmp_clk_reset_cell* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %77

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %69, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %28, i64 %30
  %32 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %31, i32 0, i32 4
  store i32 %27, i32* %32, align 8
  %33 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %4, align 8
  %34 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %35, %41
  %43 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %43, i64 %45
  %47 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %46, i32 0, i32 3
  store i64 %42, i64* %47, align 8
  %48 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %48, i64 %50
  %52 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %59, i64 %61
  %63 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 4
  %64 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %64, i64 %66
  %68 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %67, i32 0, i32 0
  store i32 4, i32* %68, align 8
  br label %69

69:                                               ; preds = %21
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %17

72:                                               ; preds = %17
  %73 = load %struct.device_node*, %struct.device_node** %3, align 8
  %74 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @mmp_clk_reset_register(%struct.device_node* %73, %struct.mmp_clk_reset_cell* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %15
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.mmp_clk_reset_cell* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mmp_clk_reset_register(%struct.device_node*, %struct.mmp_clk_reset_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
