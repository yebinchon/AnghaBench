; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa910.c_pxa910_clk_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa910.c_pxa910_clk_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.device_node = type { i32 }
%struct.pxa910_clk_unit = type { i64 }
%struct.mmp_clk_reset_cell = type { i32, i32, i64, i64, i32 }

@apbc_gate_clks = common dso_local global %struct.TYPE_4__* null, align 8
@apbcp_gate_clks = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.pxa910_clk_unit*)* @pxa910_clk_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa910_clk_reset_init(%struct.device_node* %0, %struct.pxa910_clk_unit* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pxa910_clk_unit*, align 8
  %5 = alloca %struct.mmp_clk_reset_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.pxa910_clk_unit* %1, %struct.pxa910_clk_unit** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbc_gate_clks, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbcp_gate_clks, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mmp_clk_reset_cell* @kcalloc(i32 %18, i32 32, i32 %19)
  store %struct.mmp_clk_reset_cell* %20, %struct.mmp_clk_reset_cell** %5, align 8
  %21 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %22 = icmp ne %struct.mmp_clk_reset_cell* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %162

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %87, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %90

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbc_gate_clks, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %36, i64 %40
  %42 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %41, i32 0, i32 4
  store i32 %35, i32* %42, align 8
  %43 = load %struct.pxa910_clk_unit*, %struct.pxa910_clk_unit** %4, align 8
  %44 = getelementptr inbounds %struct.pxa910_clk_unit, %struct.pxa910_clk_unit* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbc_gate_clks, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %45, %51
  %53 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %53, i64 %57
  %59 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %58, i32 0, i32 3
  store i64 %52, i64* %59, align 8
  %60 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %60, i64 %64
  %66 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbc_gate_clks, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %73, i64 %77
  %79 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %78, i32 0, i32 1
  store i32 %72, i32* %79, align 4
  %80 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %80, i64 %84
  %86 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  br label %87

87:                                               ; preds = %29
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %25

90:                                               ; preds = %25
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %154, %90
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %157

96:                                               ; preds = %92
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbcp_gate_clks, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %103, i64 %107
  %109 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %108, i32 0, i32 4
  store i32 %102, i32* %109, align 8
  %110 = load %struct.pxa910_clk_unit*, %struct.pxa910_clk_unit** %4, align 8
  %111 = getelementptr inbounds %struct.pxa910_clk_unit, %struct.pxa910_clk_unit* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbc_gate_clks, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %112, %118
  %120 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %120, i64 %124
  %126 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %125, i32 0, i32 3
  store i64 %119, i64* %126, align 8
  %127 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %127, i64 %131
  %133 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @apbc_gate_clks, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %140, i64 %144
  %146 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %145, i32 0, i32 1
  store i32 %139, i32* %146, align 4
  %147 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %147, i64 %151
  %153 = getelementptr inbounds %struct.mmp_clk_reset_cell, %struct.mmp_clk_reset_cell* %152, i32 0, i32 0
  store i32 4, i32* %153, align 8
  br label %154

154:                                              ; preds = %96
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %92

157:                                              ; preds = %92
  %158 = load %struct.device_node*, %struct.device_node** %3, align 8
  %159 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @mmp_clk_reset_register(%struct.device_node* %158, %struct.mmp_clk_reset_cell* %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %23
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local %struct.mmp_clk_reset_cell* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mmp_clk_reset_register(%struct.device_node*, %struct.mmp_clk_reset_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
