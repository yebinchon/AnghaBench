; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_child_start_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_event.c_fn_child_start_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32 }
%struct.child_process = type { i8*, i8*, i8*, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"child_start\00", align 1
@JSON_WRITER_INIT = common dso_local global %struct.json_writer zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"child_id\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"child_class\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hook\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"hook_name\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"use_shell\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@tr2dst_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.child_process*)* @fn_child_start_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_child_start_fl(i8* %0, i32 %1, i32 %2, %struct.child_process* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.child_process*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.json_writer, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.child_process* %3, %struct.child_process** %8, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = bitcast %struct.json_writer* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.json_writer* @JSON_WRITER_INIT to i8*), i64 4, i1 false)
  %13 = call i32 @jw_object_begin(%struct.json_writer* %10, i32 0)
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @event_fmt_prepare(i8* %14, i8* %15, i32 %16, i32* null, %struct.json_writer* %10)
  %18 = load %struct.child_process*, %struct.child_process** %8, align 8
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @jw_object_intmax(%struct.json_writer* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.child_process*, %struct.child_process** %8, align 8
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = call i32 @jw_object_string(%struct.json_writer* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.child_process*, %struct.child_process** %8, align 8
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @jw_object_string(%struct.json_writer* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  br label %46

32:                                               ; preds = %4
  %33 = load %struct.child_process*, %struct.child_process** %8, align 8
  %34 = getelementptr inbounds %struct.child_process, %struct.child_process* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.child_process*, %struct.child_process** %8, align 8
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %41 ]
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @jw_object_string(%struct.json_writer* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %42, %26
  %47 = load %struct.child_process*, %struct.child_process** %8, align 8
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.child_process*, %struct.child_process** %8, align 8
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @jw_object_string(%struct.json_writer* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.child_process*, %struct.child_process** %8, align 8
  %58 = getelementptr inbounds %struct.child_process, %struct.child_process* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @jw_object_bool(%struct.json_writer* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = call i32 @jw_object_inline_begin_array(%struct.json_writer* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %62 = load %struct.child_process*, %struct.child_process** %8, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = call i32 @jw_array_string(%struct.json_writer* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %56
  %69 = load %struct.child_process*, %struct.child_process** %8, align 8
  %70 = getelementptr inbounds %struct.child_process, %struct.child_process* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @jw_array_argv(%struct.json_writer* %10, i32 %71)
  %73 = call i32 @jw_end(%struct.json_writer* %10)
  %74 = call i32 @jw_end(%struct.json_writer* %10)
  %75 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %10, i32 0, i32 0
  %76 = call i32 @tr2_dst_write_line(i32* @tr2dst_event, i32* %75)
  %77 = call i32 @jw_release(%struct.json_writer* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @jw_object_begin(%struct.json_writer*, i32) #2

declare dso_local i32 @event_fmt_prepare(i8*, i8*, i32, i32*, %struct.json_writer*) #2

declare dso_local i32 @jw_object_intmax(%struct.json_writer*, i8*, i32) #2

declare dso_local i32 @jw_object_string(%struct.json_writer*, i8*, i8*) #2

declare dso_local i32 @jw_object_bool(%struct.json_writer*, i8*, i32) #2

declare dso_local i32 @jw_object_inline_begin_array(%struct.json_writer*, i8*) #2

declare dso_local i32 @jw_array_string(%struct.json_writer*, i8*) #2

declare dso_local i32 @jw_array_argv(%struct.json_writer*, i32) #2

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
