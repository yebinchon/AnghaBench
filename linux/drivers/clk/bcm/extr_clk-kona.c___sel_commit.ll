; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___sel_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c___sel_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_data = type { i32 }
%struct.bcm_clk_gate = type { i32 }
%struct.bcm_clk_sel = type { i64, i64, i64*, i32, i32, i32 }
%struct.bcm_clk_trig = type { i32 }

@BAD_CLK_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_data*, %struct.bcm_clk_gate*, %struct.bcm_clk_sel*, %struct.bcm_clk_trig*)* @__sel_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sel_commit(%struct.ccu_data* %0, %struct.bcm_clk_gate* %1, %struct.bcm_clk_sel* %2, %struct.bcm_clk_trig* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccu_data*, align 8
  %7 = alloca %struct.bcm_clk_gate*, align 8
  %8 = alloca %struct.bcm_clk_sel*, align 8
  %9 = alloca %struct.bcm_clk_trig*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ccu_data* %0, %struct.ccu_data** %6, align 8
  store %struct.bcm_clk_gate* %1, %struct.bcm_clk_gate** %7, align 8
  store %struct.bcm_clk_sel* %2, %struct.bcm_clk_sel** %8, align 8
  store %struct.bcm_clk_trig* %3, %struct.bcm_clk_trig** %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %16 = call i32 @selector_exists(%struct.bcm_clk_sel* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %22 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BAD_CLK_INDEX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %4
  %27 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %28 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %29 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @__ccu_read(%struct.ccu_data* %27, i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %34 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %37 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @bitfield_extract(i64 %32, i32 %35, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @parent_index(%struct.bcm_clk_sel* %40, i64 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @BAD_CLK_INDEX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %132

49:                                               ; preds = %26
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %52 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %132

53:                                               ; preds = %4
  %54 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %55 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %58 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %64 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %67 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %72 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %73 = call i32 @__is_clk_gate_enabled(%struct.ccu_data* %71, %struct.bcm_clk_gate* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %53
  %77 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %78 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %79 = call i32 @__clk_gate(%struct.ccu_data* %77, %struct.bcm_clk_gate* %78, i32 1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %132

84:                                               ; preds = %76, %53
  %85 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %86 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %87 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @__ccu_read(%struct.ccu_data* %85, i32 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %92 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %95 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %10, align 8
  %98 = call i64 @bitfield_replace(i64 %90, i32 %93, i32 %96, i64 %97)
  store i64 %98, i64* %11, align 8
  %99 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %100 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %8, align 8
  %101 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @__ccu_write(%struct.ccu_data* %99, i32 %102, i64 %103)
  %105 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %106 = load %struct.bcm_clk_trig*, %struct.bcm_clk_trig** %9, align 8
  %107 = call i32 @__clk_trigger(%struct.ccu_data* %105, %struct.bcm_clk_trig* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %84
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %109, %84
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = load %struct.ccu_data*, %struct.ccu_data** %6, align 8
  %117 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %7, align 8
  %118 = call i32 @__clk_gate(%struct.ccu_data* %116, %struct.bcm_clk_gate* %117, i32 0)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  br label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @ENXIO, align 4
  %127 = sub nsw i32 0, %126
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i32 [ %124, %123 ], [ %127, %125 ]
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %128, %115, %112
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %81, %49, %46
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @selector_exists(%struct.bcm_clk_sel*) #1

declare dso_local i64 @__ccu_read(%struct.ccu_data*, i32) #1

declare dso_local i64 @bitfield_extract(i64, i32, i32) #1

declare dso_local i64 @parent_index(%struct.bcm_clk_sel*, i64) #1

declare dso_local i32 @__is_clk_gate_enabled(%struct.ccu_data*, %struct.bcm_clk_gate*) #1

declare dso_local i32 @__clk_gate(%struct.ccu_data*, %struct.bcm_clk_gate*, i32) #1

declare dso_local i64 @bitfield_replace(i64, i32, i32, i64) #1

declare dso_local i32 @__ccu_write(%struct.ccu_data*, i32, i64) #1

declare dso_local i32 @__clk_trigger(%struct.ccu_data*, %struct.bcm_clk_trig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
