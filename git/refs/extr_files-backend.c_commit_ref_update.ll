; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_commit_ref_update.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_commit_ref_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_lock = type { i8*, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"commit_ref_update\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot update the ref '%s': %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"couldn't set '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.files_ref_store*, %struct.ref_lock*, %struct.object_id*, i8*, %struct.strbuf*)* @commit_ref_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_ref_update(%struct.files_ref_store* %0, %struct.ref_lock* %1, %struct.object_id* %2, i8* %3, %struct.strbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca %struct.ref_lock*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.strbuf, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %7, align 8
  store %struct.ref_lock* %1, %struct.ref_lock** %8, align 8
  store %struct.object_id* %2, %struct.object_id** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  %16 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %17 = call i32 @files_assert_main_repository(%struct.files_ref_store* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %19 = call i32 @clear_loose_ref_cache(%struct.files_ref_store* %18)
  %20 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %21 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %22 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %25 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %24, i32 0, i32 1
  %26 = load %struct.object_id*, %struct.object_id** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %29 = call i64 @files_log_ref_write(%struct.files_ref_store* %20, i8* %23, i32* %25, %struct.object_id* %26, i8* %27, i32 0, %struct.strbuf* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %5
  %32 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %33 = call i8* @strbuf_detach(%struct.strbuf* %32, i32* null)
  store i8* %33, i8** %12, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %35 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %36 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %43 = call i32 @unlock_ref(%struct.ref_lock* %42)
  store i32 -1, i32* %6, align 4
  br label %100

44:                                               ; preds = %5
  %45 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %46 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %52 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %51, i32 0, i32 0
  %53 = load i32, i32* @RESOLVE_REF_READING, align 4
  %54 = call i8* @refs_resolve_ref_unsafe(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32* null, i32* %13)
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @REF_ISSYMREF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %65 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %62
  %70 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %71 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %72 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %73 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %72, i32 0, i32 1
  %74 = load %struct.object_id*, %struct.object_id** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i64 @files_log_ref_write(%struct.files_ref_store* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %73, %struct.object_id* %74, i8* %75, i32 0, %struct.strbuf* %15)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = call i32 @strbuf_release(%struct.strbuf* %15)
  br label %83

83:                                               ; preds = %78, %69
  br label %84

84:                                               ; preds = %83, %62, %57, %50
  br label %85

85:                                               ; preds = %84, %44
  %86 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %87 = call i64 @commit_ref(%struct.ref_lock* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %91 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %92 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %96 = call i32 @unlock_ref(%struct.ref_lock* %95)
  store i32 -1, i32* %6, align 4
  br label %100

97:                                               ; preds = %85
  %98 = load %struct.ref_lock*, %struct.ref_lock** %8, align 8
  %99 = call i32 @unlock_ref(%struct.ref_lock* %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %89, %31
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @files_assert_main_repository(%struct.files_ref_store*, i8*) #1

declare dso_local i32 @clear_loose_ref_cache(%struct.files_ref_store*) #1

declare dso_local i64 @files_log_ref_write(%struct.files_ref_store*, i8*, i32*, %struct.object_id*, i8*, i32, %struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @refs_resolve_ref_unsafe(i32*, i8*, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @commit_ref(%struct.ref_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
