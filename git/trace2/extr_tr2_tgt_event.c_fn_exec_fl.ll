; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_exec_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_exec_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@JSON_WRITER_INIT = common dso_local global %struct.json_writer zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"exec_id\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"exe\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@tr2dst_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i8*, i8**)* @fn_exec_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_exec_fl(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.json_writer, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8** %5, i8*** %12, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %15 = bitcast %struct.json_writer* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.json_writer* @JSON_WRITER_INIT to i8*), i64 4, i1 false)
  %16 = call i32 @jw_object_begin(%struct.json_writer* %14, i32 0)
  %17 = load i8*, i8** %13, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @event_fmt_prepare(i8* %17, i8* %18, i32 %19, i32* null, %struct.json_writer* %14)
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @jw_object_intmax(%struct.json_writer* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @jw_object_string(%struct.json_writer* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %6
  %29 = call i32 @jw_object_inline_begin_array(%struct.json_writer* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i8**, i8*** %12, align 8
  %31 = call i32 @jw_array_argv(%struct.json_writer* %14, i8** %30)
  %32 = call i32 @jw_end(%struct.json_writer* %14)
  %33 = call i32 @jw_end(%struct.json_writer* %14)
  %34 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %14, i32 0, i32 0
  %35 = call i32 @tr2_dst_write_line(i32* @tr2dst_event, i32* %34)
  %36 = call i32 @jw_release(%struct.json_writer* %14)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @jw_object_begin(%struct.json_writer*, i32) #2

declare dso_local i32 @event_fmt_prepare(i8*, i8*, i32, i32*, %struct.json_writer*) #2

declare dso_local i32 @jw_object_intmax(%struct.json_writer*, i8*, i32) #2

declare dso_local i32 @jw_object_string(%struct.json_writer*, i8*, i8*) #2

declare dso_local i32 @jw_object_inline_begin_array(%struct.json_writer*, i8*) #2

declare dso_local i32 @jw_array_argv(%struct.json_writer*, i8**) #2

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
