; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_ComputeVertexAttribs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_ComputeVertexAttribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@ATTR_POSITION = common dso_local global i32 0, align 4
@ATTR_NORMAL = common dso_local global i32 0, align 4
@shader = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ATTR_TEXCOORD = common dso_local global i32 0, align 4
@ATTR_COLOR = common dso_local global i32 0, align 4
@MAX_SHADER_STAGES = common dso_local global i32 0, align 4
@stages = common dso_local global %struct.TYPE_10__* null, align 8
@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@LIGHTDEF_LIGHTTYPE_MASK = common dso_local global i32 0, align 4
@r_normalMapping = common dso_local global %struct.TYPE_15__* null, align 8
@r_specularMapping = common dso_local global %struct.TYPE_14__* null, align 8
@ATTR_TANGENT = common dso_local global i32 0, align 4
@ATTR_LIGHTDIRECTION = common dso_local global i32 0, align 4
@NUM_TEXTURE_BUNDLES = common dso_local global i32 0, align 4
@ATTR_LIGHTCOORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ComputeVertexAttribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeVertexAttribs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = load i32, i32* @ATTR_POSITION, align 4
  %6 = load i32, i32* @ATTR_NORMAL, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 4), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @ATTR_NORMAL, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %13 = or i32 %12, %11
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 3), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @ATTR_TEXCOORD, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %20 = or i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %191

21:                                               ; preds = %14
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 1), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 1), align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 2), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %32
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %3, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %53 [
    i32 146, label %37
    i32 148, label %43
    i32 133, label %49
    i32 143, label %49
    i32 141, label %49
    i32 140, label %49
    i32 139, label %49
    i32 138, label %49
    i32 137, label %49
    i32 136, label %49
    i32 135, label %49
    i32 134, label %49
    i32 144, label %54
    i32 145, label %54
    i32 142, label %54
    i32 147, label %54
  ]

37:                                               ; preds = %29
  %38 = load i32, i32* @ATTR_NORMAL, align 4
  %39 = load i32, i32* @ATTR_TEXCOORD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %42 = or i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %55

43:                                               ; preds = %29
  %44 = load i32, i32* @ATTR_NORMAL, align 4
  %45 = load i32, i32* @ATTR_COLOR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %48 = or i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %55

49:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %50 = load i32, i32* @ATTR_NORMAL, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %52 = or i32 %51, %50
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %55

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %29, %29, %29, %29, %53
  br label %55

55:                                               ; preds = %54, %49, %43, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %25

59:                                               ; preds = %25
  br label %60

60:                                               ; preds = %59, %21
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %188, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %191

65:                                               ; preds = %61
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @stages, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %68
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %4, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  br label %191

75:                                               ; preds = %65
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %75
  %82 = load i32, i32* @ATTR_NORMAL, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %84 = or i32 %83, %82
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @LIGHTDEF_LIGHTTYPE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %81
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_normalMapping, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_specularMapping, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* @ATTR_TANGENT, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %104 = or i32 %103, %102
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %105

105:                                              ; preds = %101, %96, %81
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @LIGHTDEF_LIGHTTYPE_MASK, align 4
  %110 = and i32 %108, %109
  switch i32 %110, label %115 [
    i32 132, label %111
    i32 131, label %111
  ]

111:                                              ; preds = %105, %105
  %112 = load i32, i32* @ATTR_LIGHTDIRECTION, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %114 = or i32 %113, %112
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %116

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %111
  br label %117

117:                                              ; preds = %116, %75
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %158, %117
  %119 = load i32, i32* %1, align 4
  %120 = load i32, i32* @NUM_TEXTURE_BUNDLES, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %161

122:                                              ; preds = %118
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %158

135:                                              ; preds = %122
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  switch i32 %143, label %156 [
    i32 128, label %144
    i32 129, label %148
    i32 130, label %152
  ]

144:                                              ; preds = %135
  %145 = load i32, i32* @ATTR_TEXCOORD, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %147 = or i32 %146, %145
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %157

148:                                              ; preds = %135
  %149 = load i32, i32* @ATTR_LIGHTCOORD, align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %151 = or i32 %150, %149
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %157

152:                                              ; preds = %135
  %153 = load i32, i32* @ATTR_NORMAL, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %155 = or i32 %154, %153
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %157

156:                                              ; preds = %135
  br label %157

157:                                              ; preds = %156, %152, %148, %144
  br label %158

158:                                              ; preds = %157, %134
  %159 = load i32, i32* %1, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %1, align 4
  br label %118

161:                                              ; preds = %118
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %173 [
    i32 154, label %165
    i32 150, label %165
    i32 153, label %165
    i32 149, label %165
    i32 151, label %165
    i32 152, label %169
  ]

165:                                              ; preds = %161, %161, %161, %161, %161
  %166 = load i32, i32* @ATTR_COLOR, align 4
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %168 = or i32 %167, %166
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %174

169:                                              ; preds = %161
  %170 = load i32, i32* @ATTR_NORMAL, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %172 = or i32 %171, %170
  store i32 %172, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %174

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %169, %165
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %186 [
    i32 157, label %178
    i32 155, label %182
    i32 156, label %182
  ]

178:                                              ; preds = %174
  %179 = load i32, i32* @ATTR_NORMAL, align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %181 = or i32 %180, %179
  store i32 %181, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %187

182:                                              ; preds = %174, %174
  %183 = load i32, i32* @ATTR_COLOR, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  %185 = or i32 %184, %183
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shader, i32 0, i32 0), align 8
  br label %187

186:                                              ; preds = %174
  br label %187

187:                                              ; preds = %186, %182, %178
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %2, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %2, align 4
  br label %61

191:                                              ; preds = %17, %74, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
