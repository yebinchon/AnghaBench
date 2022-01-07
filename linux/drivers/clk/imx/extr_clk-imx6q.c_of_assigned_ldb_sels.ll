; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx6q.c_of_assigned_ldb_sels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx6q.c_of_assigned_ldb_sels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32*, %struct.device_node* }

@.str = private unnamed_addr constant [23 x i8] c"assigned-clock-parents\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IMX6QDL_CLK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"ccm: parent clock %d not in ccm\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"assigned-clocks\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"ccm: child clock %d not in ccm\0A\00", align 1
@IMX6QDL_CLK_LDB_DI0_SEL = common dso_local global i32 0, align 4
@IMX6QDL_CLK_LDB_DI1_SEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"ccm: invalid ldb_di%d parent clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, i32*, i32*)* @of_assigned_ldb_sels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_assigned_ldb_sels(%struct.device_node* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.of_phandle_args, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @of_count_phandle_with_args(%struct.device_node* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %114, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @of_parse_phandle_with_args(%struct.device_node* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %22, %struct.of_phandle_args* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %114

32:                                               ; preds = %26
  br label %117

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = icmp ne %struct.device_node* %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IMX6QDL_CLK_END, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %117

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @of_parse_phandle_with_args(%struct.device_node* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %54, %struct.of_phandle_args* %7)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %117

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %61 = load %struct.device_node*, %struct.device_node** %60, align 8
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = icmp ne %struct.device_node* %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IMX6QDL_CLK_END, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64, %59
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %117

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @IMX6QDL_CLK_LDB_DI0_SEL, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @IMX6QDL_CLK_LDB_DI1_SEL, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %114

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ldb_di_sel_by_clock_id(i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @IMX6QDL_CLK_LDB_DI1_SEL, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 %97)
  br label %114

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @IMX6QDL_CLK_LDB_DI0_SEL, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @IMX6QDL_CLK_LDB_DI1_SEL, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %6, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %92, %86, %31
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %16

117:                                              ; preds = %32, %45, %58, %71, %16
  ret void
}

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @ldb_di_sel_by_clock_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
