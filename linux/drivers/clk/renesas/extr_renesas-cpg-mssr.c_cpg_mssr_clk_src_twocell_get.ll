; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mssr_clk_src_twocell_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mssr_clk_src_twocell_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.cpg_mssr_priv = type { i32, i32, i32, %struct.clk**, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid %s clock index %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid CPG clock type %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot get %s clock %u: %ld\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"clock (%u, %u) is %pC at %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.of_phandle_args*, i8*)* @cpg_mssr_clk_src_twocell_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @cpg_mssr_clk_src_twocell_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpg_mssr_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.cpg_mssr_priv*
  store %struct.cpg_mssr_priv* %19, %struct.cpg_mssr_priv** %7, align 8
  %20 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %21 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %20, i32 0, i32 5
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %96 [
    i32 129, label %28
    i32 128, label %50
  ]

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %31 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.clk* @ERR_PTR(i32 %40)
  store %struct.clk* %41, %struct.clk** %3, align 8
  br label %136

42:                                               ; preds = %28
  %43 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %44 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %43, i32 0, i32 3
  %45 = load %struct.clk**, %struct.clk*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.clk*, %struct.clk** %45, i64 %47
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  store %struct.clk* %49, %struct.clk** %11, align 8
  br label %107

50:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %51 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %52 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @MOD_CLK_PACK_10(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = urem i32 %58, 10
  %60 = sub i32 7, %59
  store i32 %60, i32* %12, align 4
  br label %67

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @MOD_CLK_PACK(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = urem i32 %64, 100
  %66 = sub i32 31, %65
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %73 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp uge i32 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70, %67
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.clk* @ERR_PTR(i32 %82)
  store %struct.clk* %83, %struct.clk** %3, align 8
  br label %136

84:                                               ; preds = %70
  %85 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %86 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %85, i32 0, i32 3
  %87 = load %struct.clk**, %struct.clk*** %86, align 8
  %88 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %7, align 8
  %89 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %90, %91
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.clk*, %struct.clk** %87, i64 %93
  %95 = load %struct.clk*, %struct.clk** %94, align 8
  store %struct.clk* %95, %struct.clk** %11, align 8
  br label %107

96:                                               ; preds = %2
  %97 = load %struct.device*, %struct.device** %8, align 8
  %98 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %99 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  %106 = call %struct.clk* @ERR_PTR(i32 %105)
  store %struct.clk* %106, %struct.clk** %3, align 8
  br label %136

107:                                              ; preds = %84, %42
  %108 = load %struct.clk*, %struct.clk** %11, align 8
  %109 = call i64 @IS_ERR(%struct.clk* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.device*, %struct.device** %8, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.clk*, %struct.clk** %11, align 8
  %116 = call i32 @PTR_ERR(%struct.clk* %115)
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %113, i32 %114, i32 %116)
  br label %134

118:                                              ; preds = %107
  %119 = load %struct.device*, %struct.device** %8, align 8
  %120 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %121 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %126 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.clk*, %struct.clk** %11, align 8
  %131 = load %struct.clk*, %struct.clk** %11, align 8
  %132 = call i32 @clk_get_rate(%struct.clk* %131)
  %133 = call i32 @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %129, %struct.clk* %130, i32 %132)
  br label %134

134:                                              ; preds = %118, %111
  %135 = load %struct.clk*, %struct.clk** %11, align 8
  store %struct.clk* %135, %struct.clk** %3, align 8
  br label %136

136:                                              ; preds = %134, %96, %76, %34
  %137 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %137
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @MOD_CLK_PACK_10(i32) #1

declare dso_local i32 @MOD_CLK_PACK(i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, %struct.clk*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
