; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_get_parent_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_get_parent_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.clock_parent*, %struct.clock_topology* }
%struct.clock_parent = type { i32, i8* }
%struct.clock_topology = type { i64 }
%struct.device_node = type { i32 }

@clock = common dso_local global %struct.TYPE_2__* null, align 8
@PARENT_CLK_EXTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dummy_name\00", align 1
@clk_type_postfix = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i64, i8**, i64*)* @zynqmp_get_parent_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_get_parent_list(%struct.device_node* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.clock_topology*, align 8
  %13 = alloca %struct.clock_parent*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.clock_topology*, %struct.clock_topology** %22, align 8
  store %struct.clock_topology* %23, %struct.clock_topology** %12, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.clock_parent*, %struct.clock_parent** %27, align 8
  store %struct.clock_parent* %28, %struct.clock_parent** %13, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %127, %4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %11, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %130

34:                                               ; preds = %29
  %35 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %35, i64 %37
  %39 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %43, i64 %45
  %47 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %48, i8** %52, align 8
  br label %126

53:                                               ; preds = %34
  %54 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %54, i64 %56
  %58 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PARENT_CLK_EXTERNAL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %53
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %64, i64 %66
  %68 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @of_property_match_string(%struct.device_node* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %62
  %74 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %74, i64 %76
  %78 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcpy(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %73, %62
  %82 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %82, i64 %84
  %86 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8**, i8*** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %87, i8** %91, align 8
  br label %125

92:                                               ; preds = %53
  %93 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %93, i64 %95
  %97 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i32*, i32** @clk_type_postfix, align 8
  %100 = load %struct.clock_topology*, %struct.clock_topology** %12, align 8
  %101 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %101, i64 %103
  %105 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %100, i64 %108
  %110 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %99, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strcat(i8* %98, i32 %113)
  %115 = load %struct.clock_parent*, %struct.clock_parent** %13, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %115, i64 %117
  %119 = getelementptr inbounds %struct.clock_parent, %struct.clock_parent* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %120, i8** %124, align 8
  br label %125

125:                                              ; preds = %92, %81
  br label %126

126:                                              ; preds = %125, %42
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %29

130:                                              ; preds = %29
  %131 = load i64, i64* %11, align 8
  %132 = load i64*, i64** %8, align 8
  store i64 %131, i64* %132, align 8
  ret i32 0
}

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
