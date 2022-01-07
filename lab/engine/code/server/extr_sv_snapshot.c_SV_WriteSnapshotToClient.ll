; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_WriteSnapshotToClient.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_snapshot.c_SV_WriteSnapshotToClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@PACKET_MASK = common dso_local global i64 0, align 8
@CS_ACTIVE = common dso_local global i64 0, align 8
@PACKET_BACKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Delta request from out of date packet.\0A\00", align 1
@svs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: Delta request from out of date entities.\0A\00", align 1
@svc_snapshot = common dso_local global i32 0, align 4
@sv = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@SNAPFLAG_RATE_DELAYED = common dso_local global i32 0, align 4
@SNAPFLAG_NOT_ACTIVE = common dso_local global i32 0, align 4
@sv_padPackets = common dso_local global %struct.TYPE_14__* null, align 8
@svc_nop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @SV_WriteSnapshotToClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_WriteSnapshotToClient(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PACKET_MASK, align 8
  %18 = and i64 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i64 %18
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CS_ACTIVE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %82

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = load i32, i32* @PACKET_BACKUP, align 4
  %41 = sub nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %47)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %81

49:                                               ; preds = %31
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PACKET_MASK, align 8
  %57 = and i64 %55, %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %57
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %6, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 0), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 1), align 8
  %73 = sub nsw i64 %71, %72
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %49
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %49
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @svc_snapshot, align 4
  %85 = call i32 @MSG_WriteByte(i32* %83, i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load i32*, i32** %4, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sv, i32 0, i32 0), align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32 @MSG_WriteLong(i32* %91, i64 %96)
  br label %102

98:                                               ; preds = %82
  %99 = load i32*, i32** %4, align 8
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sv, i32 0, i32 0), align 8
  %101 = call i32 @MSG_WriteLong(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %90
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @MSG_WriteByte(i32* %103, i32 %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @svs, i32 0, i32 2), align 8
  store i32 %106, i32* %9, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load i32, i32* @SNAPFLAG_RATE_DELAYED, align 4
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %111, %102
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CS_ACTIVE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @SNAPFLAG_NOT_ACTIVE, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %121, %115
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @MSG_WriteByte(i32* %126, i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @MSG_WriteByte(i32* %129, i32 %132)
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @MSG_WriteData(i32* %134, i32 %137, i32 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = icmp ne %struct.TYPE_12__* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %125
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = call i32 @MSG_WriteDeltaPlayerstate(i32* %145, i32* %147, i32* %149)
  br label %156

151:                                              ; preds = %125
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = call i32 @MSG_WriteDeltaPlayerstate(i32* %152, i32* null, i32* %154)
  br label %156

156:                                              ; preds = %151, %144
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @SV_EmitPacketEntities(%struct.TYPE_12__* %157, %struct.TYPE_12__* %158, i32* %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sv_padPackets, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %156
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %176, %165
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** @sv_padPackets, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* @svc_nop, align 4
  %175 = call i32 @MSG_WriteByte(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %166

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %156
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i32 @MSG_WriteByte(i32*, i32) #1

declare dso_local i32 @MSG_WriteLong(i32*, i64) #1

declare dso_local i32 @MSG_WriteData(i32*, i32, i32) #1

declare dso_local i32 @MSG_WriteDeltaPlayerstate(i32*, i32*, i32*) #1

declare dso_local i32 @SV_EmitPacketEntities(%struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
