; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_get_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_get_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.attr_resp = type { i32* }
%struct.name_resp = type { i32 }

@clock_max_idx = common dso_local global i32 0, align 4
@CLK_ATTR_VALID = common dso_local global i32 0, align 4
@clock = common dso_local global %struct.TYPE_2__* null, align 8
@CLK_ATTR_TYPE = common dso_local global i32 0, align 4
@CLK_TYPE_EXTERNAL = common dso_local global i64 0, align 8
@CLK_TYPE_OUTPUT = common dso_local global i64 0, align 8
@CLK_ATTR_NODE_TYPE = common dso_local global i32 0, align 4
@CLK_ATTR_NODE_SUBCLASS = common dso_local global i32 0, align 4
@CLK_ATTR_NODE_CLASS = common dso_local global i32 0, align 4
@CLK_ATTR_NODE_INDEX = common dso_local global i32 0, align 4
@RESERVED_CLK_NAME = common dso_local global i32 0, align 4
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zynqmp_get_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_get_clock_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.attr_resp, align 8
  %8 = alloca %struct.name_resp, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %114, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @clock_max_idx, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %117

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @zynqmp_pm_clock_get_attributes(i32 %14, %struct.attr_resp* %7)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %114

19:                                               ; preds = %13
  %20 = load i32, i32* @CLK_ATTR_VALID, align 4
  %21 = getelementptr inbounds %struct.attr_resp, %struct.attr_resp* %7, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @FIELD_GET(i32 %20, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 7
  store i64 %25, i64* %30, align 8
  %31 = load i32, i32* @CLK_ATTR_TYPE, align 4
  %32 = getelementptr inbounds %struct.attr_resp, %struct.attr_resp* %7, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @FIELD_GET(i32 %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load i64, i64* @CLK_TYPE_EXTERNAL, align 8
  br label %42

40:                                               ; preds = %19
  %41 = load i64, i64* @CLK_TYPE_OUTPUT, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  store i64 %43, i64* %48, align 8
  %49 = load i32, i32* @CLK_ATTR_NODE_TYPE, align 4
  %50 = getelementptr inbounds %struct.attr_resp, %struct.attr_resp* %7, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @FIELD_GET(i32 %49, i32 %53)
  store i64 %54, i64* %4, align 8
  %55 = load i32, i32* @CLK_ATTR_NODE_SUBCLASS, align 4
  %56 = getelementptr inbounds %struct.attr_resp, %struct.attr_resp* %7, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @FIELD_GET(i32 %55, i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i32, i32* @CLK_ATTR_NODE_CLASS, align 4
  %62 = getelementptr inbounds %struct.attr_resp, %struct.attr_resp* %7, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @FIELD_GET(i32 %61, i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load i32, i32* @CLK_ATTR_NODE_CLASS, align 4
  %68 = load i64, i64* %6, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @FIELD_PREP(i32 %67, i32 %69)
  %71 = load i32, i32* @CLK_ATTR_NODE_SUBCLASS, align 4
  %72 = load i64, i64* %5, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @FIELD_PREP(i32 %71, i32 %73)
  %75 = or i32 %70, %74
  %76 = load i32, i32* @CLK_ATTR_NODE_TYPE, align 4
  %77 = load i64, i64* %4, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @FIELD_PREP(i32 %76, i32 %78)
  %80 = or i32 %75, %79
  %81 = load i32, i32* @CLK_ATTR_NODE_INDEX, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i32 @FIELD_PREP(i32 %81, i32 %82)
  %84 = or i32 %80, %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @zynqmp_pm_clock_get_name(i32 %95, %struct.name_resp* %8)
  %97 = getelementptr inbounds %struct.name_resp, %struct.name_resp* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RESERVED_CLK_NAME, align 4
  %100 = call i32 @strcmp(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %42
  br label %114

103:                                              ; preds = %42
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.name_resp, %struct.name_resp* %8, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MAX_NAME_LEN, align 4
  %113 = call i32 @strncpy(i32 %109, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %103, %102, %18
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %9

117:                                              ; preds = %9
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %167, %117
  %119 = load i32, i32* %1, align 4
  %120 = load i32, i32* @clock_max_idx, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %170

122:                                              ; preds = %118
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @zynqmp_get_clock_type(i32 %123, i64* %3)
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* %2, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = load i64, i64* %3, align 8
  %129 = load i64, i64* @CLK_TYPE_OUTPUT, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %122
  br label %167

132:                                              ; preds = %127
  %133 = load i32, i32* %1, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = call i32 @zynqmp_clock_get_topology(i32 %133, i32 %139, i32* %144)
  store i32 %145, i32* %2, align 4
  %146 = load i32, i32* %2, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %132
  br label %167

149:                                              ; preds = %132
  %150 = load i32, i32* %1, align 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = call i32 @zynqmp_clock_get_parents(i32 %150, i32 %156, i32* %161)
  store i32 %162, i32* %2, align 4
  %163 = load i32, i32* %2, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %149
  br label %167

166:                                              ; preds = %149
  br label %167

167:                                              ; preds = %166, %165, %148, %131
  %168 = load i32, i32* %1, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %1, align 4
  br label %118

170:                                              ; preds = %118
  ret void
}

declare dso_local i32 @zynqmp_pm_clock_get_attributes(i32, %struct.attr_resp*) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @zynqmp_pm_clock_get_name(i32, %struct.name_resp*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @zynqmp_get_clock_type(i32, i64*) #1

declare dso_local i32 @zynqmp_clock_get_topology(i32, i32, i32*) #1

declare dso_local i32 @zynqmp_clock_get_parents(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
