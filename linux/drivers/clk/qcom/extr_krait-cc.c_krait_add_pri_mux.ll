; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_add_pri_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_add_pri_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.krait_mux_clk = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i8*, i32, i32*, i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@krait_mux_clk_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pri_mux_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"krait%s_pri_mux\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hfpll%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hfpll%s_div\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"krait%s_sec_mux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i32, i8*, i32)* @krait_add_pri_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @krait_add_pri_mux(%struct.device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.krait_mux_clk*, align 8
  %12 = alloca [3 x i8*], align 16
  %13 = alloca %struct.clk_init_data, align 8
  %14 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 0
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  store i8** %16, i8*** %15, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 2
  %19 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 3
  store i32* @krait_mux_clk_ops, i32** %20, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 4
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8** %22)
  store i32 %23, i32* %21, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.krait_mux_clk* @devm_kzalloc(%struct.device* %24, i32 40, i32 %25)
  store %struct.krait_mux_clk* %26, %struct.krait_mux_clk** %11, align 8
  %27 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %28 = icmp ne %struct.krait_mux_clk* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.clk* @ERR_PTR(i32 %31)
  store %struct.clk* %32, %struct.clk** %5, align 8
  br label %131

33:                                               ; preds = %4
  %34 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %35 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %34, i32 0, i32 0
  store i32 3, i32* %35, align 8
  %36 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %37 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %40 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %45 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @pri_mux_map, align 4
  %47 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %48 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %50 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.clk_init_data* %13, %struct.clk_init_data** %51, align 8
  %52 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %53 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %52, i32 0, i32 3
  store i32 2, i32* %53, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @kasprintf(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %33
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.clk* @ERR_PTR(i32 %63)
  store %struct.clk* %64, %struct.clk** %5, align 8
  br label %131

65:                                               ; preds = %33
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @kasprintf(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  store i8* %68, i8** %69, align 16
  %70 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %71 = load i8*, i8** %70, align 16
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.clk* @ERR_PTR(i32 %75)
  store %struct.clk* %76, %struct.clk** %14, align 8
  br label %126

77:                                               ; preds = %65
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = call i8* @kasprintf(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 1
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  %88 = call %struct.clk* @ERR_PTR(i32 %87)
  store %struct.clk* %88, %struct.clk** %14, align 8
  br label %122

89:                                               ; preds = %77
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i8* @kasprintf(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 2
  store i8* %92, i8** %93, align 16
  %94 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 2
  %95 = load i8*, i8** %94, align 16
  %96 = icmp ne i8* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  %100 = call %struct.clk* @ERR_PTR(i32 %99)
  store %struct.clk* %100, %struct.clk** %14, align 8
  br label %118

101:                                              ; preds = %89
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %104 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %103, i32 0, i32 4
  %105 = call %struct.clk* @devm_clk_register(%struct.device* %102, %struct.TYPE_2__* %104)
  store %struct.clk* %105, %struct.clk** %14, align 8
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = load %struct.clk*, %struct.clk** %14, align 8
  %108 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %11, align 8
  %109 = call i32 @krait_notifier_register(%struct.device* %106, %struct.clk* %107, %struct.krait_mux_clk* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %114

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %112
  %115 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 2
  %116 = load i8*, i8** %115, align 16
  %117 = call i32 @kfree(i8* %116)
  br label %118

118:                                              ; preds = %114, %97
  %119 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @kfree(i8* %120)
  br label %122

122:                                              ; preds = %118, %85
  %123 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %124 = load i8*, i8** %123, align 16
  %125 = call i32 @kfree(i8* %124)
  br label %126

126:                                              ; preds = %122, %73
  %127 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @kfree(i8* %128)
  %130 = load %struct.clk*, %struct.clk** %14, align 8
  store %struct.clk* %130, %struct.clk** %5, align 8
  br label %131

131:                                              ; preds = %126, %61, %29
  %132 = load %struct.clk*, %struct.clk** %5, align 8
  ret %struct.clk* %132
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local %struct.krait_mux_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @krait_notifier_register(%struct.device*, %struct.clk*, %struct.krait_mux_clk*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
