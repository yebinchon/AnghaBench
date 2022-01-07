; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_clk = type { i32, %struct.TYPE_2__, i32*, %struct.tegra_bpmp*, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i8**, i32* }
%struct.tegra_bpmp = type { i32 }
%struct.tegra_bpmp_clk_info = type { i32, i8*, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEGRA_BPMP_CLK_HAS_MUX = common dso_local global i32 0, align 4
@TEGRA_BPMP_CLK_HAS_SET_RATE = common dso_local global i32 0, align 4
@tegra_bpmp_clk_mux_rate_ops = common dso_local global i32 0, align 4
@tegra_bpmp_clk_mux_ops = common dso_local global i32 0, align 4
@tegra_bpmp_clk_rate_ops = common dso_local global i32 0, align 4
@tegra_bpmp_clk_gate_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no parent %u found for %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_bpmp_clk* (%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info*, i32)* @tegra_bpmp_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_bpmp_clk* @tegra_bpmp_clk_register(%struct.tegra_bpmp* %0, %struct.tegra_bpmp_clk_info* %1, %struct.tegra_bpmp_clk_info* %2, i32 %3) #0 {
  %5 = alloca %struct.tegra_bpmp_clk*, align 8
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca %struct.tegra_bpmp_clk_info*, align 8
  %8 = alloca %struct.tegra_bpmp_clk_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_bpmp_clk*, align 8
  %11 = alloca %struct.clk_init_data, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tegra_bpmp_clk_info*, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %6, align 8
  store %struct.tegra_bpmp_clk_info* %1, %struct.tegra_bpmp_clk_info** %7, align 8
  store %struct.tegra_bpmp_clk_info* %2, %struct.tegra_bpmp_clk_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tegra_bpmp_clk* @devm_kzalloc(i32 %18, i32 40, i32 %19)
  store %struct.tegra_bpmp_clk* %20, %struct.tegra_bpmp_clk** %10, align 8
  %21 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %22 = icmp ne %struct.tegra_bpmp_clk* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.tegra_bpmp_clk* @ERR_PTR(i32 %25)
  store %struct.tegra_bpmp_clk* %26, %struct.tegra_bpmp_clk** %5, align 8
  br label %191

27:                                               ; preds = %4
  %28 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %32 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %34 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %35 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %34, i32 0, i32 3
  store %struct.tegra_bpmp* %33, %struct.tegra_bpmp** %35, align 8
  %36 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %37 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %40 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32* @devm_kcalloc(i32 %38, i32 %41, i32 4, i32 %42)
  %44 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %45 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %47 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %27
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.tegra_bpmp_clk* @ERR_PTR(i32 %52)
  store %struct.tegra_bpmp_clk* %53, %struct.tegra_bpmp_clk** %5, align 8
  br label %191

54:                                               ; preds = %27
  %55 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %56 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %59 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = call i32 @memset(%struct.clk_init_data* %11, i32 0, i32 32)
  %61 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %62 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %66 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.clk_init_data* %11, %struct.clk_init_data** %67, align 8
  %68 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %69 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TEGRA_BPMP_CLK_HAS_MUX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %54
  %75 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %76 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TEGRA_BPMP_CLK_HAS_SET_RATE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  store i32* @tegra_bpmp_clk_mux_rate_ops, i32** %82, align 8
  br label %85

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  store i32* @tegra_bpmp_clk_mux_ops, i32** %84, align 8
  br label %85

85:                                               ; preds = %83, %81
  br label %98

86:                                               ; preds = %54
  %87 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %88 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TEGRA_BPMP_CLK_HAS_SET_RATE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  store i32* @tegra_bpmp_clk_rate_ops, i32** %94, align 8
  br label %97

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  store i32* @tegra_bpmp_clk_gate_ops, i32** %96, align 8
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %85
  %99 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %100 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  store i32 %101, i32* %102, align 8
  %103 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %104 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8** @kcalloc(i32 %105, i32 8, i32 %106)
  store i8** %107, i8*** %12, align 8
  %108 = load i8**, i8*** %12, align 8
  %109 = icmp ne i8** %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %98
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  %113 = call %struct.tegra_bpmp_clk* @ERR_PTR(i32 %112)
  store %struct.tegra_bpmp_clk* %113, %struct.tegra_bpmp_clk** %5, align 8
  br label %191

114:                                              ; preds = %98
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %170, %114
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %118 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ult i32 %116, %119
  br i1 %120, label %121, label %173

121:                                              ; preds = %115
  %122 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %123 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %130 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %138 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call %struct.tegra_bpmp_clk_info* @tegra_bpmp_clk_find(%struct.tegra_bpmp_clk_info* %135, i32 %136, i32 %143)
  store %struct.tegra_bpmp_clk_info* %144, %struct.tegra_bpmp_clk_info** %15, align 8
  %145 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %15, align 8
  %146 = icmp ne %struct.tegra_bpmp_clk_info* %145, null
  br i1 %146, label %162, label %147

147:                                              ; preds = %121
  %148 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %149 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %152 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %7, align 8
  %159 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dev_err(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %160)
  br label %170

162:                                              ; preds = %121
  %163 = load %struct.tegra_bpmp_clk_info*, %struct.tegra_bpmp_clk_info** %15, align 8
  %164 = getelementptr inbounds %struct.tegra_bpmp_clk_info, %struct.tegra_bpmp_clk_info* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i8**, i8*** %12, align 8
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  store i8* %165, i8** %169, align 8
  br label %170

170:                                              ; preds = %162, %147
  %171 = load i32, i32* %13, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %115

173:                                              ; preds = %115
  %174 = load i8**, i8*** %12, align 8
  %175 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 2
  store i8** %174, i8*** %175, align 8
  %176 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %177 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  %180 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %179, i32 0, i32 1
  %181 = call i32 @devm_clk_hw_register(i32 %178, %struct.TYPE_2__* %180)
  store i32 %181, i32* %14, align 4
  %182 = load i8**, i8*** %12, align 8
  %183 = call i32 @kfree(i8** %182)
  %184 = load i32, i32* %14, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %173
  %187 = load i32, i32* %14, align 4
  %188 = call %struct.tegra_bpmp_clk* @ERR_PTR(i32 %187)
  store %struct.tegra_bpmp_clk* %188, %struct.tegra_bpmp_clk** %5, align 8
  br label %191

189:                                              ; preds = %173
  %190 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %10, align 8
  store %struct.tegra_bpmp_clk* %190, %struct.tegra_bpmp_clk** %5, align 8
  br label %191

191:                                              ; preds = %189, %186, %110, %50, %23
  %192 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %5, align 8
  ret %struct.tegra_bpmp_clk* %192
}

declare dso_local %struct.tegra_bpmp_clk* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.tegra_bpmp_clk* @ERR_PTR(i32) #1

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.tegra_bpmp_clk_info* @tegra_bpmp_clk_find(%struct.tegra_bpmp_clk_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @devm_clk_hw_register(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
