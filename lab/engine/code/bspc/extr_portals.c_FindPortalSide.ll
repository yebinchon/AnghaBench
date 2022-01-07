; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_FindPortalSide.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_portals.c_FindPortalSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_14__** }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_11__* }

@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@SFL_BEVEL = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"WARNING: side not found for portal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindPortalSide(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %18, i64 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %25, i64 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %22, %29
  %31 = call i32 @VisibleContents(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  br label %165

35:                                               ; preds = %1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %150, %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %153

44:                                               ; preds = %41
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 %49
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %6, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %58
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %14, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %4, align 8
  br label %63

63:                                               ; preds = %145, %44
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = icmp ne %struct.TYPE_16__* %64, null
  br i1 %65, label %66, label %149

66:                                               ; preds = %63
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %5, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  br label %145

77:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %141, %77
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %144

84:                                               ; preds = %78
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %10, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SFL_BEVEL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %141

98:                                               ; preds = %84
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TEXINFO_NODE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %141

105:                                              ; preds = %98
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, -2
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %11, align 8
  br label %154

119:                                              ; preds = %105
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, -2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %125
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %15, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call float @DotProduct(i32 %129, i32 %132)
  store float %133, float* %12, align 4
  %134 = load float, float* %12, align 4
  %135 = load float, float* %13, align 4
  %136 = fcmp ogt float %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %119
  %138 = load float, float* %12, align 4
  store float %138, float* %13, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %11, align 8
  br label %140

140:                                              ; preds = %137, %119
  br label %141

141:                                              ; preds = %140, %104, %97
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %78

144:                                              ; preds = %78
  br label %145

145:                                              ; preds = %144, %76
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %4, align 8
  br label %63

149:                                              ; preds = %63
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %41

153:                                              ; preds = %41
  br label %154

154:                                              ; preds = %153, %112
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = icmp ne %struct.TYPE_11__* %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = call i32 @Log_Print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %154
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  store %struct.TYPE_11__* %162, %struct.TYPE_11__** %164, align 8
  br label %165

165:                                              ; preds = %159, %34
  ret void
}

declare dso_local i32 @VisibleContents(i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @Log_Print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
