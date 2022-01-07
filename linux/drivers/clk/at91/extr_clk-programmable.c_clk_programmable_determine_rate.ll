; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-programmable.c_clk_programmable_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.clk_programmable = type { %struct.clk_programmable_layout* }
%struct.clk_programmable_layout = type { i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_programmable_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_programmable_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_programmable*, align 8
  %7 = alloca %struct.clk_programmable_layout*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw* %14)
  store %struct.clk_programmable* %15, %struct.clk_programmable** %6, align 8
  %16 = load %struct.clk_programmable*, %struct.clk_programmable** %6, align 8
  %17 = getelementptr inbounds %struct.clk_programmable, %struct.clk_programmable* %16, i32 0, i32 0
  %18 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %17, align 8
  store %struct.clk_programmable_layout* %18, %struct.clk_programmable_layout** %7, align 8
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %122, %2
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %24 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %125

26:                                               ; preds = %21
  %27 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %27, i32 %28)
  store %struct.clk_hw* %29, %struct.clk_hw** %8, align 8
  %30 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %31 = icmp ne %struct.clk_hw* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %122

33:                                               ; preds = %26
  %34 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %35 = call i64 @clk_hw_get_rate(%struct.clk_hw* %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %7, align 8
  %37 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %7, align 8
  %44 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %48, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %55 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ule i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %63

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %41

63:                                               ; preds = %58, %41
  br label %87

64:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.clk_programmable_layout*, %struct.clk_programmable_layout** %7, align 8
  %68 = getelementptr inbounds %struct.clk_programmable_layout, %struct.clk_programmable_layout* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = lshr i64 %72, %74
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %78 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ule i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %65

86:                                               ; preds = %81, %65
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %90 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %122

94:                                               ; preds = %87
  %95 = load i64, i64* %9, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %94
  %98 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %99 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub i64 %100, %101
  %103 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %104 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = sub i64 %105, %106
  %108 = icmp ult i64 %102, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %97, %94
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %113 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %115 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %116 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %115, i32 0, i32 2
  store %struct.clk_hw* %114, %struct.clk_hw** %116, align 8
  br label %117

117:                                              ; preds = %109, %97
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  br label %125

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %93, %32
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %21

125:                                              ; preds = %120, %21
  %126 = load i64, i64* %9, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i64, i64* %9, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %135

131:                                              ; preds = %125
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %134 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.clk_programmable* @to_clk_programmable(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
