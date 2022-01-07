; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_log_ref_write.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_log_ref_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.object_id = type { i32 }

@log_all_ref_updates = common dso_local global i64 0, align 8
@LOG_REFS_UNSET = common dso_local global i64 0, align 8
@LOG_REFS_NONE = common dso_local global i64 0, align 8
@LOG_REFS_NORMAL = common dso_local global i64 0, align 8
@REF_FORCE_CREATE_REFLOG = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to append to '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.files_ref_store*, i8*, %struct.object_id*, %struct.object_id*, i8*, i32, %struct.strbuf*)* @files_log_ref_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_log_ref_write(%struct.files_ref_store* %0, i8* %1, %struct.object_id* %2, %struct.object_id* %3, i8* %4, i32 %5, %struct.strbuf* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.files_ref_store*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.strbuf, align 4
  %21 = alloca i32, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.object_id* %2, %struct.object_id** %11, align 8
  store %struct.object_id* %3, %struct.object_id** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.strbuf* %6, %struct.strbuf** %15, align 8
  %22 = load i64, i64* @log_all_ref_updates, align 8
  %23 = load i64, i64* @LOG_REFS_UNSET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %7
  %26 = call i64 (...) @is_bare_repository()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @LOG_REFS_NONE, align 8
  br label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @LOG_REFS_NORMAL, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* @log_all_ref_updates, align 8
  br label %34

34:                                               ; preds = %32, %7
  %35 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @REF_FORCE_CREATE_REFLOG, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %41 = call i32 @log_ref_setup(%struct.files_ref_store* %35, i8* %36, i32 %39, i32* %16, %struct.strbuf* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %8, align 4
  br label %92

46:                                               ; preds = %34
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %92

50:                                               ; preds = %46
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.object_id*, %struct.object_id** %11, align 8
  %53 = load %struct.object_id*, %struct.object_id** %12, align 8
  %54 = call i32 @git_committer_info(i32 0)
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @log_ref_write_fd(i32 %51, %struct.object_id* %52, %struct.object_id* %53, i32 %54, i8* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %50
  %60 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %61 = load i32, i32* @errno, align 4
  store i32 %61, i32* %19, align 4
  %62 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @files_reflog_path(%struct.files_ref_store* %62, %struct.strbuf* %18, i8* %63)
  %65 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 @strbuf_addf(%struct.strbuf* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %69)
  %71 = call i32 @strbuf_release(%struct.strbuf* %18)
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @close(i32 %72)
  store i32 -1, i32* %8, align 4
  br label %92

74:                                               ; preds = %50
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @close(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %80 = load i32, i32* @errno, align 4
  store i32 %80, i32* %21, align 4
  %81 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @files_reflog_path(%struct.files_ref_store* %81, %struct.strbuf* %20, i8* %82)
  %84 = load %struct.strbuf*, %struct.strbuf** %15, align 8
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @strerror(i32 %87)
  %89 = call i32 @strbuf_addf(%struct.strbuf* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %88)
  %90 = call i32 @strbuf_release(%struct.strbuf* %20)
  store i32 -1, i32* %8, align 4
  br label %92

91:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %78, %59, %49, %44
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i64 @is_bare_repository(...) #1

declare dso_local i32 @log_ref_setup(%struct.files_ref_store*, i8*, i32, i32*, %struct.strbuf*) #1

declare dso_local i32 @log_ref_write_fd(i32, %struct.object_id*, %struct.object_id*, i32, i8*) #1

declare dso_local i32 @git_committer_info(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
