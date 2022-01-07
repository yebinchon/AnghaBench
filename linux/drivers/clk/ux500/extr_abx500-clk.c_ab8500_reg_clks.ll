; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_abx500-clk.c_ab8500_reg_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_abx500-clk.c_ab8500_reg_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.clk** }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ab8500_sysclk\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ulpclk\00", align 1
@__const.ab8500_reg_clks.intclk_parents = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)], align 16
@AB8500_SYSULPCLKCTRL1 = common dso_local global i32 0, align 4
@AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_MASK = common dso_local global i32 0, align 4
@AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_SHIFT = common dso_local global i32 0, align 4
@AB8500_SWATCTRL = common dso_local global i32 0, align 4
@AB8500_SWATCTRL_SWATENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ab8500_sysclk2\00", align 1
@AB8500_SYSULPCLKCTRL1_SYSCLKBUF2REQ = common dso_local global i32 0, align 4
@ab8500_clks = common dso_local global %struct.clk** null, align 8
@AB8500_SYSCLK_BUF2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"ab8500_sysclk3\00", align 1
@AB8500_SYSULPCLKCTRL1_SYSCLKBUF3REQ = common dso_local global i32 0, align 4
@AB8500_SYSCLK_BUF3 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"ab8500_sysclk4\00", align 1
@AB8500_SYSULPCLKCTRL1_SYSCLKBUF4REQ = common dso_local global i32 0, align 4
@AB8500_SYSCLK_BUF4 = common dso_local global i64 0, align 8
@AB8500_SYSULPCLKCTRL1_ULPCLKREQ = common dso_local global i32 0, align 4
@AB8500_SYSCLK_ULP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"intclk\00", align 1
@AB8500_SYSCLK_INT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"audioclk\00", align 1
@AB8500_SYSULPCLKCTRL1_AUDIOCLKENA = common dso_local global i32 0, align 4
@AB8500_SYSCLK_AUDIO = common dso_local global i64 0, align 8
@ab8500_clk_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"registered clocks for ab850x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ab8500_reg_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_reg_clks(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([2 x i8*]* @__const.ab8500_reg_clks.intclk_parents to i8*), i64 16, i1 false)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* @AB8500_SYSULPCLKCTRL1, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_MASK, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSULPCLKINTSEL_SHIFT, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @AB8500_SWATCTRL, align 4
  %26 = load i32, i32* @AB8500_SWATCTRL_SWATENABLE, align 4
  %27 = call i32 @ab8500_sysctrl_set(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %96

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* @AB8500_SYSULPCLKCTRL1, align 4
  %35 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSCLKBUF2REQ, align 4
  %36 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSCLKBUF2REQ, align 4
  %37 = call %struct.clk* @clk_reg_sysctrl_gate(%struct.device* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 0, i32 0)
  store %struct.clk* %37, %struct.clk** %5, align 8
  %38 = load %struct.clk*, %struct.clk** %5, align 8
  %39 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  %40 = load i64, i64* @AB8500_SYSCLK_BUF2, align 8
  %41 = getelementptr inbounds %struct.clk*, %struct.clk** %39, i64 %40
  store %struct.clk* %38, %struct.clk** %41, align 8
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = load i32, i32* @AB8500_SYSULPCLKCTRL1, align 4
  %44 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSCLKBUF3REQ, align 4
  %45 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSCLKBUF3REQ, align 4
  %46 = call %struct.clk* @clk_reg_sysctrl_gate(%struct.device* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 0, i32 0)
  store %struct.clk* %46, %struct.clk** %5, align 8
  %47 = load %struct.clk*, %struct.clk** %5, align 8
  %48 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  %49 = load i64, i64* @AB8500_SYSCLK_BUF3, align 8
  %50 = getelementptr inbounds %struct.clk*, %struct.clk** %48, i64 %49
  store %struct.clk* %47, %struct.clk** %50, align 8
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = load i32, i32* @AB8500_SYSULPCLKCTRL1, align 4
  %53 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSCLKBUF4REQ, align 4
  %54 = load i32, i32* @AB8500_SYSULPCLKCTRL1_SYSCLKBUF4REQ, align 4
  %55 = call %struct.clk* @clk_reg_sysctrl_gate(%struct.device* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 0, i32 0)
  store %struct.clk* %55, %struct.clk** %5, align 8
  %56 = load %struct.clk*, %struct.clk** %5, align 8
  %57 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  %58 = load i64, i64* @AB8500_SYSCLK_BUF4, align 8
  %59 = getelementptr inbounds %struct.clk*, %struct.clk** %57, i64 %58
  store %struct.clk* %56, %struct.clk** %59, align 8
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load i32, i32* @AB8500_SYSULPCLKCTRL1, align 4
  %62 = load i32, i32* @AB8500_SYSULPCLKCTRL1_ULPCLKREQ, align 4
  %63 = load i32, i32* @AB8500_SYSULPCLKCTRL1_ULPCLKREQ, align 4
  %64 = call %struct.clk* @clk_reg_sysctrl_gate_fixed_rate(%struct.device* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %61, i32 %62, i32 %63, i32 38400000, i32 9000, i32 0)
  store %struct.clk* %64, %struct.clk** %5, align 8
  %65 = load %struct.clk*, %struct.clk** %5, align 8
  %66 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  %67 = load i64, i64* @AB8500_SYSCLK_ULP, align 8
  %68 = getelementptr inbounds %struct.clk*, %struct.clk** %66, i64 %67
  store %struct.clk* %65, %struct.clk** %68, align 8
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %74 = call %struct.clk* @clk_reg_sysctrl_set_parent(%struct.device* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %70, i32 2, i32* %71, i32* %72, i32* %73, i32 0)
  store %struct.clk* %74, %struct.clk** %5, align 8
  %75 = load %struct.clk*, %struct.clk** %5, align 8
  %76 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  %77 = load i64, i64* @AB8500_SYSCLK_INT, align 8
  %78 = getelementptr inbounds %struct.clk*, %struct.clk** %76, i64 %77
  store %struct.clk* %75, %struct.clk** %78, align 8
  %79 = load %struct.device*, %struct.device** %3, align 8
  %80 = load i32, i32* @AB8500_SYSULPCLKCTRL1, align 4
  %81 = load i32, i32* @AB8500_SYSULPCLKCTRL1_AUDIOCLKENA, align 4
  %82 = load i32, i32* @AB8500_SYSULPCLKCTRL1_AUDIOCLKENA, align 4
  %83 = call %struct.clk* @clk_reg_sysctrl_gate(%struct.device* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %81, i32 %82, i32 0, i32 0)
  store %struct.clk* %83, %struct.clk** %5, align 8
  %84 = load %struct.clk*, %struct.clk** %5, align 8
  %85 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  %86 = load i64, i64* @AB8500_SYSCLK_AUDIO, align 8
  %87 = getelementptr inbounds %struct.clk*, %struct.clk** %85, i64 %86
  store %struct.clk* %84, %struct.clk** %87, align 8
  %88 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  store %struct.clk** %88, %struct.clk*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ab8500_clk_data, i32 0, i32 1), align 8
  %89 = load %struct.clk**, %struct.clk*** @ab8500_clks, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.clk** %89)
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ab8500_clk_data, i32 0, i32 0), align 8
  %91 = load %struct.device_node*, %struct.device_node** %6, align 8
  %92 = load i32, i32* @of_clk_src_onecell_get, align 4
  %93 = call i32 @of_clk_add_provider(%struct.device_node* %91, i32 %92, %struct.TYPE_3__* @ab8500_clk_data)
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = call i32 @dev_info(%struct.device* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %32, %30
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ab8500_sysctrl_set(i32, i32) #2

declare dso_local %struct.clk* @clk_reg_sysctrl_gate(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local %struct.clk* @clk_reg_sysctrl_gate_fixed_rate(%struct.device*, i8*, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local %struct.clk* @clk_reg_sysctrl_set_parent(%struct.device*, i8*, i8**, i32, i32*, i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.clk**) #2

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @dev_info(%struct.device*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
