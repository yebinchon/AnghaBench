; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdsc_desc = type { i64, %struct.gdsc**, %struct.device* }
%struct.gdsc = type { i32, i64, %struct.reset_controller_dev*, %struct.regmap* }
%struct.device = type { i32 }
%struct.reset_controller_dev = type { i32 }
%struct.regmap = type { i32 }
%struct.genpd_onecell_data = type { i64, i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdsc_register(%struct.gdsc_desc* %0, %struct.reset_controller_dev* %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gdsc_desc*, align 8
  %6 = alloca %struct.reset_controller_dev*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.genpd_onecell_data*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.gdsc**, align 8
  %13 = alloca i64, align 8
  store %struct.gdsc_desc* %0, %struct.gdsc_desc** %5, align 8
  store %struct.reset_controller_dev* %1, %struct.reset_controller_dev** %6, align 8
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %14 = load %struct.gdsc_desc*, %struct.gdsc_desc** %5, align 8
  %15 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %14, i32 0, i32 2
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %11, align 8
  %17 = load %struct.gdsc_desc*, %struct.gdsc_desc** %5, align 8
  %18 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %17, i32 0, i32 1
  %19 = load %struct.gdsc**, %struct.gdsc*** %18, align 8
  store %struct.gdsc** %19, %struct.gdsc*** %12, align 8
  %20 = load %struct.gdsc_desc*, %struct.gdsc_desc** %5, align 8
  %21 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.device*, %struct.device** %11, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.device* %23, i32 16, i32 %24)
  store %struct.genpd_onecell_data* %25, %struct.genpd_onecell_data** %10, align 8
  %26 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %10, align 8
  %27 = icmp ne %struct.genpd_onecell_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %151

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32** @devm_kcalloc(%struct.device* %32, i64 %33, i32 8, i32 %34)
  %36 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %10, align 8
  %37 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %36, i32 0, i32 1
  store i32** %35, i32*** %37, align 8
  %38 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %10, align 8
  %39 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %151

45:                                               ; preds = %31
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %10, align 8
  %48 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %100, %45
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %13, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %103

54:                                               ; preds = %49
  %55 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %55, i64 %57
  %59 = load %struct.gdsc*, %struct.gdsc** %58, align 8
  %60 = icmp ne %struct.gdsc* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %100

62:                                               ; preds = %54
  %63 = load %struct.regmap*, %struct.regmap** %7, align 8
  %64 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %64, i64 %66
  %68 = load %struct.gdsc*, %struct.gdsc** %67, align 8
  %69 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %68, i32 0, i32 3
  store %struct.regmap* %63, %struct.regmap** %69, align 8
  %70 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %6, align 8
  %71 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %71, i64 %73
  %75 = load %struct.gdsc*, %struct.gdsc** %74, align 8
  %76 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %75, i32 0, i32 2
  store %struct.reset_controller_dev* %70, %struct.reset_controller_dev** %76, align 8
  %77 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %77, i64 %79
  %81 = load %struct.gdsc*, %struct.gdsc** %80, align 8
  %82 = call i32 @gdsc_init(%struct.gdsc* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %62
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %151

87:                                               ; preds = %62
  %88 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %88, i64 %90
  %92 = load %struct.gdsc*, %struct.gdsc** %91, align 8
  %93 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %92, i32 0, i32 0
  %94 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %10, align 8
  %95 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  store i32* %93, i32** %99, align 8
  br label %100

100:                                              ; preds = %87, %61
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %49

103:                                              ; preds = %49
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %142, %103
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %13, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %104
  %110 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %110, i64 %112
  %114 = load %struct.gdsc*, %struct.gdsc** %113, align 8
  %115 = icmp ne %struct.gdsc* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  br label %142

117:                                              ; preds = %109
  %118 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %118, i64 %120
  %122 = load %struct.gdsc*, %struct.gdsc** %121, align 8
  %123 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %117
  %127 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %127, i64 %129
  %131 = load %struct.gdsc*, %struct.gdsc** %130, align 8
  %132 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.gdsc**, %struct.gdsc*** %12, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %134, i64 %136
  %138 = load %struct.gdsc*, %struct.gdsc** %137, align 8
  %139 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %138, i32 0, i32 0
  %140 = call i32 @pm_genpd_add_subdomain(i64 %133, i32* %139)
  br label %141

141:                                              ; preds = %126, %117
  br label %142

142:                                              ; preds = %141, %116
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %104

145:                                              ; preds = %104
  %146 = load %struct.device*, %struct.device** %11, align 8
  %147 = getelementptr inbounds %struct.device, %struct.device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %10, align 8
  %150 = call i32 @of_genpd_add_provider_onecell(i32 %148, %struct.genpd_onecell_data* %149)
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %145, %85, %42, %28
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32** @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @gdsc_init(%struct.gdsc*) #1

declare dso_local i32 @pm_genpd_add_subdomain(i64, i32*) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
