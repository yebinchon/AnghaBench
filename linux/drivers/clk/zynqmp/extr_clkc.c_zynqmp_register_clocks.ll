; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_register_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_register_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.device_node = type { i32 }

@MAX_PARENT = common dso_local global i32 0, align 4
@clock_max_idx = common dso_local global i64 0, align 8
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@CLK_TYPE_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"No parents found for %s\0A\00", align 1
@clock = common dso_local global %struct.TYPE_4__* null, align 8
@zynqmp_data = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Zynq Ultrascale+ MPSoC clk %s: register failed with %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @zynqmp_register_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_register_clocks(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* @MAX_PARENT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %64, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @clock_max_idx, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %16
  %21 = load i32, i32* @MAX_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @zynqmp_get_clock_name(i64 %25, i8* %24)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 4, i32* %11, align 4
  br label %60

29:                                               ; preds = %20
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @zynqmp_get_clock_type(i64 %30, i64* %6)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @CLK_TYPE_OUTPUT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %29
  store i32 4, i32* %11, align 4
  br label %60

39:                                               ; preds = %34
  %40 = load %struct.device_node*, %struct.device_node** %2, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @zynqmp_get_parent_list(%struct.device_node* %40, i64 %41, i8** %15, i64* %5)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clock, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 4, i32* %11, align 4
  br label %60

51:                                               ; preds = %39
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @zynqmp_register_clk_topology(i64 %52, i8* %24, i64 %53, i8** %15)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zynqmp_data, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %51, %44, %38, %28
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %11, align 4
  switch i32 %62, label %102 [
    i32 0, label %63
    i32 4, label %64
  ]

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %16

67:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @clock_max_idx, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %68
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zynqmp_data, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %72
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @clock, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zynqmp_data, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %93)
  %95 = call i32 @WARN_ON(i32 1)
  br label %96

96:                                               ; preds = %81, %72
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %4, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %68

100:                                              ; preds = %68
  store i32 1, i32* %11, align 4
  %101 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %101)
  ret i32 0

102:                                              ; preds = %60
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zynqmp_get_clock_name(i64, i8*) #2

declare dso_local i32 @zynqmp_get_clock_type(i64, i64*) #2

declare dso_local i64 @zynqmp_get_parent_list(%struct.device_node*, i64, i8**, i64*) #2

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #2

declare dso_local i32 @zynqmp_register_clk_topology(i64, i8*, i64, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
