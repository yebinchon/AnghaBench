; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_resumption_impl.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_resumption_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_14__**, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__*, i32*, %struct.TYPE_12__** }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32* }

@ctx = common dso_local global %struct.TYPE_11__* null, align 8
@ctx_peer = common dso_local global %struct.TYPE_17__* null, align 8
@ptls_minicrypto_x25519 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@on_copy_ticket = common dso_local global i32 0, align 4
@on_save_ticket = common dso_local global i32 0, align 4
@saved_ticket = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@sc_callcnt = common dso_local global i32 0, align 4
@TEST_HANDSHAKE_2RTT = common dso_local global i32 0, align 4
@TEST_HANDSHAKE_1RTT = common dso_local global i32 0, align 4
@TEST_HANDSHAKE_EARLY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_resumption_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_resumption_impl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.TYPE_14__*], align 16
  %6 = alloca %struct.TYPE_14__**, align 8
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_16__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %12, i64 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %19, i64 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %16, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %29, i64 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = icmp eq %struct.TYPE_14__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = icmp eq %struct.TYPE_12__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %45, i64 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ptls_minicrypto_x25519, i32 0, i32 0), align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %5, i64 0, i64 0
  store %struct.TYPE_14__* @ptls_minicrypto_x25519, %struct.TYPE_14__** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %54, i64 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %58, i64 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %55, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %55, i64 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %63, align 8
  store %struct.TYPE_14__** %64, %struct.TYPE_14__*** %6, align 8
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %2
  %68 = getelementptr inbounds [3 x %struct.TYPE_14__*], [3 x %struct.TYPE_14__*]* %5, i64 0, i64 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store %struct.TYPE_14__** %68, %struct.TYPE_14__*** %70, align 8
  br label %71

71:                                               ; preds = %67, %2
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %73 = load i32, i32* @on_copy_ticket, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %75 = load i32, i32* @on_save_ticket, align 4
  store i32 %75, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = icmp eq %struct.TYPE_15__* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = call i32* @ptls_iovec_init(i32* null, i32 0)
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32* %100, i32** %101, align 8
  %102 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_16__* @saved_ticket to i8*), i8* align 8 %102, i64 8, i1 false)
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store i32 86400, i32* %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32 8192, i32* %106, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %110, align 8
  store i32 0, i32* @sc_callcnt, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %71
  %114 = load i32, i32* @TEST_HANDSHAKE_2RTT, align 4
  br label %117

115:                                              ; preds = %71
  %116 = load i32, i32* @TEST_HANDSHAKE_1RTT, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @saved_ticket, i32 0, i32 0), align 8
  %120 = call i32 @test_handshake(i32* %119, i32 %118, i32 1, i32 0, i32 0)
  %121 = load i32, i32* @sc_callcnt, align 4
  %122 = icmp eq i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = call i32 @ok(i32 %123)
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @saved_ticket, i32 0, i32 0), align 8
  %126 = icmp ne i32* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 @ok(i32 %127)
  %129 = load i32, i32* @TEST_HANDSHAKE_1RTT, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @saved_ticket, i32 0, i32 0), align 8
  %132 = call i32 @test_handshake(i32* %131, i32 %129, i32 1, i32 0, i32 %130)
  %133 = load i32, i32* %4, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %140

135:                                              ; preds = %117
  %136 = load i32, i32* @sc_callcnt, align 4
  %137 = icmp eq i32 %136, 3
  %138 = zext i1 %137 to i32
  %139 = call i32 @ok(i32 %138)
  br label %145

140:                                              ; preds = %117
  %141 = load i32, i32* @sc_callcnt, align 4
  %142 = icmp eq i32 %141, 1
  %143 = zext i1 %142 to i32
  %144 = call i32 @ok(i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* @TEST_HANDSHAKE_EARLY_DATA, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @saved_ticket, i32 0, i32 0), align 8
  %149 = call i32 @test_handshake(i32* %148, i32 %146, i32 1, i32 0, i32 %147)
  %150 = load i32, i32* %4, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load i32, i32* @sc_callcnt, align 4
  %154 = icmp eq i32 %153, 5
  %155 = zext i1 %154 to i32
  %156 = call i32 @ok(i32 %155)
  br label %162

157:                                              ; preds = %145
  %158 = load i32, i32* @sc_callcnt, align 4
  %159 = icmp eq i32 %158, 1
  %160 = zext i1 %159 to i32
  %161 = call i32 @ok(i32 %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = load i32, i32* @TEST_HANDSHAKE_1RTT, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @saved_ticket, i32 0, i32 0), align 8
  %168 = call i32 @test_handshake(i32* %167, i32 %165, i32 1, i32 0, i32 %166)
  %169 = load i32, i32* %4, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = load i32, i32* @sc_callcnt, align 4
  %173 = icmp eq i32 %172, 7
  %174 = zext i1 %173 to i32
  %175 = call i32 @ok(i32 %174)
  br label %181

176:                                              ; preds = %162
  %177 = load i32, i32* @sc_callcnt, align 4
  %178 = icmp eq i32 %177, 1
  %179 = zext i1 %178 to i32
  %180 = call i32 @ok(i32 %179)
  br label %181

181:                                              ; preds = %176, %171
  %182 = load i32, i32* @TEST_HANDSHAKE_EARLY_DATA, align 4
  %183 = load i32, i32* %4, align 4
  %184 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @saved_ticket, i32 0, i32 0), align 8
  %185 = call i32 @test_handshake(i32* %184, i32 %182, i32 1, i32 0, i32 %183)
  %186 = load i32, i32* %4, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load i32, i32* @sc_callcnt, align 4
  %190 = icmp eq i32 %189, 9
  %191 = zext i1 %190 to i32
  %192 = call i32 @ok(i32 %191)
  br label %198

193:                                              ; preds = %181
  %194 = load i32, i32* @sc_callcnt, align 4
  %195 = icmp eq i32 %194, 1
  %196 = zext i1 %195 to i32
  %197 = call i32 @ok(i32 %196)
  br label %198

198:                                              ; preds = %193, %188
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  store i32 0, i32* %204, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ctx_peer, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %206, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %208, align 8
  %209 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %6, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  store %struct.TYPE_14__** %209, %struct.TYPE_14__*** %211, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ptls_iovec_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @test_handshake(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
