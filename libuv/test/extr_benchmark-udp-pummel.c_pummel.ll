; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-udp-pummel.c_pummel.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-udp-pummel.c_pummel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sender_state = type { %struct.sockaddr_in, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.receiver_state = type { %struct.sockaddr_in, i32, i32 }
%struct.sockaddr = type { i32 }

@senders = common dso_local global %struct.sender_state* null, align 8
@receivers = common dso_local global %struct.sender_state* null, align 8
@n_senders_ = common dso_local global i32 0, align 4
@n_receivers_ = common dso_local global i32 0, align 4
@timeout_cb = common dso_local global i32 0, align 4
@timed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@BASE_PORT = common dso_local global i64 0, align 8
@alloc_cb = common dso_local global i32 0, align 4
@recv_cb = common dso_local global i32 0, align 4
@bufs = common dso_local global %struct.sender_state* null, align 8
@EXPECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@send_cb = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"udp_pummel_%dv%d: %.0f/s received, %.0f/s sent. %u received, %u sent in %.1f seconds.\0A\00", align 1
@recv_cb_called = common dso_local global double 0.000000e+00, align 8
@send_cb_called = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @pummel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pummel(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.receiver_state*, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca %struct.sender_state, align 4
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca %struct.sender_state, align 4
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca %struct.sender_state, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca %struct.sender_state, align 4
  %20 = alloca { i64, i32 }, align 8
  %21 = alloca %struct.sender_state, align 4
  %22 = alloca { i64, i32 }, align 8
  %23 = alloca %struct.sender_state*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sender_state*, %struct.sender_state** @senders, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.sender_state* %25)
  %27 = icmp ule i32 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.sender_state*, %struct.sender_state** @receivers, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.sender_state* %31)
  %33 = icmp ule i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = call i32* (...) @uv_default_loop()
  store i32* %36, i32** %9, align 8
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* @n_senders_, align 4
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* @n_receivers_, align 4
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %3
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @uv_timer_init(i32* %42, i32* %7)
  %44 = icmp eq i64 0, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32, i32* @timeout_cb, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @uv_timer_start(i32* %7, i32 %47, i64 %48, i32 0)
  %50 = icmp eq i64 0, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = call i32 @uv_unref(i32* %7)
  store i32 1, i32* @timed, align 4
  br label %54

54:                                               ; preds = %41, %3
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %98, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %55
  %60 = load %struct.sender_state*, %struct.sender_state** @receivers, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %60, i64 %62
  %64 = bitcast %struct.sender_state* %63 to %struct.receiver_state*
  store %struct.receiver_state* %64, %struct.receiver_state** %11, align 8
  %65 = load i64, i64* @BASE_PORT, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %68, %struct.sockaddr_in* %12)
  %70 = icmp eq i64 0, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.receiver_state*, %struct.receiver_state** %11, align 8
  %75 = getelementptr inbounds %struct.receiver_state, %struct.receiver_state* %74, i32 0, i32 1
  %76 = call i64 @uv_udp_init(i32* %73, i32* %75)
  %77 = icmp eq i64 0, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.receiver_state*, %struct.receiver_state** %11, align 8
  %81 = getelementptr inbounds %struct.receiver_state, %struct.receiver_state* %80, i32 0, i32 1
  %82 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %83 = call i64 @uv_udp_bind(i32* %81, %struct.sockaddr* %82, i32 0)
  %84 = icmp eq i64 0, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.receiver_state*, %struct.receiver_state** %11, align 8
  %88 = getelementptr inbounds %struct.receiver_state, %struct.receiver_state* %87, i32 0, i32 1
  %89 = load i32, i32* @alloc_cb, align 4
  %90 = load i32, i32* @recv_cb, align 4
  %91 = call i64 @uv_udp_recv_start(i32* %88, i32 %89, i32 %90)
  %92 = icmp eq i64 0, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %struct.receiver_state*, %struct.receiver_state** %11, align 8
  %96 = getelementptr inbounds %struct.receiver_state, %struct.receiver_state* %95, i32 0, i32 1
  %97 = call i32 @uv_unref(i32* %96)
  br label %98

98:                                               ; preds = %59
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %55

101:                                              ; preds = %55
  %102 = load %struct.sender_state*, %struct.sender_state** @bufs, align 8
  %103 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %102, i64 0
  %104 = load i64, i64* @EXPECTED, align 8
  %105 = add nsw i64 %104, 0
  %106 = call { i64, i32 } @uv_buf_init(i64 %105, i32 10)
  store { i64, i32 } %106, { i64, i32 }* %14, align 8
  %107 = bitcast { i64, i32 }* %14 to i8*
  %108 = bitcast %struct.sender_state* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 8 %107, i64 12, i1 false)
  %109 = bitcast %struct.sender_state* %103 to i8*
  %110 = bitcast %struct.sender_state* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 12, i1 false)
  %111 = load %struct.sender_state*, %struct.sender_state** @bufs, align 8
  %112 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %111, i64 1
  %113 = load i64, i64* @EXPECTED, align 8
  %114 = add nsw i64 %113, 10
  %115 = call { i64, i32 } @uv_buf_init(i64 %114, i32 10)
  store { i64, i32 } %115, { i64, i32 }* %16, align 8
  %116 = bitcast { i64, i32 }* %16 to i8*
  %117 = bitcast %struct.sender_state* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 8 %116, i64 12, i1 false)
  %118 = bitcast %struct.sender_state* %112 to i8*
  %119 = bitcast %struct.sender_state* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 12, i1 false)
  %120 = load %struct.sender_state*, %struct.sender_state** @bufs, align 8
  %121 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %120, i64 2
  %122 = load i64, i64* @EXPECTED, align 8
  %123 = add nsw i64 %122, 20
  %124 = call { i64, i32 } @uv_buf_init(i64 %123, i32 10)
  store { i64, i32 } %124, { i64, i32 }* %18, align 8
  %125 = bitcast { i64, i32 }* %18 to i8*
  %126 = bitcast %struct.sender_state* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 8 %125, i64 12, i1 false)
  %127 = bitcast %struct.sender_state* %121 to i8*
  %128 = bitcast %struct.sender_state* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 12, i1 false)
  %129 = load %struct.sender_state*, %struct.sender_state** @bufs, align 8
  %130 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %129, i64 3
  %131 = load i64, i64* @EXPECTED, align 8
  %132 = add nsw i64 %131, 30
  %133 = call { i64, i32 } @uv_buf_init(i64 %132, i32 10)
  store { i64, i32 } %133, { i64, i32 }* %20, align 8
  %134 = bitcast { i64, i32 }* %20 to i8*
  %135 = bitcast %struct.sender_state* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %135, i8* align 8 %134, i64 12, i1 false)
  %136 = bitcast %struct.sender_state* %130 to i8*
  %137 = bitcast %struct.sender_state* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 12, i1 false)
  %138 = load %struct.sender_state*, %struct.sender_state** @bufs, align 8
  %139 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %138, i64 4
  %140 = load i64, i64* @EXPECTED, align 8
  %141 = add nsw i64 %140, 40
  %142 = call { i64, i32 } @uv_buf_init(i64 %141, i32 5)
  store { i64, i32 } %142, { i64, i32 }* %22, align 8
  %143 = bitcast { i64, i32 }* %22 to i8*
  %144 = bitcast %struct.sender_state* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 8 %143, i64 12, i1 false)
  %145 = bitcast %struct.sender_state* %139 to i8*
  %146 = bitcast %struct.sender_state* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 12, i1 false)
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %190, %101
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %193

151:                                              ; preds = %147
  %152 = load %struct.sender_state*, %struct.sender_state** @senders, align 8
  %153 = load i32, i32* %10, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %152, i64 %154
  store %struct.sender_state* %155, %struct.sender_state** %23, align 8
  %156 = load i64, i64* @BASE_PORT, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %5, align 4
  %159 = urem i32 %157, %158
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %156, %160
  %162 = load %struct.sender_state*, %struct.sender_state** %23, align 8
  %163 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %162, i32 0, i32 0
  %164 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %161, %struct.sockaddr_in* %163)
  %165 = icmp eq i64 0, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @ASSERT(i32 %166)
  %168 = load i32*, i32** %9, align 8
  %169 = load %struct.sender_state*, %struct.sender_state** %23, align 8
  %170 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %169, i32 0, i32 1
  %171 = call i64 @uv_udp_init(i32* %168, i32* %170)
  %172 = icmp eq i64 0, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @ASSERT(i32 %173)
  %175 = load %struct.sender_state*, %struct.sender_state** %23, align 8
  %176 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %175, i32 0, i32 2
  %177 = load %struct.sender_state*, %struct.sender_state** %23, align 8
  %178 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %177, i32 0, i32 1
  %179 = load %struct.sender_state*, %struct.sender_state** @bufs, align 8
  %180 = load %struct.sender_state*, %struct.sender_state** @bufs, align 8
  %181 = call i32 @ARRAY_SIZE(%struct.sender_state* %180)
  %182 = load %struct.sender_state*, %struct.sender_state** %23, align 8
  %183 = getelementptr inbounds %struct.sender_state, %struct.sender_state* %182, i32 0, i32 0
  %184 = bitcast %struct.sockaddr_in* %183 to %struct.sockaddr*
  %185 = load i32, i32* @send_cb, align 4
  %186 = call i64 @uv_udp_send(i32* %176, i32* %178, %struct.sender_state* %179, i32 %181, %struct.sockaddr* %184, i32 %185)
  %187 = icmp eq i64 0, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @ASSERT(i32 %188)
  br label %190

190:                                              ; preds = %151
  %191 = load i32, i32* %10, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %147

193:                                              ; preds = %147
  %194 = call double (...) @uv_hrtime()
  store double %194, double* %8, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %197 = call i64 @uv_run(i32* %195, i32 %196)
  %198 = icmp eq i64 0, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @ASSERT(i32 %199)
  %201 = call double (...) @uv_hrtime()
  %202 = load double, double* %8, align 8
  %203 = fsub double %201, %202
  store double %203, double* %8, align 8
  %204 = load double, double* %8, align 8
  %205 = fdiv double %204, 1.000000e+06
  store double %205, double* %8, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %4, align 4
  %208 = load double, double* @recv_cb_called, align 8
  %209 = load double, double* %8, align 8
  %210 = fdiv double %209, 1.000000e+03
  %211 = fdiv double %208, %210
  %212 = load double, double* @send_cb_called, align 8
  %213 = load double, double* %8, align 8
  %214 = fdiv double %213, 1.000000e+03
  %215 = fdiv double %212, %214
  %216 = load double, double* @recv_cb_called, align 8
  %217 = load double, double* @send_cb_called, align 8
  %218 = load double, double* %8, align 8
  %219 = fdiv double %218, 1.000000e+03
  %220 = call i32 @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %206, i32 %207, double %211, double %215, double %216, double %217, double %219)
  %221 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sender_state*) #1

declare dso_local i32* @uv_default_loop(...) #1

declare dso_local i64 @uv_timer_init(i32*, i32*) #1

declare dso_local i64 @uv_timer_start(i32*, i32, i64, i32) #1

declare dso_local i32 @uv_unref(i32*) #1

declare dso_local i64 @uv_ip4_addr(i8*, i64, %struct.sockaddr_in*) #1

declare dso_local i64 @uv_udp_init(i32*, i32*) #1

declare dso_local i64 @uv_udp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i64 @uv_udp_recv_start(i32*, i32, i32) #1

declare dso_local { i64, i32 } @uv_buf_init(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @uv_udp_send(i32*, i32*, %struct.sender_state*, i32, %struct.sockaddr*, i32) #1

declare dso_local double @uv_hrtime(...) #1

declare dso_local i64 @uv_run(i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, double, double, double, double, double) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
