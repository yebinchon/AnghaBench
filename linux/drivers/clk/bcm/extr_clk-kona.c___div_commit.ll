; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___div_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___div_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32 }
%struct.bcm_clk_div = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.bcm_clk_trig = type { i32 }

@BAD_SCALED_DIV_VALUE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_div*, %struct.bcm_clk_trig*)* @__div_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__div_commit(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1, %struct.bcm_clk_div* %2, %struct.bcm_clk_trig* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccu_data*, align 8
  %7 = alloca %struct.bcm_clk_gate*, align 8
  %8 = alloca %struct.bcm_clk_div*, align 8
  %9 = alloca %struct.bcm_clk_trig*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ccu_data* %0, %struct.ccu_data** %6, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %7, align 8
  store %struct.bcm_clk_div* %2, %struct.bcm_clk_div** %8, align 8
  store %struct.bcm_clk_trig* %3, %struct.bcm_clk_trig** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %15 = call i32 @divider_is_fixed(%struct.bcm_clk_div* %14)
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %18 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BAD_SCALED_DIV_VALUE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %4
  %25 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %26 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %27 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__ccu_read(%struct.ccu_data* %25, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %34 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %39 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bitfield_extract(i32 %32, i32 %37, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @scaled_div_value(%struct.bcm_clk_div* %44, i32 %45)
  %47 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %48 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %129

51:                                               ; preds = %4
  %52 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %53 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %54 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @divider(%struct.bcm_clk_div* %52, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %60 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %61 = call i32 @__is_clk_gate_enabled(%struct.ccu_data* %59, %struct.bcm_clk_gate* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %51
  %65 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %66 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %67 = call i32 @__clk_gate(%struct.ccu_data* %65, %struct.bcm_clk_gate* %66, i32 1)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %127

72:                                               ; preds = %64, %51
  %73 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %74 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %75 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__ccu_read(%struct.ccu_data* %73, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %82 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %87 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @bitfield_replace(i32 %80, i32 %85, i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %94 = load %struct.bcm_clk_div*, %struct.bcm_clk_div** %8, align 8
  %95 = getelementptr inbounds %struct.bcm_clk_div, %struct.bcm_clk_div* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @__ccu_write(%struct.ccu_data* %93, i32 %98, i32 %99)
  %101 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %102 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %9, align 8
  %103 = call i32 @__clk_trigger(%struct.ccu_data* %101, %struct.bcm_clk_trig* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %72
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %72
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %108
  %112 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %113 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %114 = call i32 @__clk_gate(%struct.ccu_data* %112, %struct.bcm_clk_gate* %113, i32 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  br label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @ENXIO, align 4
  %123 = sub nsw i32 0, %122
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i32 [ %120, %119 ], [ %123, %121 ]
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %111, %108
  br label %127

127:                                              ; preds = %126, %69
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %24
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @divider_is_fixed(%struct.bcm_clk_div*) #1

declare dso_local i32 @__ccu_read(%struct.ccu_data*, i32) #1

declare dso_local i32 @bitfield_extract(i32, i32, i32) #1

declare dso_local i32 @scaled_div_value(%struct.bcm_clk_div*, i32) #1

declare dso_local i32 @divider(%struct.bcm_clk_div*, i32) #1

declare dso_local i32 @__is_clk_gate_enabled(%struct.ccu_data*, %struct.bcm_clk_gate*) #1

declare dso_local i32 @__clk_gate(%struct.ccu_data*, %struct.bcm_clk_gate*, i32) #1

declare dso_local i32 @bitfield_replace(i32, i32, i32, i32) #1

declare dso_local i32 @__ccu_write(%struct.ccu_data*, i32, i32) #1

declare dso_local i32 @__clk_trigger(%struct.ccu_data*, %struct.bcm_clk_trig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
