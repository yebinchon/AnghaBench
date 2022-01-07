; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_minicrypto.c_test_hrr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_minicrypto.c_test_hrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__**, i32, i32**, i32*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32* }

@ptls_minicrypto_x25519 = common dso_local global i32 0, align 4
@ptls_minicrypto_secp256r1 = common dso_local global i32 0, align 4
@__const.test_hrr.client_keyex = private unnamed_addr constant [3 x i32*] [i32* @ptls_minicrypto_x25519, i32* @ptls_minicrypto_secp256r1, i32* null], align 16
@ptls_minicrypto_random_bytes = common dso_local global i32 0, align 4
@ptls_get_time = common dso_local global i32 0, align 4
@ptls_minicrypto_cipher_suites = common dso_local global i32 0, align 4
@ctx_peer = common dso_local global %struct.TYPE_12__* null, align 8
@PTLS_GROUP_SECP256R1 = common dso_local global i64 0, align 8
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hrr() #0 {
  %1 = alloca [3 x i32*], align 16
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca [16384 x i32], align 16
  %9 = alloca [16384 x i32], align 16
  %10 = alloca [16384 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = bitcast [3 x i32*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([3 x i32*]* @__const.test_hrr.client_keyex to i8*), i64 24, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %15 = load i32, i32* @ptls_minicrypto_random_bytes, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_11__**
  store %struct.TYPE_11__** %17, %struct.TYPE_11__*** %14, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store i32 ptrtoint (i32* @ptls_get_time to i32), i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %20 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1, i64 0, i64 0
  store i32** %20, i32*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %22 = load i32, i32* @ptls_minicrypto_cipher_suites, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %21, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 4
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctx_peer, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctx_peer, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %35, i64 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PTLS_GROUP_SECP256R1, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %32, %0
  %43 = phi i1 [ false, %0 ], [ %41, %32 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctx_peer, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %48, i64 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = icmp eq %struct.TYPE_11__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = call i32* @ptls_new(%struct.TYPE_12__* %2, i32 0)
  store i32* %54, i32** %3, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctx_peer, align 8
  %56 = call i32* @ptls_new(%struct.TYPE_12__* %55, i32 1)
  store i32* %56, i32** %4, align 8
  %57 = getelementptr inbounds [16384 x i32], [16384 x i32]* %8, i64 0, i64 0
  %58 = call i32 @ptls_buffer_init(%struct.TYPE_13__* %5, i32* %57, i32 65536)
  %59 = getelementptr inbounds [16384 x i32], [16384 x i32]* %9, i64 0, i64 0
  %60 = call i32 @ptls_buffer_init(%struct.TYPE_13__* %6, i32* %59, i32 65536)
  %61 = getelementptr inbounds [16384 x i32], [16384 x i32]* %10, i64 0, i64 0
  %62 = call i32 @ptls_buffer_init(%struct.TYPE_13__* %7, i32* %61, i32 65536)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @ptls_handshake(i32* %63, %struct.TYPE_13__* %5, i32* null, i64* null, i32* null)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %11, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @ptls_handshake(i32* %72, %struct.TYPE_13__* %6, i32* %74, i64* %11, i32* null)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ok(i32 %79)
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ugt i64 %89, 9
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i32
  %99 = call i32 @ok(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %11, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @ptls_handshake(i32* %102, %struct.TYPE_13__* %5, i32* %104, i64* %11, i32* null)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @ok(i32 %109)
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %111, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ok(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp uge i64 %119, 9
  %121 = zext i1 %120 to i32
  %122 = call i32 @ok(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %11, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @ptls_handshake(i32* %132, %struct.TYPE_13__* %6, i32* %134, i64* %11, i32* null)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @ok(i32 %138)
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %140, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @ok(i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp uge i64 %148, 9
  %150 = zext i1 %149 to i32
  %151 = call i32 @ok(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 5
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i32
  %158 = call i32 @ok(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %11, align 8
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @ptls_handshake(i32* %161, %struct.TYPE_13__* %5, i32* %163, i64* %11, i32* null)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @ok(i32 %167)
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %169, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @ok(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @ptls_send(i32* %176, %struct.TYPE_13__* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @ok(i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %11, align 8
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @ptls_receive(i32* %184, %struct.TYPE_13__* %7, i32* %186, i64* %11)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp eq i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @ok(i32 %190)
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %192, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @ok(i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i64 0, i64* %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 11
  %202 = zext i1 %201 to i32
  %203 = call i32 @ok(i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = call i64 @memcmp(i32* %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %207 = icmp eq i64 %206, 0
  %208 = zext i1 %207 to i32
  %209 = call i32 @ok(i32 %208)
  %210 = call i32 @ptls_buffer_dispose(%struct.TYPE_13__* %7)
  %211 = call i32 @ptls_buffer_dispose(%struct.TYPE_13__* %6)
  %212 = call i32 @ptls_buffer_dispose(%struct.TYPE_13__* %5)
  %213 = load i32*, i32** %3, align 8
  %214 = call i32 @ptls_free(i32* %213)
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @ptls_free(i32* %215)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @ptls_new(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_13__*, i32*, i32) #2

declare dso_local i32 @ptls_handshake(i32*, %struct.TYPE_13__*, i32*, i64*, i32*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @ptls_send(i32*, %struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @ptls_receive(i32*, %struct.TYPE_13__*, i32*, i64*) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_13__*) #2

declare dso_local i32 @ptls_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
