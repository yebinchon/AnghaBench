; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_UserMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_UserMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i64, %struct.TYPE_19__, i32, i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@MAX_PACKET_USERCMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmdCount < 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cmdCount > MAX_PACKET_USERCMDS\0A\00", align 1
@sv = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@MAX_RELIABLE_COMMANDS = common dso_local global i32 0, align 4
@svs = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@PACKET_MASK = common dso_local global i64 0, align 8
@sv_pure = common dso_local global %struct.TYPE_23__* null, align 8
@CS_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: didn't get cp command, resending gamestate\0A\00", align 1
@CS_PRIMED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot validate pure client!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*, i64)* @SV_UserMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_UserMove(%struct.TYPE_21__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i32, i32* @MAX_PACKET_USERCMDS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca %struct.TYPE_20__, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %31

28:                                               ; preds = %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @MSG_ReadByte(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %198

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MAX_PACKET_USERCMDS, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %198

44:                                               ; preds = %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @sv, i32 0, i32 0), align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %53, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MSG_HashKey(i32 %62, i32 32)
  %64 = load i32, i32* %8, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = call i32 @Com_Memset(%struct.TYPE_20__* %10, i32 0, i32 8)
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %14, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %81, %44
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %73
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %13, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %79 = call i32 @MSG_ReadDeltaUsercmdKey(i32* %75, i32 %76, %struct.TYPE_20__* %77, %struct.TYPE_20__* %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %14, align 8
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %67

84:                                               ; preds = %67
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @svs, i32 0, i32 0), align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @PACKET_MASK, align 8
  %94 = and i64 %92, %93
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  store i32 %85, i32* %96, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_pure, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %84
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CS_ACTIVE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %123 = call i32 @SV_SendClientGameState(%struct.TYPE_21__* %122)
  br label %124

124:                                              ; preds = %117, %111
  store i32 1, i32* %15, align 4
  br label %198

125:                                              ; preds = %106, %101, %84
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CS_PRIMED, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 0
  %134 = call i32 @SV_ClientEnterWorld(%struct.TYPE_21__* %132, %struct.TYPE_20__* %133)
  br label %135

135:                                              ; preds = %131, %125
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_pure, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %147 = call i32 @SV_DropClient(%struct.TYPE_21__* %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %198

148:                                              ; preds = %140, %135
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CS_ACTIVE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i32 -1, i32* %156, align 8
  store i32 1, i32* %15, align 4
  br label %198

157:                                              ; preds = %148
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %194, %157
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %197

162:                                              ; preds = %158
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %167, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  br label %194

176:                                              ; preds = %162
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp sle i64 %181, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %176
  br label %194

188:                                              ; preds = %176
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i64 %191
  %193 = call i32 @SV_ClientThink(%struct.TYPE_21__* %189, %struct.TYPE_20__* %192)
  br label %194

194:                                              ; preds = %188, %187, %175
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %158

197:                                              ; preds = %158
  store i32 0, i32* %15, align 4
  br label %198

198:                                              ; preds = %197, %154, %145, %124, %42, %36
  %199 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %15, align 4
  switch i32 %200, label %202 [
    i32 0, label %201
    i32 1, label %201
  ]

201:                                              ; preds = %198, %198
  ret void

202:                                              ; preds = %198
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSG_ReadByte(i32*) #2

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @MSG_HashKey(i32, i32) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i32 @MSG_ReadDeltaUsercmdKey(i32*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #2

declare dso_local i32 @Com_DPrintf(i8*, i32) #2

declare dso_local i32 @SV_SendClientGameState(%struct.TYPE_21__*) #2

declare dso_local i32 @SV_ClientEnterWorld(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

declare dso_local i32 @SV_DropClient(%struct.TYPE_21__*, i8*) #2

declare dso_local i32 @SV_ClientThink(%struct.TYPE_21__*, %struct.TYPE_20__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
