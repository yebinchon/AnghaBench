; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_of_mux_clk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_of_mux_clk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.clk = type { i32 }
%struct.clk_omap_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLK_SET_RATE_NO_REPARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mux-clock %pOFn must have parents\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ti,bit-shift\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ti,latch-bit\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ti,index-starts-at-one\00", align 1
@CLK_MUX_INDEX_ONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"ti,set-rate-parent\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @of_mux_clk_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_mux_clk_setup(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.clk_omap_reg, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @CLK_SET_RATE_NO_REPARENT, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = call i32 @of_clk_get_parent_count(%struct.device_node* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %2, align 8
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.device_node* %20)
  br label %98

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8** @kzalloc(i32 %26, i32 %27)
  store i8** %28, i8*** %6, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %95

32:                                               ; preds = %22
  %33 = load %struct.device_node*, %struct.device_node** %2, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @of_clk_parent_fill(%struct.device_node* %33, i8** %34, i32 %35)
  %37 = load %struct.device_node*, %struct.device_node** %2, align 8
  %38 = call i64 @ti_clk_get_reg_addr(%struct.device_node* %37, i32 0, %struct.clk_omap_reg* %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %95

41:                                               ; preds = %32
  %42 = load %struct.device_node*, %struct.device_node** %2, align 8
  %43 = call i32 @of_property_read_u32(%struct.device_node* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %44 = load %struct.device_node*, %struct.device_node** %2, align 8
  %45 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %46 = load %struct.device_node*, %struct.device_node** %2, align 8
  %47 = call i64 @of_property_read_bool(%struct.device_node* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @CLK_MUX_INDEX_ONE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load %struct.device_node*, %struct.device_node** %2, align 8
  %55 = call i64 @of_property_read_bool(%struct.device_node* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @CLK_MUX_INDEX_ONE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @fls(i32 %71)
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load %struct.device_node*, %struct.device_node** %2, align 8
  %76 = getelementptr inbounds %struct.device_node, %struct.device_node* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8**, i8*** %6, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call %struct.clk* @_register_mux(i32* null, i32 %77, i8** %78, i32 %79, i32 %80, %struct.clk_omap_reg* %4, i32 %81, i32 %82, i32 %83, i32 %84, i32* null)
  store %struct.clk* %85, %struct.clk** %3, align 8
  %86 = load %struct.clk*, %struct.clk** %3, align 8
  %87 = call i32 @IS_ERR(%struct.clk* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %70
  %90 = load %struct.device_node*, %struct.device_node** %2, align 8
  %91 = load i32, i32* @of_clk_src_simple_get, align 4
  %92 = load %struct.clk*, %struct.clk** %3, align 8
  %93 = call i32 @of_clk_add_provider(%struct.device_node* %90, i32 %91, %struct.clk* %92)
  br label %94

94:                                               ; preds = %89, %70
  br label %95

95:                                               ; preds = %94, %40, %31
  %96 = load i8**, i8*** %6, align 8
  %97 = call i32 @kfree(i8** %96)
  br label %98

98:                                               ; preds = %95, %19
  ret void
}

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

declare dso_local i8** @kzalloc(i32, i32) #1

declare dso_local i32 @of_clk_parent_fill(%struct.device_node*, i8**, i32) #1

declare dso_local i64 @ti_clk_get_reg_addr(%struct.device_node*, i32, %struct.clk_omap_reg*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local %struct.clk* @_register_mux(i32*, i32, i8**, i32, i32, %struct.clk_omap_reg*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk*) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
