; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_thread_exit_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_thread_exit_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"thread_exit\00", align 1
@JSON_WRITER_INIT = common dso_local global %struct.json_writer zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"t_rel\00", align 1
@tr2dst_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, i64)* @fn_thread_exit_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_thread_exit_fl(i8* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.json_writer, align 4
  %11 = alloca double, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = bitcast %struct.json_writer* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.json_writer* @JSON_WRITER_INIT to i8*), i64 4, i1 false)
  %13 = load i64, i64* %8, align 8
  %14 = sitofp i64 %13 to double
  %15 = fdiv double %14, 1.000000e+06
  store double %15, double* %11, align 8
  %16 = call i32 @jw_object_begin(%struct.json_writer* %10, i32 0)
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @event_fmt_prepare(i8* %17, i8* %18, i32 %19, i32* null, %struct.json_writer* %10)
  %21 = load double, double* %11, align 8
  %22 = call i32 @jw_object_double(%struct.json_writer* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 6, double %21)
  %23 = call i32 @jw_end(%struct.json_writer* %10)
  %24 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %10, i32 0, i32 0
  %25 = call i32 @tr2_dst_write_line(i32* @tr2dst_event, i32* %24)
  %26 = call i32 @jw_release(%struct.json_writer* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @jw_object_begin(%struct.json_writer*, i32) #2

declare dso_local i32 @event_fmt_prepare(i8*, i8*, i32, i32*, %struct.json_writer*) #2

declare dso_local i32 @jw_object_double(%struct.json_writer*, i8*, i32, double) #2

declare dso_local i32 @jw_end(%struct.json_writer*) #2

declare dso_local i32 @tr2_dst_write_line(i32*, i32*) #2

declare dso_local i32 @jw_release(%struct.json_writer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
