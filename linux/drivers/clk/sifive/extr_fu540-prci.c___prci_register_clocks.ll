; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c___prci_register_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c___prci_register_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__prci_clock = type { %struct.TYPE_5__, i32, i64, %struct.__prci_data*, i32, i32 }
%struct.TYPE_5__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i32, i32, i32* }
%struct.__prci_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__** }
%struct.device = type { i32 }

@EXPECTED_CLK_PARENT_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"expected only two parent clocks, found %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@__prci_init_clocks = common dso_local global %struct.__prci_clock* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register clock %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to register clkdev for %s: %d\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"could not add hw_provider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.__prci_data*)* @__prci_register_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__prci_register_clocks(%struct.device* %0, %struct.__prci_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.__prci_data*, align 8
  %6 = alloca %struct.clk_init_data, align 8
  %7 = alloca %struct.__prci_clock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.__prci_data* %1, %struct.__prci_data** %5, align 8
  %11 = bitcast %struct.clk_init_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @of_clk_get_parent_count(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @EXPECTED_CLK_PARENT_COUNT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %127

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %106, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.__prci_clock*, %struct.__prci_clock** @__prci_init_clocks, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.__prci_clock* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %109

31:                                               ; preds = %26
  %32 = load %struct.__prci_clock*, %struct.__prci_clock** @__prci_init_clocks, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %32, i64 %34
  store %struct.__prci_clock* %35, %struct.__prci_clock** %7, align 8
  %36 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %37 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %41 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 3
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %45 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %49 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %50, align 8
  %51 = load %struct.__prci_data*, %struct.__prci_data** %5, align 8
  %52 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %53 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %52, i32 0, i32 3
  store %struct.__prci_data* %51, %struct.__prci_data** %53, align 8
  %54 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %55 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %31
  %59 = load %struct.__prci_data*, %struct.__prci_data** %5, align 8
  %60 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %61 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @__prci_wrpll_read_cfg(%struct.__prci_data* %59, i64 %62)
  br label %64

64:                                               ; preds = %58, %31
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %67 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %66, i32 0, i32 0
  %68 = call i32 @devm_clk_hw_register(%struct.device* %65, %struct.TYPE_5__* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @dev_warn(%struct.device* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %127

78:                                               ; preds = %64
  %79 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %80 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %79, i32 0, i32 0
  %81 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %82 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_name(%struct.device* %84)
  %86 = call i32 @clk_hw_register_clkdev(%struct.TYPE_5__* %80, i32 %83, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @dev_warn(%struct.device* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %127

96:                                               ; preds = %78
  %97 = load %struct.__prci_clock*, %struct.__prci_clock** %7, align 8
  %98 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %97, i32 0, i32 0
  %99 = load %struct.__prci_data*, %struct.__prci_data** %5, align 8
  %100 = getelementptr inbounds %struct.__prci_data, %struct.__prci_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %102, i64 %104
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %105, align 8
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %26

109:                                              ; preds = %26
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.__prci_data*, %struct.__prci_data** %5, align 8
  %112 = getelementptr inbounds %struct.__prci_data, %struct.__prci_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %116 = load %struct.__prci_data*, %struct.__prci_data** %5, align 8
  %117 = getelementptr inbounds %struct.__prci_data, %struct.__prci_data* %116, i32 0, i32 0
  %118 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %114, i32 %115, %struct.TYPE_4__* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %109
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %121, %89, %71, %19
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_clk_get_parent_count(i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.__prci_clock*) #2

declare dso_local i32 @__prci_wrpll_read_cfg(%struct.__prci_data*, i64) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_5__*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #2

declare dso_local i32 @clk_hw_register_clkdev(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @dev_name(%struct.device*) #2

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
