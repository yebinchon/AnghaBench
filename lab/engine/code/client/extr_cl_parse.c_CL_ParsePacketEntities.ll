; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_parse.c_CL_ParsePacketEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_parse.c_CL_ParsePacketEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@cl = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MAX_PARSE_ENTITIES = common dso_local global i32 0, align 4
@GENTITYNUM_BITS = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CL_ParsePacketEntities: end of message\00", align 1
@cl_shownet = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%3i:  unchanged: %i\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%3i:  delta: %i\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%3i:  baseline: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ParsePacketEntities(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 0), align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 99999, i32* %10, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 99999, i32* %10, align 4
  br label %41

26:                                               ; preds = %19
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 1), align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @MAX_PARSE_ENTITIES, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %36
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %26, %25
  br label %42

42:                                               ; preds = %41, %18
  br label %43

43:                                               ; preds = %42, %155, %171, %181
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = load i32, i32* @GENTITYNUM_BITS, align 4
  %46 = call i32 @MSG_ReadBits(%struct.TYPE_13__* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MAX_GENTITIES, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %182

52:                                               ; preds = %43
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @ERR_DROP, align 4
  %62 = call i32 @Com_Error(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %109, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %64
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = load i32, i32* @qtrue, align 4
  %85 = call i32 @CL_DeltaEntity(%struct.TYPE_13__* %80, %struct.TYPE_15__* %81, i32 %82, %struct.TYPE_14__* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 99999, i32* %10, align 4
  br label %109

94:                                               ; preds = %79
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 1), align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @MAX_PARSE_ENTITIES, align 4
  %102 = sub nsw i32 %101, 1
  %103 = and i32 %100, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %104
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %8, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %94, %93
  br label %64

110:                                              ; preds = %64
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %110
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %130 = load i32, i32* @qfalse, align 4
  %131 = call i32 @CL_DeltaEntity(%struct.TYPE_13__* %126, %struct.TYPE_15__* %127, i32 %128, %struct.TYPE_14__* %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  store i32 99999, i32* %10, align 4
  br label %155

140:                                              ; preds = %125
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 1), align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* @MAX_PARSE_ENTITIES, align 4
  %148 = sub nsw i32 %147, 1
  %149 = and i32 %146, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %150
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %8, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %140, %139
  br label %43

156:                                              ; preds = %110
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %156
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %160
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 2), align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i64 %177
  %179 = load i32, i32* @qfalse, align 4
  %180 = call i32 @CL_DeltaEntity(%struct.TYPE_13__* %172, %struct.TYPE_15__* %173, i32 %174, %struct.TYPE_14__* %178, i32 %179)
  br label %43

181:                                              ; preds = %156
  br label %43

182:                                              ; preds = %51
  br label %183

183:                                              ; preds = %227, %182
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 99999
  br i1 %185, label %186, label %228

186:                                              ; preds = %183
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cl_shownet, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 3
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %186
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %202 = load i32, i32* @qtrue, align 4
  %203 = call i32 @CL_DeltaEntity(%struct.TYPE_13__* %198, %struct.TYPE_15__* %199, i32 %200, %struct.TYPE_14__* %201, i32 %202)
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sge i32 %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %197
  store i32 99999, i32* %10, align 4
  br label %227

212:                                              ; preds = %197
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 1), align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* @MAX_PARSE_ENTITIES, align 4
  %220 = sub nsw i32 %219, 1
  %221 = and i32 %218, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %222
  store %struct.TYPE_14__* %223, %struct.TYPE_14__** %8, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %10, align 4
  br label %227

227:                                              ; preds = %212, %211
  br label %183

228:                                              ; preds = %183
  ret void
}

declare dso_local i32 @MSG_ReadBits(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i64, i32) #1

declare dso_local i32 @CL_DeltaEntity(%struct.TYPE_13__*, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
