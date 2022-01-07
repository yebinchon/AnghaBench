; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_delete_reflog.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_delete_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32 }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"delete_reflog\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*)* @files_delete_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_delete_reflog(%struct.ref_store* %0, i8* %1) #0 {
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.files_ref_store*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %9 = load i32, i32* @REF_STORE_WRITE, align 4
  %10 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %8, i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %10, %struct.files_ref_store** %5, align 8
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load %struct.files_ref_store*, %struct.files_ref_store** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @files_reflog_path(%struct.files_ref_store* %12, %struct.strbuf* %6, i8* %13)
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @remove_path(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = call i32 @strbuf_release(%struct.strbuf* %6)
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #1

declare dso_local i32 @remove_path(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
