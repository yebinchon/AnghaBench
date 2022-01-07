; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_mix = type { i32, %struct.mmp_clk_mix_clk_table* }
%struct.mmp_clk_mix_clk_table = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @mmp_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mmp_clk_mix*, align 8
  %9 = alloca %struct.mmp_clk_mix_clk_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk_hw*, align 8
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw* %14)
  store %struct.mmp_clk_mix* %15, %struct.mmp_clk_mix** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = udiv i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %21 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %20, i32 0, i32 1
  %22 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %21, align 8
  %23 = icmp ne %struct.mmp_clk_mix_clk_table* %22, null
  br i1 %23, label %24, label %87

24:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %28 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %33 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %32, i32 0, i32 1
  %34 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %34, i64 %36
  store %struct.mmp_clk_mix_clk_table* %37, %struct.mmp_clk_mix_clk_table** %9, align 8
  %38 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %9, align 8
  %39 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %62

43:                                               ; preds = %31
  %44 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %45 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %9, align 8
  %46 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %44, i32 %47)
  store %struct.clk_hw* %48, %struct.clk_hw** %12, align 8
  %49 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %50 = call i64 @clk_hw_get_rate(%struct.clk_hw* %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %9, align 8
  %56 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %65

61:                                               ; preds = %54, %43
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %25

65:                                               ; preds = %60, %25
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %68 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %73 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %74 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %9, align 8
  %75 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @_get_mux_val(%struct.mmp_clk_mix* %73, i32 %76)
  %78 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %79 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %9, align 8
  %80 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @_get_div_val(%struct.mmp_clk_mix* %78, i32 %81)
  %83 = call i32 @_set_rate(%struct.mmp_clk_mix* %72, i32 %77, i32 %82, i32 1, i32 1)
  store i32 %83, i32* %4, align 4
  br label %124

84:                                               ; preds = %65
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %124

87:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %104, %87
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %91 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %94, i32 %95)
  store %struct.clk_hw* %96, %struct.clk_hw** %12, align 8
  %97 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %98 = call i64 @clk_hw_get_rate(%struct.clk_hw* %97)
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %107

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %88

107:                                              ; preds = %102, %88
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %110 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %109)
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %114 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @_get_mux_val(%struct.mmp_clk_mix* %114, i32 %115)
  %117 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @_get_div_val(%struct.mmp_clk_mix* %117, i32 %118)
  %120 = call i32 @_set_rate(%struct.mmp_clk_mix* %113, i32 %116, i32 %119, i32 1, i32 1)
  store i32 %120, i32* %4, align 4
  br label %124

121:                                              ; preds = %107
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %121, %112, %84, %71
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @_set_rate(%struct.mmp_clk_mix*, i32, i32, i32, i32) #1

declare dso_local i32 @_get_mux_val(%struct.mmp_clk_mix*, i32) #1

declare dso_local i32 @_get_div_val(%struct.mmp_clk_mix*, i32) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
