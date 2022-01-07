; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i64, i32, i32*, i32 }
%struct.bcm2835_cprman = type { i8**, i32 }
%struct.bcm2835_clock_data = type { i64, i8**, i32, i32, i64, i64, i32 }
%struct.bcm2835_clock = type { %struct.clk_hw, %struct.bcm2835_clock_data*, %struct.bcm2835_cprman* }

@CM_SRC_BITS = common dso_local global i32 0, align 4
@cprman_parent_names = common dso_local global i32 0, align 4
@CLK_IGNORE_UNUSED = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@bcm2835_vpu_clock_clk_ops = common dso_local global i32 0, align 4
@bcm2835_clock_clk_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@CLK_SET_PARENT_GATE = common dso_local global i32 0, align 4
@CM_ENABLE = common dso_local global i32 0, align 4
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.bcm2835_cprman*, %struct.bcm2835_clock_data*)* @bcm2835_register_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @bcm2835_register_clock(%struct.bcm2835_cprman* %0, %struct.bcm2835_clock_data* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.bcm2835_cprman*, align 8
  %5 = alloca %struct.bcm2835_clock_data*, align 8
  %6 = alloca %struct.bcm2835_clock*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bcm2835_cprman* %0, %struct.bcm2835_cprman** %4, align 8
  store %struct.bcm2835_clock_data* %1, %struct.bcm2835_clock_data** %5, align 8
  %13 = load i32, i32* @CM_SRC_BITS, align 4
  %14 = shl i32 1, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %53, %2
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %21 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %26 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8*, i8** %17, i64 %31
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @cprman_parent_names, align 4
  %34 = load i32, i32* @cprman_parent_names, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8*, i8** %17, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @match_string(i32 %33, i32 %35, i8* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %24
  %43 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %44 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8*, i8** %17, i64 %50
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %42, %24
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %18

56:                                               ; preds = %18
  %57 = call i32 @memset(%struct.clk_init_data* %7, i32 0, i32 40)
  %58 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8** %17, i8*** %58, align 8
  %59 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %60 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %64 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  %67 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %68 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CLK_IGNORE_UNUSED, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %74 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %56
  %78 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %79 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %77, %56
  %83 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %84 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32* @bcm2835_vpu_clock_clk_ops, i32** %88, align 8
  br label %112

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32* @bcm2835_clock_clk_ops, i32** %90, align 8
  %91 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  %92 = load i32, i32* @CLK_SET_PARENT_GATE, align 4
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 8
  %97 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %98 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %99 = getelementptr inbounds %struct.bcm2835_clock_data, %struct.bcm2835_clock_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cprman_read(%struct.bcm2835_cprman* %97, i32 %100)
  %102 = load i32, i32* @CM_ENABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %89
  %106 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %107 = xor i32 %106, -1
  %108 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %107
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %89
  br label %112

112:                                              ; preds = %111, %87
  %113 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %114 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.bcm2835_clock* @devm_kzalloc(i32 %115, i32 24, i32 %116)
  store %struct.bcm2835_clock* %117, %struct.bcm2835_clock** %6, align 8
  %118 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %119 = icmp ne %struct.bcm2835_clock* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  store i32 1, i32* %12, align 4
  br label %145

121:                                              ; preds = %112
  %122 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %123 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %124 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %123, i32 0, i32 2
  store %struct.bcm2835_cprman* %122, %struct.bcm2835_cprman** %124, align 8
  %125 = load %struct.bcm2835_clock_data*, %struct.bcm2835_clock_data** %5, align 8
  %126 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %127 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %126, i32 0, i32 1
  store %struct.bcm2835_clock_data* %125, %struct.bcm2835_clock_data** %127, align 8
  %128 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %129 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %129, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %130, align 8
  %131 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %132 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %135 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %134, i32 0, i32 0
  %136 = call i32 @devm_clk_hw_register(i32 %133, %struct.clk_hw* %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %121
  %140 = load i32, i32* %11, align 4
  %141 = call %struct.clk_hw* @ERR_PTR(i32 %140)
  store %struct.clk_hw* %141, %struct.clk_hw** %3, align 8
  store i32 1, i32* %12, align 4
  br label %145

142:                                              ; preds = %121
  %143 = load %struct.bcm2835_clock*, %struct.bcm2835_clock** %6, align 8
  %144 = getelementptr inbounds %struct.bcm2835_clock, %struct.bcm2835_clock* %143, i32 0, i32 0
  store %struct.clk_hw* %144, %struct.clk_hw** %3, align 8
  store i32 1, i32* %12, align 4
  br label %145

145:                                              ; preds = %142, %139, %120
  %146 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @match_string(i32, i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #2

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #2

declare dso_local %struct.bcm2835_clock* @devm_kzalloc(i32, i32, i32) #2

declare dso_local i32 @devm_clk_hw_register(i32, %struct.clk_hw*) #2

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
