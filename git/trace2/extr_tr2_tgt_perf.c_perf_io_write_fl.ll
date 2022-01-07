; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_perf_io_write_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_perf_io_write_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.tr2tls_thread_ctx = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@tr2dst_perf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, %struct.repository*, i32*, i32*, i8*, %struct.strbuf*)* @perf_io_write_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_io_write_fl(i8* %0, i32 %1, i8* %2, %struct.repository* %3, i32* %4, i32* %5, i8* %6, %struct.strbuf* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.repository*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.strbuf*, align 8
  %17 = alloca %struct.tr2tls_thread_ctx*, align 8
  %18 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store %struct.repository* %3, %struct.repository** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.strbuf* %7, %struct.strbuf** %16, align 8
  %19 = call %struct.tr2tls_thread_ctx* (...) @tr2tls_get_self()
  store %struct.tr2tls_thread_ctx* %19, %struct.tr2tls_thread_ctx** %17, align 8
  %20 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %17, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.repository*, %struct.repository** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 @perf_fmt_prepare(i8* %21, %struct.tr2tls_thread_ctx* %22, i8* %23, i32 %24, %struct.repository* %25, i32* %26, i32* %27, i8* %28, %struct.strbuf* %18)
  %30 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %31 = call i32 @strbuf_addbuf(%struct.strbuf* %18, %struct.strbuf* %30)
  %32 = call i32 @tr2_dst_write_line(i32* @tr2dst_perf, %struct.strbuf* %18)
  %33 = call i32 @strbuf_release(%struct.strbuf* %18)
  ret void
}

declare dso_local %struct.tr2tls_thread_ctx* @tr2tls_get_self(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @perf_fmt_prepare(i8*, %struct.tr2tls_thread_ctx*, i8*, i32, %struct.repository*, i32*, i32*, i8*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @tr2_dst_write_line(i32*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
