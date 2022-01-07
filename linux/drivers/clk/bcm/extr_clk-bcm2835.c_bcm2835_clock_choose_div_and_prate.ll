; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_choose_div_and_prate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_clock_choose_div_and_prate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.bcm2835_clock = type { %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_clock_data = type { i32, i32, i64, i64, i64 }
%struct.bcm2835_cprman = type { i32 }

@CM_DIV_FRAC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"frac bits are not used when propagating rate change\00", align 1
@CM_DIV_FRAC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i32, i64, i32*, i64*, i64*)* @bcm2835_clock_choose_div_and_prate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bcm2835_clock_choose_div_and_prate(%struct.clk_hw* %0, i32 %1, i64 %2, i32* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.bcm2835_clock*, align 8
  %15 = alloca %struct.bcm2835_cprman*, align 8
  %16 = alloca %struct.bcm2835_clock_data*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.clk_hw*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %26 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %27 = call %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw* %26)
  store %struct.bcm2835_clock* %27, %struct.bcm2835_clock** %14, align 8
  %28 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %14, align 8
  %29 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %28, i32 0, i32 1
  %30 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %29, align 8
  store %struct.bcm2835_cprman* %30, %struct.bcm2835_cprman** %15, align 8
  %31 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %14, align 8
  %32 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %31, i32 0, i32 0
  %33 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %32, align 8
  store %struct.bcm2835_clock_data* %33, %struct.bcm2835_clock_data** %16, align 8
  store i64 0, i64* %17, align 8
  %34 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %34, i32 %35)
  store %struct.clk_hw* %36, %struct.clk_hw** %21, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %16, align 8
  %40 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %106, label %44

44:                                               ; preds = %6
  %45 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  %46 = call i64 @clk_hw_get_rate(%struct.clk_hw* %45)
  %47 = load i64*, i64** %12, align 8
  store i64 %46, i64* %47, align 8
  %48 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @bcm2835_clock_choose_div(%struct.clk_hw* %48, i64 %49, i64 %51, i32 1)
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %14, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @bcm2835_clock_rate_from_divisor(%struct.bcm2835_clock* %54, i64 %56, i32 %58)
  %60 = load i64*, i64** %13, align 8
  store i64 %59, i64* %60, align 8
  %61 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %16, align 8
  %62 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %103

65:                                               ; preds = %44
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CM_DIV_FRAC_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %65
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CM_DIV_FRAC_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  store i32 %76, i32* %24, align 4
  %77 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %14, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %24, align 4
  %81 = call i64 @bcm2835_clock_rate_from_divisor(%struct.bcm2835_clock* %77, i64 %79, i32 %80)
  store i64 %81, i64* %22, align 8
  %82 = load i32, i32* @CM_DIV_FRAC_MASK, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %24, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %24, align 4
  %86 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %14, align 8
  %87 = load i64*, i64** %12, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %24, align 4
  %90 = call i64 @bcm2835_clock_rate_from_divisor(%struct.bcm2835_clock* %86, i64 %88, i32 %89)
  store i64 %90, i64* %23, align 8
  %91 = load i64*, i64** %13, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %13, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %23, align 8
  %96 = sub i64 %94, %95
  %97 = load i64, i64* %22, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %97, %99
  %101 = call i64 @max(i64 %96, i64 %100)
  %102 = sub i64 %92, %101
  store i64 %102, i64* %7, align 8
  br label %179

103:                                              ; preds = %65, %44
  %104 = load i64*, i64** %13, align 8
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %7, align 8
  br label %179

106:                                              ; preds = %6
  %107 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %16, align 8
  %108 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %15, align 8
  %113 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_warn(i32 %114, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %16, align 8
  %118 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 2, i32 1
  store i32 %122, i32* %19, align 4
  %123 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %16, align 8
  %124 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @BIT(i32 %125)
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %19, align 4
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %163, %116
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %166

133:                                              ; preds = %129
  %134 = load %struct.clk_hw*, %struct.clk_hw** %21, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %135, %137
  %139 = call i64 @clk_hw_round_rate(%struct.clk_hw* %134, i64 %138)
  store i64 %139, i64* %25, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %25, align 8
  %143 = udiv i64 %142, %141
  store i64 %143, i64* %25, align 8
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %133
  %148 = load i64, i64* %25, align 8
  %149 = load i64, i64* %17, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i64, i64* %25, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp ule i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151, %133
  %156 = load i64, i64* %25, align 8
  store i64 %156, i64* %17, align 8
  br label %157

157:                                              ; preds = %155, %151, %147
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %10, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %166

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %129

166:                                              ; preds = %161, %129
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* @CM_DIV_FRAC_BITS, align 4
  %169 = shl i32 %167, %168
  %170 = load i32*, i32** %11, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %17, align 8
  %174 = mul i64 %172, %173
  %175 = load i64*, i64** %12, align 8
  store i64 %174, i64* %175, align 8
  %176 = load i64, i64* %17, align 8
  %177 = load i64*, i64** %13, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i64, i64* %17, align 8
  store i64 %178, i64* %7, align 8
  br label %179

179:                                              ; preds = %166, %103, %71
  %180 = load i64, i64* %7, align 8
  ret i64 %180
}

declare dso_local %struct.bcm2835_clock* @bcm2835_clock_from_hw(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @bcm2835_clock_choose_div(%struct.clk_hw*, i64, i64, i32) #1

declare dso_local i64 @bcm2835_clock_rate_from_divisor(%struct.bcm2835_clock*, i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
