; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refs_update_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refs_update_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REF_TYPE_PSEUDOREF = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"update_ref failed for ref '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refs_update_ref(%struct.ref_store* %0, i8* %1, i8* %2, %struct.object_id* %3, %struct.object_id* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_store*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_id*, align 8
  %13 = alloca %struct.object_id*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ref_transaction*, align 8
  %17 = alloca %struct.strbuf, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.object_id* %3, %struct.object_id** %12, align 8
  store %struct.object_id* %4, %struct.object_id** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.ref_transaction* null, %struct.ref_transaction** %16, align 8
  %20 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %18, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = call i64 @ref_type(i8* %21)
  %23 = load i64, i64* @REF_TYPE_PSEUDOREF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %7
  %26 = load %struct.ref_store*, %struct.ref_store** %9, align 8
  %27 = load i32, i32* @the_repository, align 4
  %28 = call %struct.ref_store* @get_main_ref_store(i32 %27)
  %29 = icmp eq %struct.ref_store* %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.object_id*, %struct.object_id** %12, align 8
  %34 = load %struct.object_id*, %struct.object_id** %13, align 8
  %35 = call i32 @write_pseudoref(i8* %32, %struct.object_id* %33, %struct.object_id* %34, %struct.strbuf* %17)
  store i32 %35, i32* %18, align 4
  br label %58

36:                                               ; preds = %7
  %37 = load %struct.ref_store*, %struct.ref_store** %9, align 8
  %38 = call %struct.ref_transaction* @ref_store_transaction_begin(%struct.ref_store* %37, %struct.strbuf* %17)
  store %struct.ref_transaction* %38, %struct.ref_transaction** %16, align 8
  %39 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %40 = icmp ne %struct.ref_transaction* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.object_id*, %struct.object_id** %12, align 8
  %45 = load %struct.object_id*, %struct.object_id** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @ref_transaction_update(%struct.ref_transaction* %42, i8* %43, %struct.object_id* %44, %struct.object_id* %45, i32 %46, i8* %47, %struct.strbuf* %17)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %52 = call i64 @ref_transaction_commit(%struct.ref_transaction* %51, %struct.strbuf* %17)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %41, %36
  store i32 1, i32* %18, align 4
  %55 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %56 = call i32 @ref_transaction_free(%struct.ref_transaction* %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i8* %62, i8** %19, align 8
  %63 = load i32, i32* %15, align 4
  switch i32 %63, label %77 [
    i32 129, label %64
    i32 130, label %70
    i32 128, label %76
  ]

64:                                               ; preds = %61
  %65 = load i8*, i8** %19, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @error(i8* %65, i8* %66, i8* %68)
  br label %77

70:                                               ; preds = %61
  %71 = load i8*, i8** %19, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @die(i8* %71, i8* %72, i8* %74)
  br label %77

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %61, %76, %70, %64
  %78 = call i32 @strbuf_release(%struct.strbuf* %17)
  store i32 1, i32* %8, align 4
  br label %87

79:                                               ; preds = %58
  %80 = call i32 @strbuf_release(%struct.strbuf* %17)
  %81 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %82 = icmp ne %struct.ref_transaction* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.ref_transaction*, %struct.ref_transaction** %16, align 8
  %85 = call i32 @ref_transaction_free(%struct.ref_transaction* %84)
  br label %86

86:                                               ; preds = %83, %79
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ref_type(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.ref_store* @get_main_ref_store(i32) #2

declare dso_local i32 @write_pseudoref(i8*, %struct.object_id*, %struct.object_id*, %struct.strbuf*) #2

declare dso_local %struct.ref_transaction* @ref_store_transaction_begin(%struct.ref_store*, %struct.strbuf*) #2

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i8*, %struct.object_id*, %struct.object_id*, i32, i8*, %struct.strbuf*) #2

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @error(i8*, i8*, i8*) #2

declare dso_local i32 @die(i8*, i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
