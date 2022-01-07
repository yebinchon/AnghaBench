; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_reflog_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_reflog_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_iterator = type { i32 }
%struct.ref_store = type { i32 }
%struct.dir_iterator = type { i32 }
%struct.files_reflog_iterator = type { %struct.ref_store*, %struct.dir_iterator*, %struct.ref_iterator }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/logs\00", align 1
@files_reflog_iterator_vtable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_iterator* (%struct.ref_store*, i8*)* @reflog_iterator_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_iterator* @reflog_iterator_begin(%struct.ref_store* %0, i8* %1) #0 {
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dir_iterator*, align 8
  %7 = alloca %struct.files_reflog_iterator*, align 8
  %8 = alloca %struct.ref_iterator*, align 8
  %9 = alloca %struct.strbuf, align 4
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dir_iterator* @dir_iterator_begin(i32 %14, i32 0)
  store %struct.dir_iterator* %15, %struct.dir_iterator** %6, align 8
  %16 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %17 = icmp ne %struct.dir_iterator* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = call i32 @strbuf_release(%struct.strbuf* %9)
  %20 = call %struct.ref_iterator* (...) @empty_ref_iterator_begin()
  store %struct.ref_iterator* %20, %struct.ref_iterator** %3, align 8
  br label %35

21:                                               ; preds = %2
  %22 = call %struct.files_reflog_iterator* @xcalloc(i32 1, i32 24)
  store %struct.files_reflog_iterator* %22, %struct.files_reflog_iterator** %7, align 8
  %23 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %7, align 8
  %24 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %23, i32 0, i32 2
  store %struct.ref_iterator* %24, %struct.ref_iterator** %8, align 8
  %25 = load %struct.ref_iterator*, %struct.ref_iterator** %8, align 8
  %26 = call i32 @base_ref_iterator_init(%struct.ref_iterator* %25, i32* @files_reflog_iterator_vtable, i32 0)
  %27 = load %struct.dir_iterator*, %struct.dir_iterator** %6, align 8
  %28 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %7, align 8
  %29 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %28, i32 0, i32 1
  store %struct.dir_iterator* %27, %struct.dir_iterator** %29, align 8
  %30 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %31 = load %struct.files_reflog_iterator*, %struct.files_reflog_iterator** %7, align 8
  %32 = getelementptr inbounds %struct.files_reflog_iterator, %struct.files_reflog_iterator* %31, i32 0, i32 0
  store %struct.ref_store* %30, %struct.ref_store** %32, align 8
  %33 = call i32 @strbuf_release(%struct.strbuf* %9)
  %34 = load %struct.ref_iterator*, %struct.ref_iterator** %8, align 8
  store %struct.ref_iterator* %34, %struct.ref_iterator** %3, align 8
  br label %35

35:                                               ; preds = %21, %18
  %36 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  ret %struct.ref_iterator* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local %struct.dir_iterator* @dir_iterator_begin(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local %struct.ref_iterator* @empty_ref_iterator_begin(...) #2

declare dso_local %struct.files_reflog_iterator* @xcalloc(i32, i32) #2

declare dso_local i32 @base_ref_iterator_init(%struct.ref_iterator*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
