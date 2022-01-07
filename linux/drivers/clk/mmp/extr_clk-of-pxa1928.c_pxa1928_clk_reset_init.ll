; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa1928.c_pxa1928_clk_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa1928.c_pxa1928_clk_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.device_node = type { i32 }
%struct.pxa1928_clk_unit = type { i64 }
%struct.mmp_clk_reset_cell = type { i32, i32, i64, i64, i32 }

@apbc_gate_clks = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.pxa1928_clk_unit*)* @pxa1928_clk_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa1928_clk_reset_init(%struct.device_node* %0, %struct.pxa1928_clk_unit* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pxa1928_clk_unit*, align 8
  %5 = alloca %struct.mmp_clk_reset_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.pxa1928_clk_unit* %1, %struct.pxa1928_clk_unit** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mmp_clk_reset_cell* @kcalloc(i32 %11, i32 32, i32 %12)
  store %struct.mmp_clk_reset_cell* %13, %struct.mmp_clk_reset_cell** %5, align 8
  %14 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %15 = icmp ne %struct.mmp_clk_reset_cell* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %88

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %80, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %29, i64 %33
  %35 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %34, i32 0, i32 4
  store i32 %28, i32* %35, align 8
  %36 = load %struct.pxa1928_clk_unit*, %struct.pxa1928_clk_unit** %4, align 8
  %37 = getelementptr inbounds %struct.pxa1928_clk_unit, %struct.pxa1928_clk_unit* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %38, %44
  %46 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %46, i64 %50
  %52 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %51, i32 0, i32 3
  store i64 %45, i64* %52, align 8
  %53 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %53, i64 %57
  %59 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apbc_gate_clks, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %66, i64 %70
  %72 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %71, i32 0, i32 1
  store i32 %65, i32* %72, align 4
  %73 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %73, i64 %77
  %79 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %78, i32 0, i32 0
  store i32 4, i32* %79, align 8
  br label %80

80:                                               ; preds = %22
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %18

83:                                               ; preds = %18
  %84 = load %struct.device_node*, %struct.device_node** %3, align 8
  %85 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @mmp_clk_reset_register(%struct.device_node* %84, %struct.mmp_clk_reset_cell* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %16
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
