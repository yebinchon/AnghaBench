; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_rename_tmp_log.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_rename_tmp_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.files_ref_store = type { i32 }
%struct.rename_cb = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@TMP_RENAMED_LOG = common dso_local global i8* null, align 8
@rename_tmp_log_callback = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"directory not empty: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to move logfile %s to %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.files_ref_store*, i8*)* @rename_tmp_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_tmp_log(%struct.files_ref_store* %0, i8* %1) #0 {
  %3 = alloca %struct.files_ref_store*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.rename_cb, align 8
  %8 = alloca i32, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = load %struct.files_ref_store*, %struct.files_ref_store** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @files_reflog_path(%struct.files_ref_store* %11, %struct.strbuf* %5, i8* %12)
  %14 = load %struct.files_ref_store*, %struct.files_ref_store** %3, align 8
  %15 = load i8*, i8** @TMP_RENAMED_LOG, align 8
  %16 = call i32 @files_reflog_path(%struct.files_ref_store* %14, %struct.strbuf* %6, i8* %15)
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.rename_cb, %struct.rename_cb* %7, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @rename_tmp_log_callback, align 4
  %23 = call i32 @raceproof_create_file(i8* %21, i32 %22, %struct.rename_cb* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EISDIR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %43

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.rename_cb, %struct.rename_cb* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %30
  br label %44

44:                                               ; preds = %43, %2
  %45 = call i32 @strbuf_release(%struct.strbuf* %5)
  %46 = call i32 @strbuf_release(%struct.strbuf* %6)
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #2

declare dso_local i32 @raceproof_create_file(i8*, i32, %struct.rename_cb*) #2

declare dso_local i32 @error(i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
