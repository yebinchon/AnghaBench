; ModuleID = '/home/carl/AnghaBench/git/extr_trace.c_trace_performance_vprintf_fl.c'
source_filename = "/home/carl/AnghaBench/git/extr_trace.c_trace_performance_vprintf_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@trace_performance_vprintf_fl.space = internal constant [11 x i8] c"          \00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@trace_perf_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"performance: %.9f s\00", align 1
@perf_indent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Too deep indentation\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c":%.*s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, i8*, i32)* @trace_performance_vprintf_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_performance_vprintf_fl(i8* %0, i32 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @prepare_trace_line(i8* %13, i32 %14, i32* @trace_perf_key, %struct.strbuf* %11)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %46

18:                                               ; preds = %5
  %19 = load i64, i64* %8, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 1.000000e+09
  %22 = call i32 (%struct.strbuf*, i8*, double, ...) @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), double %21)
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %18
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32, i32* @perf_indent, align 4
  %32 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @trace_performance_vprintf_fl.space, i64 0, i64 0))
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* @perf_indent, align 4
  %38 = sitofp i32 %37 to double
  %39 = call i32 (%struct.strbuf*, i8*, double, ...) @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @trace_performance_vprintf_fl.space, i64 0, i64 0))
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @strbuf_vaddf(%struct.strbuf* %11, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %25, %18
  %44 = call i32 @print_trace_line(i32* @trace_perf_key, %struct.strbuf* %11)
  %45 = call i32 @strbuf_release(%struct.strbuf* %11)
  br label %46

46:                                               ; preds = %43, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_trace_line(i8*, i32, i32*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, double, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_vaddf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @print_trace_line(i32*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
