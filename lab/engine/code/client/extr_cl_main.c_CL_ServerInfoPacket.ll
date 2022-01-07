; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServerInfoPacket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServerInfoPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i64, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_22__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"gamename\00", align 1
@com_gamename = common dso_local global %struct.TYPE_19__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Game mismatch in info packet: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@com_protocol = common dso_local global %struct.TYPE_17__* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Different protocol info packet: %s\0A\00", align 1
@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@cl_pinglist = common dso_local global %struct.TYPE_21__* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"ping time %dms from %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nettype\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@cls = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@AS_LOCAL = common dso_local global i64 0, align 8
@MAX_OTHER_SERVERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"MAX_OTHER_SERVERS hit, dropping infoResponse\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@com_legacyprotocol = common dso_local global %struct.TYPE_18__* null, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ServerInfoPacket(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  store i32 %0, i32* %14, align 4
  store i32* %1, i32** %4, align 8
  %15 = load i32, i32* @MAX_INFO_STRING, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @MSG_ReadString(i32* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @Info_ValueForKey(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_gamename, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i8* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %2
  %34 = phi i1 [ true, %2 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 1, i32* %13, align 4
  br label %222

41:                                               ; preds = %33
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @Info_ValueForKey(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @atoi(i8* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** @com_protocol, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  store i32 1, i32* %13, align 4
  br label %222

53:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %145, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %148

58:                                               ; preds = %54
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %144

67:                                               ; preds = %58
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %144, label %75

75:                                               ; preds = %67
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @NET_CompareAdr(i32 %82, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %144

87:                                               ; preds = %75
  %88 = call i64 (...) @Sys_Milliseconds()
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %88, %94
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  store i64 %95, i64* %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @NET_AdrToString(i32 %108)
  %110 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %106, i32 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @Q_strncpyz(i8* %116, i8* %117, i32 8)
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %123 [
    i32 130, label %121
    i32 129, label %121
    i32 128, label %122
  ]

121:                                              ; preds = %87, %87
  store i32 1, i32* %6, align 4
  br label %124

122:                                              ; preds = %87
  store i32 2, i32* %6, align 4
  br label %124

123:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %122, %121
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = call i32 @Info_SetValueForKey(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load i8*, i8** %9, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cl_pinglist, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @CL_SetServerInfoByAddress(i32 %142, i8* %134, i64 %140)
  store i32 1, i32* %13, align 4
  br label %222

144:                                              ; preds = %75, %67, %58
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %54

148:                                              ; preds = %54
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cls, i32 0, i32 0), align 8
  %150 = load i64, i64* @AS_LOCAL, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %13, align 4
  br label %222

153:                                              ; preds = %148
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %182, %153
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cls, i32 0, i32 2), align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %185

168:                                              ; preds = %158
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cls, i32 0, i32 2), align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @NET_CompareAdr(i32 %175, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  store i32 1, i32* %13, align 4
  br label %222

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %154

185:                                              ; preds = %167, %154
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @MAX_OTHER_SERVERS, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %222

191:                                              ; preds = %185
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cls, i32 0, i32 1), align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cls, i32 0, i32 2), align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i64 %196
  %198 = call i32 @CL_InitServerInfo(%struct.TYPE_15__* %197, %struct.TYPE_16__* %3)
  %199 = load i32*, i32** %4, align 8
  %200 = call i8* @MSG_ReadString(i32* %199)
  %201 = load i32, i32* @MAX_INFO_STRING, align 4
  %202 = call i32 @Q_strncpyz(i8* %18, i8* %200, i32 %201)
  %203 = call i32 @strlen(i8* %18)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %191
  %206 = call i32 @strlen(i8* %18)
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %18, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 10
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = trunc i64 %16 to i32
  %215 = call i32 @Q_strcat(i8* %18, i32 %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %205
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @NET_AdrToStringwPort(i32 %218)
  %220 = call i32 @Com_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %219, i8* %18)
  br label %221

221:                                              ; preds = %216, %191
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %221, %189, %180, %152, %124, %50, %38
  %223 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %13, align 4
  switch i32 %224, label %226 [
    i32 0, label %225
    i32 1, label %225
  ]

225:                                              ; preds = %222, %222
  ret void

226:                                              ; preds = %222
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @MSG_ReadString(i32*) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @Com_DPrintf(i8*, ...) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @NET_CompareAdr(i32, i64) #2

declare dso_local i64 @Sys_Milliseconds(...) #2

declare dso_local i32 @NET_AdrToString(i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @CL_SetServerInfoByAddress(i32, i8*, i64) #2

declare dso_local i32 @CL_InitServerInfo(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i32 @Com_Printf(i8*, i32, i8*) #2

declare dso_local i32 @NET_AdrToStringwPort(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
