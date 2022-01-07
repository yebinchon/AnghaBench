; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_file.c_AAS_WriteAASFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_file.c_AAS_WriteAASFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32)*, i32 (%struct.TYPE_8__*, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i8*, i8*)*, i32 (i8*, i32*, i32)* }
%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@botimport = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@AASID = common dso_local global i32 0, align 4
@AASVERSION = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@FS_WRITE = common dso_local global i32 0, align 4
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@AAS_WriteAASLump_offset = common dso_local global i32 0, align 4
@AASLUMP_BBOXES = common dso_local global i32 0, align 4
@AASLUMP_VERTEXES = common dso_local global i32 0, align 4
@AASLUMP_PLANES = common dso_local global i32 0, align 4
@AASLUMP_EDGES = common dso_local global i32 0, align 4
@AASLUMP_EDGEINDEX = common dso_local global i32 0, align 4
@AASLUMP_FACES = common dso_local global i32 0, align 4
@AASLUMP_FACEINDEX = common dso_local global i32 0, align 4
@AASLUMP_AREAS = common dso_local global i32 0, align 4
@AASLUMP_AREASETTINGS = common dso_local global i32 0, align 4
@AASLUMP_REACHABILITY = common dso_local global i32 0, align 4
@AASLUMP_NODES = common dso_local global i32 0, align 4
@AASLUMP_PORTALS = common dso_local global i32 0, align 4
@AASLUMP_PORTALINDEX = common dso_local global i32 0, align 4
@AASLUMP_CLUSTERS = common dso_local global i32 0, align 4
@FS_SEEK_SET = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_WriteAASFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 3), align 8
  %7 = load i32, i32* @PRT_MESSAGE, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 %6(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = call i32 (...) @AAS_SwapAASData()
  %11 = call i32 @Com_Memset(%struct.TYPE_8__* %4, i32 0, i32 24)
  %12 = load i32, i32* @AASID, align 4
  %13 = call i8* @LittleLong(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @AASVERSION, align 4
  %16 = call i8* @LittleLong(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 28), align 4
  %19 = call i8* @LittleLong(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 4), align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @FS_WRITE, align 4
  %24 = call i32 %21(i8* %22, i32* %5, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 3), align 8
  %29 = load i32, i32* @PRT_ERROR, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 %28(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @qfalse, align 4
  store i32 %32, i32* %2, align 4
  br label %219

33:                                               ; preds = %1
  %34 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 1), align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 %34(%struct.TYPE_8__* %4, i32 24, i32 %35)
  store i32 24, i32* @AAS_WriteAASLump_offset, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @AASLUMP_BBOXES, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 27), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @AAS_WriteAASLump(i32 %37, %struct.TYPE_8__* %4, i32 %38, i32 %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %2, align 4
  br label %219

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @AASLUMP_VERTEXES, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 26), align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @AAS_WriteAASLump(i32 %49, %struct.TYPE_8__* %4, i32 %50, i32 %51, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %2, align 4
  br label %219

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @AASLUMP_PLANES, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 25), align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 2), align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @AAS_WriteAASLump(i32 %61, %struct.TYPE_8__* %4, i32 %62, i32 %63, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @qfalse, align 4
  store i32 %71, i32* %2, align 4
  br label %219

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @AASLUMP_EDGES, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 24), align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 3), align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @AAS_WriteAASLump(i32 %73, %struct.TYPE_8__* %4, i32 %74, i32 %75, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* @qfalse, align 4
  store i32 %83, i32* %2, align 4
  br label %219

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @AASLUMP_EDGEINDEX, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 23), align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 4), align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 @AAS_WriteAASLump(i32 %85, %struct.TYPE_8__* %4, i32 %86, i32 %87, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* @qfalse, align 4
  store i32 %95, i32* %2, align 4
  br label %219

96:                                               ; preds = %84
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @AASLUMP_FACES, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 22), align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 5), align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @AAS_WriteAASLump(i32 %97, %struct.TYPE_8__* %4, i32 %98, i32 %99, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %2, align 4
  br label %219

108:                                              ; preds = %96
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @AASLUMP_FACEINDEX, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 21), align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 6), align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @AAS_WriteAASLump(i32 %109, %struct.TYPE_8__* %4, i32 %110, i32 %111, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* @qfalse, align 4
  store i32 %119, i32* %2, align 4
  br label %219

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @AASLUMP_AREAS, align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 20), align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 7), align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @AAS_WriteAASLump(i32 %121, %struct.TYPE_8__* %4, i32 %122, i32 %123, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %120
  %131 = load i32, i32* @qfalse, align 4
  store i32 %131, i32* %2, align 4
  br label %219

132:                                              ; preds = %120
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @AASLUMP_AREASETTINGS, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 19), align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 8), align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i32 @AAS_WriteAASLump(i32 %133, %struct.TYPE_8__* %4, i32 %134, i32 %135, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %132
  %143 = load i32, i32* @qfalse, align 4
  store i32 %143, i32* %2, align 4
  br label %219

144:                                              ; preds = %132
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @AASLUMP_REACHABILITY, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 18), align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 9), align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i32 @AAS_WriteAASLump(i32 %145, %struct.TYPE_8__* %4, i32 %146, i32 %147, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %144
  %155 = load i32, i32* @qfalse, align 4
  store i32 %155, i32* %2, align 4
  br label %219

156:                                              ; preds = %144
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @AASLUMP_NODES, align 4
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 17), align 4
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 10), align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = call i32 @AAS_WriteAASLump(i32 %157, %struct.TYPE_8__* %4, i32 %158, i32 %159, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %156
  %167 = load i32, i32* @qfalse, align 4
  store i32 %167, i32* %2, align 4
  br label %219

168:                                              ; preds = %156
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @AASLUMP_PORTALS, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 16), align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 11), align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = trunc i64 %174 to i32
  %176 = call i32 @AAS_WriteAASLump(i32 %169, %struct.TYPE_8__* %4, i32 %170, i32 %171, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %168
  %179 = load i32, i32* @qfalse, align 4
  store i32 %179, i32* %2, align 4
  br label %219

180:                                              ; preds = %168
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @AASLUMP_PORTALINDEX, align 4
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 15), align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 12), align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 4
  %187 = trunc i64 %186 to i32
  %188 = call i32 @AAS_WriteAASLump(i32 %181, %struct.TYPE_8__* %4, i32 %182, i32 %183, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %180
  %191 = load i32, i32* @qfalse, align 4
  store i32 %191, i32* %2, align 4
  br label %219

192:                                              ; preds = %180
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @AASLUMP_CLUSTERS, align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 14), align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 13), align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 %197, 4
  %199 = trunc i64 %198 to i32
  %200 = call i32 @AAS_WriteAASLump(i32 %193, %struct.TYPE_8__* %4, i32 %194, i32 %195, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %192
  %203 = load i32, i32* @qfalse, align 4
  store i32 %203, i32* %2, align 4
  br label %219

204:                                              ; preds = %192
  %205 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 2), align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @FS_SEEK_SET, align 4
  %208 = call i32 %205(i32 %206, i32 0, i32 %207)
  %209 = bitcast %struct.TYPE_8__* %4 to i8*
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  %211 = call i32 @AAS_DData(i8* %210, i32 16)
  %212 = load i32 (%struct.TYPE_8__*, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 1), align 8
  %213 = load i32, i32* %5, align 4
  %214 = call i32 %212(%struct.TYPE_8__* %4, i32 24, i32 %213)
  %215 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i32 %215(i32 %216)
  %218 = load i32, i32* @qtrue, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %204, %202, %190, %178, %166, %154, %142, %130, %118, %106, %94, %82, %70, %58, %46, %27
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @AAS_SwapAASData(...) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i32 @AAS_WriteAASLump(i32, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @AAS_DData(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
