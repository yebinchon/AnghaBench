; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_store_create.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_store_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@refs_be_files = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s/packed-refs\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"files-backend $GIT_DIR\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"files-backend $GIT_COMMONDIR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_store* (i8*, i32)* @files_ref_store_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_store* @files_ref_store_create(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.files_ref_store*, align 8
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.files_ref_store* @xcalloc(i32 1, i32 16)
  store %struct.files_ref_store* %8, %struct.files_ref_store** %5, align 8
  %9 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %10 = bitcast %struct.files_ref_store* %9 to %struct.ref_store*
  store %struct.ref_store* %10, %struct.ref_store** %6, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %13 = call i32 @base_ref_store_init(%struct.ref_store* %12, i32* @refs_be_files)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %16 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @xstrdup(i8* %17)
  %19 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %20 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @get_common_dir_noenv(%struct.strbuf* %7, i8* %21)
  %23 = call i32 @strbuf_detach(%struct.strbuf* %7, i32* null)
  %24 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %25 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %27 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @packed_ref_store_create(i32 %31, i32 %32)
  %34 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %35 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = call i32 @strbuf_release(%struct.strbuf* %7)
  %37 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %38 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %37, i32 0, i32 2
  %39 = call i32 @chdir_notify_reparent(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %38)
  %40 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %41 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %40, i32 0, i32 1
  %42 = call i32 @chdir_notify_reparent(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  %43 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  ret %struct.ref_store* %43
}

declare dso_local %struct.files_ref_store* @xcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @base_ref_store_init(%struct.ref_store*, i32*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @get_common_dir_noenv(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @packed_ref_store_create(i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @chdir_notify_reparent(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
