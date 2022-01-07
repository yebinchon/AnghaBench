; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_create_symref.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_create_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_lock = type { i32 }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"create_symref\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, i8*, i8*)* @files_create_symref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_create_symref(%struct.ref_store* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.files_ref_store*, align 8
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.ref_lock*, align 8
  %13 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %15 = load i32, i32* @REF_STORE_WRITE, align 4
  %16 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %14, i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %16, %struct.files_ref_store** %10, align 8
  %17 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @REF_NO_DEREF, align 4
  %21 = call %struct.ref_lock* @lock_ref_oid_basic(%struct.files_ref_store* %18, i8* %19, i32* null, i32* null, i32* null, i32 %20, i32* null, %struct.strbuf* %11)
  store %struct.ref_lock* %21, %struct.ref_lock** %12, align 8
  %22 = load %struct.ref_lock*, %struct.ref_lock** %12, align 8
  %23 = icmp ne %struct.ref_lock* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @strbuf_release(%struct.strbuf* %11)
  store i32 -1, i32* %5, align 4
  br label %39

29:                                               ; preds = %4
  %30 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %31 = load %struct.ref_lock*, %struct.ref_lock** %12, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @create_symref_locked(%struct.files_ref_store* %30, %struct.ref_lock* %31, i8* %32, i8* %33, i8* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.ref_lock*, %struct.ref_lock** %12, align 8
  %37 = call i32 @unlock_ref(%struct.ref_lock* %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %29, %24
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ref_lock* @lock_ref_oid_basic(%struct.files_ref_store*, i8*, i32*, i32*, i32*, i32, i32*, %struct.strbuf*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @create_symref_locked(%struct.files_ref_store*, %struct.ref_lock*, i8*, i8*, i8*) #1

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
