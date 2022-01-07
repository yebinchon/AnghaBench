; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refs_delete_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refs_delete_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@REF_TYPE_PSEUDOREF = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refs_delete_ref(%struct.ref_store* %0, i8* %1, i8* %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_store*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ref_transaction*, align 8
  %13 = alloca %struct.strbuf, align 4
  store %struct.ref_store* %0, %struct.ref_store** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @ref_type(i8* %15)
  %17 = load i64, i64* @REF_TYPE_PSEUDOREF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.ref_store*, %struct.ref_store** %7, align 8
  %21 = load i32, i32* @the_repository, align 4
  %22 = call %struct.ref_store* @get_main_ref_store(i32 %21)
  %23 = icmp eq %struct.ref_store* %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.object_id*, %struct.object_id** %10, align 8
  %28 = call i32 @delete_pseudoref(i8* %26, %struct.object_id* %27)
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %5
  %30 = load %struct.ref_store*, %struct.ref_store** %7, align 8
  %31 = call %struct.ref_transaction* @ref_store_transaction_begin(%struct.ref_store* %30, %struct.strbuf* %13)
  store %struct.ref_transaction* %31, %struct.ref_transaction** %12, align 8
  %32 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %33 = icmp ne %struct.ref_transaction* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.object_id*, %struct.object_id** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @ref_transaction_delete(%struct.ref_transaction* %35, i8* %36, %struct.object_id* %37, i32 %38, i8* %39, %struct.strbuf* %13)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %44 = call i64 @ref_transaction_commit(%struct.ref_transaction* %43, %struct.strbuf* %13)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %34, %29
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %51 = call i32 @ref_transaction_free(%struct.ref_transaction* %50)
  %52 = call i32 @strbuf_release(%struct.strbuf* %13)
  store i32 1, i32* %6, align 4
  br label %57

53:                                               ; preds = %42
  %54 = load %struct.ref_transaction*, %struct.ref_transaction** %12, align 8
  %55 = call i32 @ref_transaction_free(%struct.ref_transaction* %54)
  %56 = call i32 @strbuf_release(%struct.strbuf* %13)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %46, %19
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ref_type(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.ref_store* @get_main_ref_store(i32) #2

declare dso_local i32 @delete_pseudoref(i8*, %struct.object_id*) #2

declare dso_local %struct.ref_transaction* @ref_store_transaction_begin(%struct.ref_store*, %struct.strbuf*) #2

declare dso_local i64 @ref_transaction_delete(%struct.ref_transaction*, i8*, %struct.object_id*, i32, i8*, %struct.strbuf*) #2

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
