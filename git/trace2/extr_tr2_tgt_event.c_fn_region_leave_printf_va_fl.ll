; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_region_leave_printf_va_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_region_leave_printf_va_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32 }
%struct.repository = type { i32 }
%struct.tr2tls_thread_ctx = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"region_leave\00", align 1
@tr2env_event_max_nesting_levels = common dso_local global i64 0, align 8
@JSON_WRITER_INIT = common dso_local global %struct.json_writer zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"t_rel\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"nesting\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"category\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@tr2dst_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, i64, i8*, i8*, %struct.repository*, i8*, i32)* @fn_region_leave_printf_va_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_region_leave_printf_va_fl(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, %struct.repository* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.repository*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.tr2tls_thread_ctx*, align 8
  %21 = alloca %struct.json_writer, align 4
  %22 = alloca double, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.repository* %6, %struct.repository** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %23 = call %struct.tr2tls_thread_ctx* (...) @tr2tls_get_self()
  store %struct.tr2tls_thread_ctx* %23, %struct.tr2tls_thread_ctx** %20, align 8
  %24 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %20, align 8
  %25 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @tr2env_event_max_nesting_levels, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %9
  %30 = bitcast %struct.json_writer* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.json_writer* @JSON_WRITER_INIT to i8*), i64 4, i1 false)
  %31 = load i64, i64* %13, align 8
  %32 = sitofp i64 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  store double %33, double* %22, align 8
  %34 = call i32 @jw_object_begin(%struct.json_writer* %21, i32 0)
  %35 = load i8*, i8** %19, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.repository*, %struct.repository** %16, align 8
  %39 = call i32 @event_fmt_prepare(i8* %35, i8* %36, i32 %37, %struct.repository* %38, %struct.json_writer* %21)
  %40 = load double, double* %22, align 8
  %41 = call i32 @jw_object_double(%struct.json_writer* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 6, double %40)
  %42 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %20, align 8
  %43 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @jw_object_intmax(%struct.json_writer* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i8*, i8** %14, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @jw_object_string(%struct.json_writer* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %29
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i8*, i8** %15, align 8
  %56 = call i32 @jw_object_string(%struct.json_writer* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i8*, i8** %17, align 8
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @maybe_add_string_va(%struct.json_writer* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %58, i32 %59)
  %61 = call i32 @jw_end(%struct.json_writer* %21)
  %62 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %21, i32 0, i32 0
  %63 = call i32 @tr2_dst_write_line(i32* @tr2dst_event, i32* %62)
  %64 = call i32 @jw_release(%struct.json_writer* %21)
  br label %65

65:                                               ; preds = %57, %9
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

declare dso_local i32 @maybe_add_string_va(%struct.json_writer*, i8*, i8*, i32) #1

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
