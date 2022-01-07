; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_frame.c_test_ack_decode.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_frame.c_test_ack_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, i32, i32*, i64 }

@__const.test_ack_decode.pat = private unnamed_addr constant [4 x i32] [i32 52, i32 0, i32 0, i32 17], align 16
@__const.test_ack_decode.pat.1 = private unnamed_addr constant [8 x i32] [i32 52, i32 0, i32 2, i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@QUICLY_ACK_MAX_GAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@test_ack_decode_underflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ack_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ack_decode() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca [1024 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.test_ack_decode.pat to i8*), i64 16, i1 false)
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  store i32* %14, i32** %2, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %16 = getelementptr inbounds i32, i32* %15, i64 16
  %17 = call i64 @quicly_decode_ack_frame(i32** %2, i32* %16, %struct.TYPE_3__* %3, i32 0)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 16
  %24 = icmp eq i32* %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 52
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 18
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 35
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47)
  %49 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([8 x i32]* @__const.test_ack_decode.pat.1 to i8*), i64 32, i1 false)
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32* %50, i32** %5, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %52 = getelementptr inbounds i32, i32* %51, i64 32
  %53 = call i64 @quicly_decode_ack_frame(i32** %5, i32* %52, %struct.TYPE_3__* %6, i32 0)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 32
  %60 = icmp eq i32* %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 52
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 3
  %92 = zext i1 %91 to i32
  %93 = call i32 @ok(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 4
  %99 = zext i1 %98 to i32
  %100 = call i32 @ok(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 5
  %106 = zext i1 %105 to i32
  %107 = call i32 @ok(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 38
  %111 = zext i1 %110 to i32
  %112 = call i32 @ok(i32 %111)
  %113 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  store i32* %113, i32** %8, align 8
  %114 = getelementptr inbounds [1024 x i32], [1024 x i32]* %7, i64 0, i64 0
  store i32* %114, i32** %9, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32* @quicly_encodev(i32* %115, i32 64000)
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32* @quicly_encodev(i32* %117, i32 0)
  store i32* %118, i32** %8, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* @QUICLY_ACK_MAX_GAPS, align 4
  %121 = add nsw i32 %120, 30
  %122 = call i32* @quicly_encodev(i32* %119, i32 %121)
  store i32* %122, i32** %8, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32* @quicly_encodev(i32* %123, i32 8)
  store i32* %124, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %138, %0
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @QUICLY_ACK_MAX_GAPS, align 4
  %128 = add nsw i32 %127, 30
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32* @quicly_encodev(i32* %131, i32 %132)
  store i32* %133, i32** %8, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %10, align 4
  %136 = srem i32 %135, 10
  %137 = call i32* @quicly_encodev(i32* %134, i32 %136)
  store i32* %137, i32** %8, align 8
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %125

141:                                              ; preds = %125
  %142 = load i32*, i32** %8, align 8
  %143 = call i64 @quicly_decode_ack_frame(i32** %9, i32* %142, %struct.TYPE_3__* %12, i32 0)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @ok(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 64000
  %150 = zext i1 %149 to i32
  %151 = call i32 @ok(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @ok(i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @QUICLY_ACK_MAX_GAPS, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp eq i64 %158, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @ok(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 9
  %169 = zext i1 %168 to i32
  %170 = call i32 @ok(i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %222, %141
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %181, label %225

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  %190 = icmp eq i32 %187, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @ok(i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %10, align 4
  %201 = srem i32 %200, 10
  %202 = add nsw i32 %201, 1
  %203 = icmp eq i32 %199, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @ok(i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %211, %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %181
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %175

225:                                              ; preds = %175
  %226 = load i32*, i32** %9, align 8
  %227 = load i32*, i32** %8, align 8
  %228 = icmp eq i32* %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @ok(i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sub nsw i32 64000, %233
  %235 = add nsw i32 %234, 1
  %236 = icmp eq i32 %232, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @ok(i32 %237)
  %239 = load i32, i32* @test_ack_decode_underflow, align 4
  %240 = call i32 @subtest(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %239)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ok(i32) #2

declare dso_local i64 @quicly_decode_ack_frame(i32**, i32*, %struct.TYPE_3__*, i32) #2

declare dso_local i32* @quicly_encodev(i32*, i32) #2

declare dso_local i32 @subtest(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
