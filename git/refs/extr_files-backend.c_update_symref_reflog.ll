; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_update_symref_reflog.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_update_symref_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_lock = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, %struct.ref_lock*, i8*, i8*, i8*)* @update_symref_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_symref_reflog(%struct.files_ref_store* %0, %struct.ref_lock* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.files_ref_store*, align 8
  %7 = alloca %struct.ref_lock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.object_id, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %6, align 8
  store %struct.ref_lock* %1, %struct.ref_lock** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %5
  %17 = load %struct.files_ref_store*, %struct.files_ref_store** %6, align 8
  %18 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %17, i32 0, i32 0
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @RESOLVE_REF_READING, align 4
  %21 = call i32 @refs_read_ref_full(i32* %18, i8* %19, i32 %20, %struct.object_id* %12, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %16
  %24 = load %struct.files_ref_store*, %struct.files_ref_store** %6, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.ref_lock*, %struct.ref_lock** %7, align 8
  %27 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %26, i32 0, i32 0
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @files_log_ref_write(%struct.files_ref_store* %24, i8* %25, i32* %27, %struct.object_id* %12, i8* %28, i32 0, %struct.strbuf* %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @strbuf_release(%struct.strbuf* %11)
  br label %36

36:                                               ; preds = %31, %23, %16, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @refs_read_ref_full(i32*, i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i64 @files_log_ref_write(%struct.files_ref_store*, i8*, i32*, %struct.object_id*, i8*, i32, %struct.strbuf*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
