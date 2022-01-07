; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_stream-concurrency.c_test_stream_concurrency.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_stream-concurrency.c_test_stream_concurrency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }

@quic_ctx = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@fake_address = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@QUICLY_DELAYED_ACK_TIMEOUT = common dso_local global i64 0, align 8
@quic_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stream_concurrency() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @quic_ctx, i32 0, i32 0, i32 0), align 8
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 2
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca %struct.TYPE_19__*, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  %21 = alloca %struct.TYPE_18__*, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = call i32 (...) @new_master_id()
  %23 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %24 = call i32 @quicly_connect(i32** %1, %struct.TYPE_14__* @quic_ctx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fake_address, i32 0, i32 0), i32* null, i32 %22, i32 %23, i32* null, i32* null)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27)
  store i64 1, i64* %12, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @quicly_send(i32* %29, i32** %11, i64* %12)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37)
  %39 = call i32 @decode_packets(i32* %13, i32** %11, i32 1)
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45)
  %47 = call i32 (...) @new_master_id()
  %48 = call i32 @quicly_accept(i32** %2, %struct.TYPE_14__* @quic_ctx, i32* null, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fake_address, i32 0, i32 0), i32* %13, i32* null, i32 %47, i32* null)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51)
  %53 = call i32 @free_packets(i32** %11, i32 1)
  %54 = load i32*, i32** %2, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @transmit(i32* %54, i32* %55)
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %94, %0
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %57
  %63 = load i32*, i32** %1, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %64
  %66 = call i32 @quicly_open_stream(i32* %63, %struct.TYPE_19__** %65, i32 0)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %71
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %21, i64 %76
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %78
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  br label %97

85:                                               ; preds = %62
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %86
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_19__* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %94

94:                                               ; preds = %85
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %57

97:                                               ; preds = %84, %57
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %3, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @transmit(i32* %103, i32* %104)
  %106 = load i32*, i32** %2, align 8
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @transmit(i32* %106, i32* %107)
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %109
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ok(i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = load i64, i64* %9, align 8
  %117 = sub i64 %116, 1
  %118 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %117
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_19__* @quicly_get_stream(i32* %115, i32 %121)
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %6, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %124 = icmp ne %struct.TYPE_19__* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = sub i64 %130, 1
  %132 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %131
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 123)
  %135 = call i32 @quicly_reset_stream(%struct.TYPE_19__* %133, i64 %134)
  %136 = load i64, i64* %9, align 8
  %137 = sub i64 %136, 1
  %138 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 456)
  %141 = call i32 @quicly_request_stop(%struct.TYPE_19__* %139, i64 %140)
  %142 = load i32*, i32** %1, align 8
  %143 = load i32*, i32** %2, align 8
  %144 = call i32 @transmit(i32* %142, i32* %143)
  %145 = load i32*, i32** %2, align 8
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @transmit(i32* %145, i32* %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 123)
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @ok(i32 %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 456)
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @ok(i32 %162)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @ok(i32 %169)
  %171 = load i64, i64* %9, align 8
  %172 = sub i64 %171, 1
  %173 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %21, i64 %172
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 456)
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @ok(i32 %180)
  %182 = load i64, i64* %9, align 8
  %183 = sub i64 %182, 1
  %184 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %21, i64 %183
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @ok(i32 %187)
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %189
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ok(i32 %193)
  %195 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %196 = load i32, i32* @quic_now, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* @quic_now, align 4
  %200 = load i32*, i32** %1, align 8
  %201 = load i32*, i32** %2, align 8
  %202 = call i32 @transmit(i32* %200, i32* %201)
  %203 = load i32*, i32** %2, align 8
  %204 = load i32*, i32** %1, align 8
  %205 = call i32 @transmit(i32* %203, i32* %204)
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @ok(i32 %208)
  %210 = load i64, i64* %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %210
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i32 @ok(i32 %217)
  %219 = load i64, i64* %9, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %9, align 8
  %221 = load i32*, i32** %1, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %222
  %224 = call i32 @quicly_open_stream(i32* %221, %struct.TYPE_19__** %223, i32 0)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp eq i32 %225, 0
  %227 = zext i1 %226 to i32
  %228 = call i32 @ok(i32 %227)
  %229 = load i64, i64* %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %18, i64 %229
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @ok(i32 %233)
  %235 = load i32*, i32** %1, align 8
  %236 = call i32 @quicly_free(i32* %235)
  %237 = load i32*, i32** %2, align 8
  %238 = call i32 @quicly_free(i32* %237)
  %239 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %239)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @quicly_connect(i32**, %struct.TYPE_14__*, i8*, i32*, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @new_master_id(...) #2

declare dso_local i32 @ptls_iovec_init(i32*, i32) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @quicly_send(i32*, i32**, i64*) #2

declare dso_local i32 @decode_packets(i32*, i32**, i32) #2

declare dso_local i32 @quicly_accept(i32**, %struct.TYPE_14__*, i32*, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @free_packets(i32**, i32) #2

declare dso_local i32 @transmit(i32*, i32*) #2

declare dso_local i32 @quicly_open_stream(i32*, %struct.TYPE_19__**, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @quicly_streambuf_egress_write(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local %struct.TYPE_19__* @quicly_get_stream(i32*, i32) #2

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_19__*, i64) #2

declare dso_local i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32) #2

declare dso_local i32 @quicly_request_stop(%struct.TYPE_19__*, i64) #2

declare dso_local i32 @quicly_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
