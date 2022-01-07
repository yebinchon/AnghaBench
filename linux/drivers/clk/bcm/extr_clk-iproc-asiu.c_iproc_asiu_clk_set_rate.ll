; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-asiu.c_iproc_asiu_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-asiu.c_iproc_asiu_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_asiu_clk = type { %struct.TYPE_2__, %struct.iproc_asiu* }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32 }
%struct.iproc_asiu = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @iproc_asiu_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_asiu_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iproc_asiu_clk*, align 8
  %9 = alloca %struct.iproc_asiu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.iproc_asiu_clk* @to_asiu_clk(%struct.clk_hw* %14)
  store %struct.iproc_asiu_clk* %15, %struct.iproc_asiu_clk** %8, align 8
  %16 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %17 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %16, i32 0, i32 1
  %18 = load %struct.iproc_asiu*, %struct.iproc_asiu** %17, align 8
  store %struct.iproc_asiu* %18, %struct.iproc_asiu** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %179

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = load %struct.iproc_asiu*, %struct.iproc_asiu** %9, align 8
  %33 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %36 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %34, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %42 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.iproc_asiu*, %struct.iproc_asiu** %9, align 8
  %51 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %54 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  %58 = call i32 @writel(i32 %49, i64 %57)
  store i32 0, i32* %4, align 4
  br label %179

59:                                               ; preds = %27
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @DIV_ROUND_UP(i64 %60, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %179

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = lshr i32 %69, 1
  store i32 %70, i32* %12, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %12, align 4
  %75 = load %struct.iproc_asiu*, %struct.iproc_asiu** %9, align 8
  %76 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %79 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %77, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %13, align 4
  %84 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %85 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %68
  %94 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %95 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bit_mask(i32 %97)
  %99 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %100 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %98, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %13, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %109 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %107, %111
  %113 = load i32, i32* %13, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %13, align 4
  br label %129

115:                                              ; preds = %68
  %116 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %117 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @bit_mask(i32 %119)
  %121 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %122 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %120, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %13, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %115, %93
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %134 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @bit_mask(i32 %136)
  %138 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %139 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %137, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %13, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %148 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 %146, %150
  %152 = load i32, i32* %13, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %13, align 4
  br label %168

154:                                              ; preds = %129
  %155 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %156 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @bit_mask(i32 %158)
  %160 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %161 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = shl i32 %159, %163
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %13, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %154, %132
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.iproc_asiu*, %struct.iproc_asiu** %9, align 8
  %171 = getelementptr inbounds %struct.iproc_asiu, %struct.iproc_asiu* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.iproc_asiu_clk*, %struct.iproc_asiu_clk** %8, align 8
  %174 = getelementptr inbounds %struct.iproc_asiu_clk, %struct.iproc_asiu_clk* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %172, %176
  %178 = call i32 @writel(i32 %169, i64 %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %168, %65, %31, %24
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.iproc_asiu_clk* @to_asiu_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @bit_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
