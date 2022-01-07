; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs.c_test_fs_partial.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs.c_test_fs_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.thread_ctx = type { i32, i32, i32, i8*, i32, i32 }

@loop = common dso_local global i32 0, align 4
@sig_func = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@thread_main = common dso_local global i32 0, align 4
@read_req = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@UV_EINTR = common dso_local global i32 0, align 4
@write_req = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_fs_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fs_partial(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_ctx, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 54321, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = mul i64 1, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8* @malloc(i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = call i32 (...) @pthread_self()
  %26 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 1
  store i32 1000, i32* %29, align 4
  %30 = load i64, i64* %7, align 8
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @malloc(i32 %35)
  %37 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @malloc(i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %63, %1
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = mul i64 %56, 4
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call signext i8 @uv_buf_init(i8* %58, i32 4)
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 %59, i8* %62, align 1
  br label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %50

66:                                               ; preds = %50
  %67 = call i32 (...) @uv_default_loop()
  store i32 %67, i32* @loop, align 4
  %68 = load i32, i32* @loop, align 4
  %69 = call i64 @uv_signal_init(i32 %68, i32* %5)
  %70 = icmp eq i64 0, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i32, i32* @sig_func, align 4
  %74 = load i32, i32* @SIGUSR1, align 4
  %75 = call i64 @uv_signal_start(i32* %5, i32 %73, i32 %74)
  %76 = icmp eq i64 0, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %80 = call i64 @pipe(i32* %79)
  %81 = icmp eq i64 0, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* @thread_main, align 4
  %90 = call i64 @uv_thread_create(i32* %4, i32 %89, %struct.thread_ctx* %3)
  %91 = icmp eq i64 0, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %135

96:                                               ; preds = %66
  %97 = load i8*, i8** %8, align 8
  store i8* %97, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %132, %96
  %99 = load i32, i32* %12, align 4
  %100 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %98
  %104 = load i32, i32* @loop, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load i64, i64* %7, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @uv_fs_read(i32 %104, %struct.TYPE_6__* @read_req, i32 %106, i8* %107, i32 %109, i32 -1, i32* null)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %103
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i64 @uv_test_fs_buf_offset(i8* %114, i32 %115)
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %11, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %7, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %132

126:                                              ; preds = %103
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @UV_EINTR, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @ASSERT(i32 %130)
  br label %132

132:                                              ; preds = %126, %113
  %133 = call i32 @uv_fs_req_cleanup(%struct.TYPE_6__* @read_req)
  br label %98

134:                                              ; preds = %98
  br label %154

135:                                              ; preds = %66
  %136 = load i32, i32* @loop, align 4
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i32 @uv_fs_write(i32 %136, %struct.TYPE_6__* @write_req, i32 %138, i8* %139, i64 %140, i32 -1, i32* null)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @write_req, i32 0, i32 0), align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @ASSERT(i32 %145)
  %147 = load i32, i32* %15, align 4
  %148 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %147, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @ASSERT(i32 %151)
  %153 = call i32 @uv_fs_req_cleanup(%struct.TYPE_6__* @write_req)
  br label %154

154:                                              ; preds = %135, %134
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 3
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @memcmp(i8* %155, i8* %157, i32 %159)
  %161 = icmp eq i64 0, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @ASSERT(i32 %162)
  %164 = call i64 @uv_thread_join(i32* %4)
  %165 = icmp eq i64 0, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @ASSERT(i32 %166)
  %168 = load i32, i32* @loop, align 4
  %169 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %170 = call i64 @uv_run(i32 %168, i32 %169)
  %171 = icmp eq i64 0, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @ASSERT(i32 %172)
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @close(i32 %175)
  %177 = icmp eq i64 0, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @ASSERT(i32 %178)
  %180 = call i32 @uv_close(i32* %5, i32* null)
  %181 = load i32, i32* @loop, align 4
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @uv_fs_read(i32 %181, %struct.TYPE_6__* @read_req, i32 %183, i8* %184, i32 1, i32 -1, i32* null)
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %16, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @ASSERT(i32 %188)
  %190 = call i32 @uv_fs_req_cleanup(%struct.TYPE_6__* @read_req)
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @close(i32 %192)
  %194 = icmp eq i64 0, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @ASSERT(i32 %195)
  %197 = load i8*, i8** %8, align 8
  %198 = call i32 @free(i8* %197)
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 @free(i8* %199)
  %201 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %3, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @free(i8* %202)
  %204 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local signext i8 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i64 @uv_signal_init(i32, i32*) #1

declare dso_local i64 @uv_signal_start(i32*, i32, i32) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @uv_thread_create(i32*, i32, %struct.thread_ctx*) #1

declare dso_local i32 @uv_fs_read(i32, %struct.TYPE_6__*, i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @uv_test_fs_buf_offset(i8*, i32) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_6__*) #1

declare dso_local i32 @uv_fs_write(i32, %struct.TYPE_6__*, i32, i8*, i64, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @uv_thread_join(i32*) #1

declare dso_local i64 @uv_run(i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
