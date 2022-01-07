; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_prep_temp_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_prep_temp_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }
%struct.index_state = type { i32 }
%struct.diff_tempfile = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"XXXXXX_\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to create temp-file\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to write temp-file\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%06o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i8*, %struct.diff_tempfile*, i8*, i64, %struct.object_id*, i32)* @prep_temp_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_temp_blob(%struct.index_state* %0, i8* %1, %struct.diff_tempfile* %2, i8* %3, i64 %4, %struct.object_id* %5, i32 %6) #0 {
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.diff_tempfile*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf, align 8
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.diff_tempfile* %2, %struct.diff_tempfile** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.object_id* %5, %struct.object_id** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %20 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @xstrdup(i8* %21)
  store i8* %22, i8** %17, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = call i8* @basename(i8* %23)
  store i8* %24, i8** %18, align 8
  %25 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %18, align 8
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %26)
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %18, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add nsw i64 %31, 1
  %33 = call %struct.TYPE_4__* @mks_tempfile_ts(i8* %29, i64 %32)
  %34 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %35 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %34, i32 0, i32 2
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %37 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %7
  %41 = call i32 @die_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %7
  %43 = load %struct.index_state*, %struct.index_state** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @convert_to_working_tree(%struct.index_state* %43, i8* %44, i8* %45, i64 %46, %struct.strbuf* %15)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %11, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %56 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @write_in_full(i32 %59, i8* %60, i64 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %66 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = call i64 @close_tempfile_gently(%struct.TYPE_4__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %54
  %71 = call i32 @die_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %64
  %73 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %74 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @get_tempfile_path(%struct.TYPE_4__* %75)
  %77 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %78 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %80 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.object_id*, %struct.object_id** %13, align 8
  %83 = call i32 @oid_to_hex_r(i32 %81, %struct.object_id* %82)
  %84 = load %struct.diff_tempfile*, %struct.diff_tempfile** %10, align 8
  %85 = getelementptr inbounds %struct.diff_tempfile, %struct.diff_tempfile* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @xsnprintf(i32 %86, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = call i32 @strbuf_release(%struct.strbuf* %15)
  %90 = call i32 @strbuf_release(%struct.strbuf* %16)
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 @free(i8* %91)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @basename(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local %struct.TYPE_4__* @mks_tempfile_ts(i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i64 @convert_to_working_tree(%struct.index_state*, i8*, i8*, i64, %struct.strbuf*) #2

declare dso_local i64 @write_in_full(i32, i8*, i64) #2

declare dso_local i64 @close_tempfile_gently(%struct.TYPE_4__*) #2

declare dso_local i32 @get_tempfile_path(%struct.TYPE_4__*) #2

declare dso_local i32 @oid_to_hex_r(i32, %struct.object_id*) #2

declare dso_local i32 @xsnprintf(i32, i32, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
