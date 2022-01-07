; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_git_smart__download_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_git_smart__download_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64 }
%struct.TYPE_26__ = type { i32 (i32, i32, i32)*, %struct.network_packetsize_payload*, i64 (i64, %struct.network_packetsize_payload*)*, i32, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_27__ }
%struct.network_packetsize_payload = type { i32 (%struct.TYPE_31__*, i8*)*, i64, i8*, %struct.TYPE_31__*, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.git_odb_writepack = type { i32 (%struct.git_odb_writepack*, i32, i64, %struct.TYPE_31__*)*, i32 (%struct.git_odb_writepack*, %struct.TYPE_31__*)*, i32 (%struct.git_odb_writepack*)* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_29__ = type { i64, i32 }

@GIT_EUSER = common dso_local global i32 0, align 4
@GIT_PKT_PROGRESS = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"oversized progress message\00", align 1
@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_PKT_DATA = common dso_local global i64 0, align 8
@GIT_PKT_FLUSH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_smart__download_pack(i32* %0, i32* %1, %struct.TYPE_31__* %2, i32 (%struct.TYPE_31__*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32 (%struct.TYPE_31__*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.git_odb_writepack*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.network_packetsize_payload, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %8, align 8
  store i32 (%struct.TYPE_31__*, i8*)* %3, i32 (%struct.TYPE_31__*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %11, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 6
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %12, align 8
  store %struct.git_odb_writepack* null, %struct.git_odb_writepack** %14, align 8
  store i32 0, i32* %15, align 4
  %24 = bitcast %struct.network_packetsize_payload* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 40, i1 false)
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %26 = call i32 @memset(%struct.TYPE_31__* %25, i32 0, i32 8)
  %27 = load i32 (%struct.TYPE_31__*, i8*)*, i32 (%struct.TYPE_31__*, i8*)** %9, align 8
  %28 = icmp ne i32 (%struct.TYPE_31__*, i8*)* %27, null
  br i1 %28, label %29, label %70

29:                                               ; preds = %5
  %30 = load i32 (%struct.TYPE_31__*, i8*)*, i32 (%struct.TYPE_31__*, i8*)** %9, align 8
  %31 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 0
  store i32 (%struct.TYPE_31__*, i8*)* %30, i32 (%struct.TYPE_31__*, i8*)** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %35 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 3
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %35, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 2
  store i64 (i64, %struct.network_packetsize_payload*)* @network_packetsize, i64 (i64, %struct.network_packetsize_payload*)** %37, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  store %struct.network_packetsize_payload* %16, %struct.network_packetsize_payload** %39, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %29
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 2
  %54 = load i64 (i64, %struct.network_packetsize_payload*)*, i64 (i64, %struct.network_packetsize_payload*)** %53, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 1
  %61 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %60, align 8
  %62 = call i64 %54(i64 %58, %struct.network_packetsize_payload* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 4
  %67 = call i32 @git_atomic_set(%struct.TYPE_25__* %66, i32 1)
  br label %68

68:                                               ; preds = %64, %51
  br label %69

69:                                               ; preds = %68, %45, %29
  br label %70

70:                                               ; preds = %69, %5
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @git_repository_odb__weakptr(i32** %13, i32* %71)
  store i32 %72, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %13, align 8
  %76 = load i32 (%struct.TYPE_31__*, i8*)*, i32 (%struct.TYPE_31__*, i8*)** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @git_odb_write_pack(%struct.git_odb_writepack** %14, i32* %75, i32 (%struct.TYPE_31__*, i8*)* %76, i8* %77)
  store i32 %78, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %70
  br label %240

81:                                               ; preds = %74
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %95 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %98 = call i32 @no_sideband(%struct.TYPE_26__* %94, %struct.git_odb_writepack* %95, %struct.TYPE_27__* %96, %struct.TYPE_31__* %97)
  store i32 %98, i32* %15, align 4
  br label %240

99:                                               ; preds = %87, %81
  br label %100

100:                                              ; preds = %208, %99
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %17, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = call i32 (...) @git_error_clear()
  %108 = load i32, i32* @GIT_EUSER, align 4
  store i32 %108, i32* %15, align 4
  br label %240

109:                                              ; preds = %100
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %111 = call i32 @recv_pkt(%struct.TYPE_30__** %17, i32* null, %struct.TYPE_27__* %110)
  store i32 %111, i32* %15, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %201

113:                                              ; preds = %109
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = call i32 (...) @git_error_clear()
  %121 = load i32, i32* @GIT_EUSER, align 4
  store i32 %121, i32* %15, align 4
  br label %200

122:                                              ; preds = %113
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @GIT_PKT_PROGRESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %122
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %130, align 8
  %132 = icmp ne i32 (i32, i32, i32)* %131, null
  br i1 %132, label %133, label %160

133:                                              ; preds = %128
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %135 = bitcast %struct.TYPE_30__* %134 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %135, %struct.TYPE_28__** %18, align 8
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @INT_MAX, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i32, i32* @GIT_ERROR_NET, align 4
  %143 = call i32 @git_error_set(i32 %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %144 = load i32, i32* @GIT_ERROR, align 4
  store i32 %144, i32* %15, align 4
  br label %240

145:                                              ; preds = %133
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %147, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %148(i32 %151, i32 %155, i32 %158)
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %145, %128
  br label %199

161:                                              ; preds = %122
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @GIT_PKT_DATA, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %188

167:                                              ; preds = %161
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %169 = bitcast %struct.TYPE_30__* %168 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %169, %struct.TYPE_29__** %19, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %167
  %175 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %176 = getelementptr inbounds %struct.git_odb_writepack, %struct.git_odb_writepack* %175, i32 0, i32 0
  %177 = load i32 (%struct.git_odb_writepack*, i32, i64, %struct.TYPE_31__*)*, i32 (%struct.git_odb_writepack*, i32, i64, %struct.TYPE_31__*)** %176, align 8
  %178 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %186 = call i32 %177(%struct.git_odb_writepack* %178, i32 %181, i64 %184, %struct.TYPE_31__* %185)
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %174, %167
  br label %198

188:                                              ; preds = %161
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @GIT_PKT_FLUSH, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %196 = call i32 @git__free(%struct.TYPE_30__* %195)
  br label %209

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197, %187
  br label %199

199:                                              ; preds = %198, %160
  br label %200

200:                                              ; preds = %199, %119
  br label %201

201:                                              ; preds = %200, %109
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %203 = call i32 @git_pkt_free(%struct.TYPE_30__* %202)
  %204 = load i32, i32* %15, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %240

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207
  br i1 true, label %100, label %209

209:                                              ; preds = %208, %194
  %210 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_31__*, i8*)*, i32 (%struct.TYPE_31__*, i8*)** %210, align 8
  %212 = icmp ne i32 (%struct.TYPE_31__*, i8*)* %211, null
  br i1 %212, label %213, label %233

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 3
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %217, %219
  br i1 %220, label %221, label %233

221:                                              ; preds = %213
  %222 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 0
  %223 = load i32 (%struct.TYPE_31__*, i8*)*, i32 (%struct.TYPE_31__*, i8*)** %222, align 8
  %224 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 3
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %224, align 8
  %226 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 %223(%struct.TYPE_31__* %225, i8* %227)
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %15, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %221
  br label %240

232:                                              ; preds = %221
  br label %233

233:                                              ; preds = %232, %213, %209
  %234 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %235 = getelementptr inbounds %struct.git_odb_writepack, %struct.git_odb_writepack* %234, i32 0, i32 1
  %236 = load i32 (%struct.git_odb_writepack*, %struct.TYPE_31__*)*, i32 (%struct.git_odb_writepack*, %struct.TYPE_31__*)** %235, align 8
  %237 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %239 = call i32 %236(%struct.git_odb_writepack* %237, %struct.TYPE_31__* %238)
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %233, %231, %206, %141, %106, %93, %80
  %241 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %242 = icmp ne %struct.git_odb_writepack* %241, null
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %245 = getelementptr inbounds %struct.git_odb_writepack, %struct.git_odb_writepack* %244, i32 0, i32 2
  %246 = load i32 (%struct.git_odb_writepack*)*, i32 (%struct.git_odb_writepack*)** %245, align 8
  %247 = load %struct.git_odb_writepack*, %struct.git_odb_writepack** %14, align 8
  %248 = call i32 %246(%struct.git_odb_writepack* %247)
  br label %249

249:                                              ; preds = %243, %240
  %250 = load i32 (%struct.TYPE_31__*, i8*)*, i32 (%struct.TYPE_31__*, i8*)** %9, align 8
  %251 = icmp ne i32 (%struct.TYPE_31__*, i8*)* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 2
  store i64 (i64, %struct.network_packetsize_payload*)* null, i64 (i64, %struct.network_packetsize_payload*)** %254, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  store %struct.network_packetsize_payload* null, %struct.network_packetsize_payload** %256, align 8
  br label %257

257:                                              ; preds = %252, %249
  %258 = load i32, i32* %15, align 4
  ret i32 %258
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #2

declare dso_local i64 @network_packetsize(i64, %struct.network_packetsize_payload*) #2

declare dso_local i32 @git_atomic_set(%struct.TYPE_25__*, i32) #2

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32*) #2

declare dso_local i32 @git_odb_write_pack(%struct.git_odb_writepack**, i32*, i32 (%struct.TYPE_31__*, i8*)*, i8*) #2

declare dso_local i32 @no_sideband(%struct.TYPE_26__*, %struct.git_odb_writepack*, %struct.TYPE_27__*, %struct.TYPE_31__*) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @recv_pkt(%struct.TYPE_30__**, i32*, %struct.TYPE_27__*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git__free(%struct.TYPE_30__*) #2

declare dso_local i32 @git_pkt_free(%struct.TYPE_30__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
