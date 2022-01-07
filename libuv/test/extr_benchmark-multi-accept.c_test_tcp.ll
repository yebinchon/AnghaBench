; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_test_tcp.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_test_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.client_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@listen_addr = common dso_local global i32 0, align 4
@server_cb = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i32 0, align 4
@NUM_CONNECTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"client handle\00", align 1
@cl_connect_cb = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"accept%u: %.0f accepts/sec (%u total)\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"  thread #%u: %.0f accepts/sec (%u total, %.1f%%)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tcp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.server_ctx*, align 8
  %6 = alloca %struct.client_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.server_ctx*, align 8
  %12 = alloca %struct.client_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.server_ctx*, align 8
  %15 = alloca %struct.server_ctx*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* @TEST_PORT, align 4
  %17 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32* @listen_addr)
  %18 = icmp eq i64 0, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = call i32* (...) @uv_default_loop()
  store i32* %21, i32** %7, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.server_ctx* @calloc(i32 %22, i32 28)
  store %struct.server_ctx* %23, %struct.server_ctx** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.server_ctx* @calloc(i32 %24, i32 28)
  %26 = bitcast %struct.server_ctx* %25 to %struct.client_ctx*
  store %struct.client_ctx* %26, %struct.client_ctx** %6, align 8
  %27 = load %struct.server_ctx*, %struct.server_ctx** %5, align 8
  %28 = icmp ne %struct.server_ctx* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.client_ctx*, %struct.client_ctx** %6, align 8
  %32 = icmp ne %struct.client_ctx* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %58, %2
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load %struct.server_ctx*, %struct.server_ctx** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %40, i64 %42
  store %struct.server_ctx* %43, %struct.server_ctx** %11, align 8
  %44 = load %struct.server_ctx*, %struct.server_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %44, i32 0, i32 1
  %46 = call i64 @uv_sem_init(i32* %45, i32 0)
  %47 = icmp eq i64 0, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.server_ctx*, %struct.server_ctx** %11, align 8
  %51 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %50, i32 0, i32 2
  %52 = load i32, i32* @server_cb, align 4
  %53 = load %struct.server_ctx*, %struct.server_ctx** %11, align 8
  %54 = call i64 @uv_thread_create(i32* %51, i32 %52, %struct.server_ctx* %53)
  %55 = icmp eq i64 0, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  br label %58

58:                                               ; preds = %39
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load i32, i32* @UV_TCP, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.server_ctx*, %struct.server_ctx** %5, align 8
  %65 = call i32 @send_listen_handles(i32 %62, i32 %63, %struct.server_ctx* %64)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %106, %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %109

70:                                               ; preds = %66
  %71 = load %struct.client_ctx*, %struct.client_ctx** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.client_ctx, %struct.client_ctx* %71, i64 %73
  store %struct.client_ctx* %74, %struct.client_ctx** %12, align 8
  %75 = load i32, i32* @NUM_CONNECTS, align 4
  %76 = load i32, i32* %4, align 4
  %77 = udiv i32 %75, %76
  %78 = load %struct.client_ctx*, %struct.client_ctx** %12, align 8
  %79 = getelementptr inbounds %struct.client_ctx, %struct.client_ctx* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.client_ctx*, %struct.client_ctx** %12, align 8
  %81 = getelementptr inbounds %struct.client_ctx, %struct.client_ctx* %80, i32 0, i32 6
  %82 = bitcast i32* %81 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %8, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %84, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = call i64 @uv_tcp_init(i32* %85, %struct.TYPE_4__* %86)
  %88 = icmp eq i64 0, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  %91 = load %struct.client_ctx*, %struct.client_ctx** %12, align 8
  %92 = getelementptr inbounds %struct.client_ctx, %struct.client_ctx* %91, i32 0, i32 5
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = load i32, i32* @cl_connect_cb, align 4
  %95 = call i64 @uv_tcp_connect(i32* %92, %struct.TYPE_4__* %93, %struct.sockaddr* bitcast (i32* @listen_addr to %struct.sockaddr*), i32 %94)
  %96 = icmp eq i64 0, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.client_ctx*, %struct.client_ctx** %12, align 8
  %101 = getelementptr inbounds %struct.client_ctx, %struct.client_ctx* %100, i32 0, i32 4
  %102 = call i64 @uv_idle_init(i32* %99, i32* %101)
  %103 = icmp eq i64 0, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ASSERT(i32 %104)
  br label %106

106:                                              ; preds = %70
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %66

109:                                              ; preds = %66
  %110 = call i32 (...) @uv_hrtime()
  store i32 %110, i32* %13, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %113 = call i64 @uv_run(i32* %111, i32 %112)
  %114 = icmp eq i64 0, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  %117 = call i32 (...) @uv_hrtime()
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %121, 1.000000e+09
  store double %122, double* %10, align 8
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %144, %109
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %123
  %128 = load %struct.server_ctx*, %struct.server_ctx** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %128, i64 %130
  store %struct.server_ctx* %131, %struct.server_ctx** %14, align 8
  %132 = load %struct.server_ctx*, %struct.server_ctx** %14, align 8
  %133 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %132, i32 0, i32 3
  %134 = call i32 @uv_async_send(i32* %133)
  %135 = load %struct.server_ctx*, %struct.server_ctx** %14, align 8
  %136 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %135, i32 0, i32 2
  %137 = call i64 @uv_thread_join(i32* %136)
  %138 = icmp eq i64 0, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @ASSERT(i32 %139)
  %141 = load %struct.server_ctx*, %struct.server_ctx** %14, align 8
  %142 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %141, i32 0, i32 1
  %143 = call i32 @uv_sem_destroy(i32* %142)
  br label %144

144:                                              ; preds = %127
  %145 = load i32, i32* %9, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %123

147:                                              ; preds = %123
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @NUM_CONNECTS, align 4
  %150 = uitofp i32 %149 to double
  %151 = load double, double* %10, align 8
  %152 = fdiv double %150, %151
  %153 = load i32, i32* @NUM_CONNECTS, align 4
  %154 = uitofp i32 %153 to double
  %155 = call i32 (i8*, i32, double, double, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %148, double %152, double %154)
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %185, %147
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %3, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %156
  %161 = load %struct.server_ctx*, %struct.server_ctx** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %161, i64 %163
  store %struct.server_ctx* %164, %struct.server_ctx** %15, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.server_ctx*, %struct.server_ctx** %15, align 8
  %167 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = uitofp i32 %168 to double
  %170 = load double, double* %10, align 8
  %171 = fdiv double %169, %170
  %172 = load %struct.server_ctx*, %struct.server_ctx** %15, align 8
  %173 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = uitofp i32 %174 to double
  %176 = load %struct.server_ctx*, %struct.server_ctx** %15, align 8
  %177 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = uitofp i32 %178 to double
  %180 = fmul double %179, 1.000000e+02
  %181 = load i32, i32* @NUM_CONNECTS, align 4
  %182 = uitofp i32 %181 to double
  %183 = fdiv double %180, %182
  %184 = call i32 (i8*, i32, double, double, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %165, double %171, double %175, double %183)
  br label %185

185:                                              ; preds = %160
  %186 = load i32, i32* %9, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %156

188:                                              ; preds = %156
  %189 = load %struct.client_ctx*, %struct.client_ctx** %6, align 8
  %190 = bitcast %struct.client_ctx* %189 to %struct.server_ctx*
  %191 = call i32 @free(%struct.server_ctx* %190)
  %192 = load %struct.server_ctx*, %struct.server_ctx** %5, align 8
  %193 = call i32 @free(%struct.server_ctx* %192)
  %194 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, i32*) #1

declare dso_local i32* @uv_default_loop(...) #1

declare dso_local %struct.server_ctx* @calloc(i32, i32) #1

declare dso_local i64 @uv_sem_init(i32*, i32) #1

declare dso_local i64 @uv_thread_create(i32*, i32, %struct.server_ctx*) #1

declare dso_local i32 @send_listen_handles(i32, i32, %struct.server_ctx*) #1

declare dso_local i64 @uv_tcp_init(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @uv_tcp_connect(i32*, %struct.TYPE_4__*, %struct.sockaddr*, i32) #1

declare dso_local i64 @uv_idle_init(i32*, i32*) #1

declare dso_local i32 @uv_hrtime(...) #1

declare dso_local i64 @uv_run(i32*, i32) #1

declare dso_local i32 @uv_async_send(i32*) #1

declare dso_local i64 @uv_thread_join(i32*) #1

declare dso_local i32 @uv_sem_destroy(i32*) #1

declare dso_local i32 @printf(i8*, i32, double, double, ...) #1

declare dso_local i32 @free(%struct.server_ctx*) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
