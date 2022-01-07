; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_MarkLeaves.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_MarkLeaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 (i32, i8*, i32, i32)* }
%struct.TYPE_18__ = type { i64 }

@r_lockpvs = common dso_local global %struct.TYPE_19__* null, align 8
@tr = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@r_showcluster = common dso_local global %struct.TYPE_17__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cluster:%i  area:%i\0A\00", align 1
@r_novis = common dso_local global %struct.TYPE_18__* null, align 8
@CONTENTS_SOLID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @R_MarkLeaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_MarkLeaves() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_lockpvs, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %179

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 4, i32 0), align 8
  %13 = call %struct.TYPE_14__* @R_PointInLeaf(i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %2, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 0), align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 2, i32 1), align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_showcluster, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %179

29:                                               ; preds = %23, %20, %11
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_showcluster, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_showcluster, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34, %29
  %40 = load i64, i64* @qfalse, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_showcluster, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_showcluster, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ri, i32 0, i32 0), align 8
  %49 = load i32, i32* @PRINT_ALL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %48(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 1), align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 1), align 8
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 0), align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_novis, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 0), align 8
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %99

67:                                               ; preds = %64, %56
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %95, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 3), align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 3), align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CONTENTS_SOLID, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 1), align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 3), align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  store i64 %86, i64* %93, align 8
  br label %94

94:                                               ; preds = %85, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %68

98:                                               ; preds = %68
  br label %179

99:                                               ; preds = %64
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 0), align 8
  %101 = call i32* @R_ClusterPVS(i32 %100)
  store i32* %101, i32** %1, align 8
  store i32 0, i32* %4, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 3), align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %2, align 8
  br label %105

105:                                              ; preds = %174, %99
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 3), align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %179

111:                                              ; preds = %105
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 3), align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117, %111
  br label %174

124:                                              ; preds = %117
  %125 = load i32*, i32** %1, align 8
  %126 = load i32, i32* %5, align 4
  %127 = ashr i32 %126, 3
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, 7
  %133 = shl i32 1, %132
  %134 = and i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %124
  br label %174

137:                                              ; preds = %124
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 2, i32 0), align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 7
  %150 = shl i32 1, %149
  %151 = and i32 %145, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  br label %174

154:                                              ; preds = %137
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_14__* %155, %struct.TYPE_14__** %3, align 8
  br label %156

156:                                              ; preds = %170, %154
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 1), align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %173

163:                                              ; preds = %156
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tr, i32 0, i32 1), align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  store %struct.TYPE_14__* %169, %struct.TYPE_14__** %3, align 8
  br label %170

170:                                              ; preds = %163
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = icmp ne %struct.TYPE_14__* %171, null
  br i1 %172, label %156, label %173

173:                                              ; preds = %170, %162
  br label %174

174:                                              ; preds = %173, %153, %136, %123
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 1
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %2, align 8
  br label %105

179:                                              ; preds = %10, %28, %98, %105
  ret void
}

declare dso_local %struct.TYPE_14__* @R_PointInLeaf(i32) #1

declare dso_local i32* @R_ClusterPVS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
