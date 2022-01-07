; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_data_json_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_data_json_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32 }
%struct.repository = type { i32 }
%struct.tr2tls_thread_ctx = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"data_json\00", align 1
@tr2env_event_max_nesting_levels = common dso_local global i64 0, align 8
@JSON_WRITER_INIT = common dso_local global %struct.json_writer zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"t_abs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"t_rel\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nesting\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"category\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@tr2dst_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, i64, i8*, %struct.repository*, i8*, %struct.json_writer*)* @fn_data_json_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_data_json_fl(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, %struct.repository* %5, i8* %6, %struct.json_writer* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.repository*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.json_writer*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.tr2tls_thread_ctx*, align 8
  %19 = alloca %struct.json_writer, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.repository* %5, %struct.repository** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.json_writer* %7, %struct.json_writer** %16, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %22 = call %struct.tr2tls_thread_ctx* (...) @tr2tls_get_self()
  store %struct.tr2tls_thread_ctx* %22, %struct.tr2tls_thread_ctx** %18, align 8
  %23 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %18, align 8
  %24 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @tr2env_event_max_nesting_levels, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %8
  %29 = bitcast %struct.json_writer* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast (%struct.json_writer* @JSON_WRITER_INIT to i8*), i64 4, i1 false)
  %30 = load i64, i64* %11, align 8
  %31 = sitofp i64 %30 to double
  %32 = fdiv double %31, 1.000000e+06
  store double %32, double* %20, align 8
  %33 = load i64, i64* %12, align 8
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  store double %35, double* %21, align 8
  %36 = call i32 @jw_object_begin(%struct.json_writer* %19, i32 0)
  %37 = load i8*, i8** %17, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.repository*, %struct.repository** %14, align 8
  %41 = call i32 @event_fmt_prepare(i8* %37, i8* %38, i32 %39, %struct.repository* %40, %struct.json_writer* %19)
  %42 = load double, double* %20, align 8
  %43 = call i32 @jw_object_double(%struct.json_writer* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 6, double %42)
  %44 = load double, double* %21, align 8
  %45 = call i32 @jw_object_double(%struct.json_writer* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 6, double %44)
  %46 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %18, align 8
  %47 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @jw_object_intmax(%struct.json_writer* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @jw_object_string(%struct.json_writer* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @jw_object_string(%struct.json_writer* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  %54 = load %struct.json_writer*, %struct.json_writer** %16, align 8
  %55 = call i32 @jw_object_sub_jw(%struct.json_writer* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.json_writer* %54)
  %56 = call i32 @jw_end(%struct.json_writer* %19)
  %57 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %19, i32 0, i32 0
  %58 = call i32 @tr2_dst_write_line(i32* @tr2dst_event, i32* %57)
  %59 = call i32 @jw_release(%struct.json_writer* %19)
  br label %60

60:                                               ; preds = %28, %8
  ret void
}

declare dso_local %struct.tr2tls_thread_ctx* @tr2tls_get_self(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jw_object_begin(%struct.json_writer*, i32) #1

declare dso_local i32 @event_fmt_prepare(i8*, i8*, i32, %struct.repository*, %struct.json_writer*) #1

declare dso_local i32 @jw_object_double(%struct.json_writer*, i8*, i32, double) #1

declare dso_local i32 @jw_object_intmax(%struct.json_writer*, i8*, i64) #1

declare dso_local i32 @jw_object_string(%struct.json_writer*, i8*, i8*) #1

declare dso_local i32 @jw_object_sub_jw(%struct.json_writer*, i8*, %struct.json_writer*) #1

declare dso_local i32 @jw_end(%struct.json_writer*) #1

declare dso_local i32 @tr2_dst_write_line(i32*, i32*) #1

declare dso_local i32 @jw_release(%struct.json_writer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
