; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_send.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { %struct.TYPE_37__, %struct.TYPE_33__*, %struct.TYPE_49__*, %struct.TYPE_47__*, %struct.TYPE_45__ }
%struct.TYPE_37__ = type { i64, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32* }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_34__ }
%struct.TYPE_47__ = type { %struct.TYPE_46__, i64 }
%struct.TYPE_46__ = type { %struct.TYPE_34__ }
%struct.TYPE_45__ = type { i64, %struct.TYPE_44__, i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_38__ = type { i64, i64, %struct.TYPE_35__, i32**, %struct.TYPE_42__, %struct.TYPE_40__ }
%struct.TYPE_35__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_42__ = type { i32*, i32*, i32* }
%struct.TYPE_40__ = type { i32, i32* }
%struct.TYPE_41__ = type { i64, i64 }

@now = common dso_local global i64 0, align 8
@SEND = common dso_local global i32 0, align 4
@QUICLY_STATE_CLOSING = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@QUICLY_ERROR_FREE_CONNECTION = common dso_local global i32 0, align 4
@QUICLY_QUIC_BIT = common dso_local global i32 0, align 4
@QUICLY_PACKET_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@QUICLY_PACKET_TYPE_INITIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_send(%struct.TYPE_39__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_39__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_38__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 0
  %15 = load i32**, i32*** %6, align 8
  %16 = ptrtoint i32** %15 to i32
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 1
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %20, %struct.TYPE_34__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 3
  store i32** null, i32*** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 4
  %23 = bitcast %struct.TYPE_42__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 5
  %25 = bitcast %struct.TYPE_40__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 16, i1 false)
  %26 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @update_now(i32 %29)
  %31 = load i64, i64* @now, align 8
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %33 = call i64 @quicly_get_first_timeout(%struct.TYPE_39__* %32)
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i64*, i64** %7, align 8
  store i64 0, i64* %36, align 8
  store i32 0, i32* %4, align 4
  br label %229

37:                                               ; preds = %3
  %38 = load i32, i32* @SEND, align 4
  %39 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %40 = call i32 (...) @probe_now()
  %41 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @QUICLY_PROBE_HEXDUMP(i32 %50, i32 %56)
  %58 = call i32 @QUICLY_PROBE(i32 %38, %struct.TYPE_39__* %39, i32 %40, i64 %44, i32 %57)
  %59 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QUICLY_STATE_CLOSING, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %188

65:                                               ; preds = %37
  %66 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %67 = call i32 @init_acks_iter(%struct.TYPE_39__* %66, i32* %10)
  %68 = call %struct.TYPE_41__* @quicly_sentmap_get(i32* %10)
  %69 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @UINT64_MAX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @QUICLY_ERROR_FREE_CONNECTION, align 4
  store i32 %74, i32* %4, align 4
  br label %229

75:                                               ; preds = %65
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @QUICLY_STATE_CLOSING, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %167

82:                                               ; preds = %75
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @now, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %89, label %167

89:                                               ; preds = %82
  %90 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %91 = call i32 @destroy_all_streams(%struct.TYPE_39__* %90, i32 0, i32 0)
  %92 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_47__*, %struct.TYPE_47__** %93, align 8
  %95 = icmp ne %struct.TYPE_47__* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %89
  %97 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_47__*, %struct.TYPE_47__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_47__*, %struct.TYPE_47__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 1
  store %struct.TYPE_34__* %108, %struct.TYPE_34__** %110, align 8
  %111 = load i32, i32* @QUICLY_QUIC_BIT, align 4
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %154

114:                                              ; preds = %96, %89
  %115 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_49__*, %struct.TYPE_49__** %116, align 8
  %118 = icmp ne %struct.TYPE_49__* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_49__*, %struct.TYPE_49__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 1
  store %struct.TYPE_34__* %124, %struct.TYPE_34__** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %119
  %131 = load i32, i32* @QUICLY_PACKET_TYPE_HANDSHAKE, align 4
  %132 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %153

134:                                              ; preds = %119, %114
  %135 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 1
  store %struct.TYPE_34__* %139, %struct.TYPE_34__** %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = load i32, i32* @QUICLY_PACKET_TYPE_INITIAL, align 4
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %134, %130
  br label %154

154:                                              ; preds = %153, %103
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %156 = call i32 @send_connection_close(%struct.TYPE_39__* %155, %struct.TYPE_38__* %8)
  store i32 %156, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %4, align 4
  br label %229

160:                                              ; preds = %154
  %161 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %162 = call i32 @commit_send_packet(%struct.TYPE_39__* %161, %struct.TYPE_38__* %8, i32 0)
  store i32 %162, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %229

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %82, %75
  %168 = call %struct.TYPE_41__* @quicly_sentmap_get(i32* %10)
  %169 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %172 = call i64 @get_sentmap_expiration_time(%struct.TYPE_39__* %171)
  %173 = add nsw i64 %170, %172
  %174 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 0
  store i64 %173, i64* %176, align 8
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @now, align 8
  %182 = icmp sgt i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %7, align 8
  store i64 %186, i64* %187, align 8
  store i32 0, i32* %4, align 4
  br label %229

188:                                              ; preds = %37
  %189 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %190 = call i32 @do_send(%struct.TYPE_39__* %189, %struct.TYPE_38__* %8)
  store i32 %190, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %4, align 4
  br label %229

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %222

198:                                              ; preds = %194
  %199 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @now, align 8
  %205 = icmp sle i64 %203, %204
  br i1 %205, label %206, label %222

206:                                              ; preds = %198
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @now, align 8
  %213 = icmp eq i64 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %217 = call i32 @do_send(%struct.TYPE_39__* %216, %struct.TYPE_38__* %8)
  store i32 %217, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %206
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %4, align 4
  br label %229

221:                                              ; preds = %206
  br label %222

222:                                              ; preds = %221, %198, %194
  %223 = load %struct.TYPE_39__*, %struct.TYPE_39__** %5, align 8
  %224 = call i32 @assert_consistency(%struct.TYPE_39__* %223, i32 1)
  %225 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %8, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64*, i64** %7, align 8
  store i64 %226, i64* %227, align 8
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %4, align 4
  br label %229

229:                                              ; preds = %222, %219, %192, %167, %164, %158, %73, %35
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @update_now(i32) #2

declare dso_local i64 @quicly_get_first_timeout(%struct.TYPE_39__*) #2

declare dso_local i32 @QUICLY_PROBE(i32, %struct.TYPE_39__*, i32, i64, i32) #2

declare dso_local i32 @probe_now(...) #2

declare dso_local i32 @QUICLY_PROBE_HEXDUMP(i32, i32) #2

declare dso_local i32 @init_acks_iter(%struct.TYPE_39__*, i32*) #2

declare dso_local %struct.TYPE_41__* @quicly_sentmap_get(i32*) #2

declare dso_local i32 @destroy_all_streams(%struct.TYPE_39__*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @send_connection_close(%struct.TYPE_39__*, %struct.TYPE_38__*) #2

declare dso_local i32 @commit_send_packet(%struct.TYPE_39__*, %struct.TYPE_38__*, i32) #2

declare dso_local i64 @get_sentmap_expiration_time(%struct.TYPE_39__*) #2

declare dso_local i32 @do_send(%struct.TYPE_39__*, %struct.TYPE_38__*) #2

declare dso_local i32 @assert_consistency(%struct.TYPE_39__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
