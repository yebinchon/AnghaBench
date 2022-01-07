; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_pack_refs.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_pack_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_iterator = type { i32, i32, i32 }
%struct.ref_to_prune = type { %struct.ref_to_prune*, i32 }
%struct.ref_transaction = type { i32 }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@REF_STORE_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pack_refs\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@ITER_OK = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failure preparing to create packed reference %s: %s\00", align 1
@PACK_REFS_PRUNE = common dso_local global i32 0, align 4
@name = common dso_local global i32 0, align 4
@ITER_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"error while iterating over references\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to write new packed-refs: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i32)* @files_pack_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_pack_refs(%struct.ref_store* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.files_ref_store*, align 8
  %7 = alloca %struct.ref_iterator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_to_prune*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca %struct.ref_transaction*, align 8
  %12 = alloca %struct.ref_to_prune*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %14 = load i32, i32* @REF_STORE_WRITE, align 4
  %15 = load i32, i32* @REF_STORE_ODB, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %13, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %17, %struct.files_ref_store** %6, align 8
  store %struct.ref_to_prune* null, %struct.ref_to_prune** %9, align 8
  %18 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = load %struct.files_ref_store*, %struct.files_ref_store** %6, align 8
  %20 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ref_transaction* @ref_store_transaction_begin(i32 %21, %struct.strbuf* %10)
  store %struct.ref_transaction* %22, %struct.ref_transaction** %11, align 8
  %23 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %24 = icmp ne %struct.ref_transaction* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %119

26:                                               ; preds = %2
  %27 = load %struct.files_ref_store*, %struct.files_ref_store** %6, align 8
  %28 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %31 = call i32 @packed_refs_lock(i32 %29, i32 %30, %struct.strbuf* %10)
  %32 = load %struct.files_ref_store*, %struct.files_ref_store** %6, align 8
  %33 = call i32 @get_loose_ref_cache(%struct.files_ref_store* %32)
  %34 = call %struct.ref_iterator* @cache_ref_iterator_begin(i32 %33, i32* null, i32 0)
  store %struct.ref_iterator* %34, %struct.ref_iterator** %7, align 8
  br label %35

35:                                               ; preds = %94, %53, %26
  %36 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %37 = call i32 @ref_iterator_advance(%struct.ref_iterator* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @ITER_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %35
  %41 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %42 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %45 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %48 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @should_pack_ref(i32 %43, i32 %46, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %35

54:                                               ; preds = %40
  %55 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %56 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %57 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %60 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @REF_NO_DEREF, align 4
  %63 = call i64 @ref_transaction_update(%struct.ref_transaction* %55, i32 %58, i32 %61, i32* null, i32 %62, i32* null, %struct.strbuf* %10)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %67 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %65, %54
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @PACK_REFS_PRUNE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.ref_to_prune*, %struct.ref_to_prune** %12, align 8
  %79 = load i32, i32* @name, align 4
  %80 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %81 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @FLEX_ALLOC_STR(%struct.ref_to_prune* %78, i32 %79, i32 %82)
  %84 = load %struct.ref_to_prune*, %struct.ref_to_prune** %12, align 8
  %85 = getelementptr inbounds %struct.ref_to_prune, %struct.ref_to_prune* %84, i32 0, i32 1
  %86 = load %struct.ref_iterator*, %struct.ref_iterator** %7, align 8
  %87 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @oidcpy(i32* %85, i32 %88)
  %90 = load %struct.ref_to_prune*, %struct.ref_to_prune** %9, align 8
  %91 = load %struct.ref_to_prune*, %struct.ref_to_prune** %12, align 8
  %92 = getelementptr inbounds %struct.ref_to_prune, %struct.ref_to_prune* %91, i32 0, i32 0
  store %struct.ref_to_prune* %90, %struct.ref_to_prune** %92, align 8
  %93 = load %struct.ref_to_prune*, %struct.ref_to_prune** %12, align 8
  store %struct.ref_to_prune* %93, %struct.ref_to_prune** %9, align 8
  br label %94

94:                                               ; preds = %77, %72
  br label %35

95:                                               ; preds = %35
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @ITER_DONE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %103 = call i64 @ref_transaction_commit(%struct.ref_transaction* %102, %struct.strbuf* %10)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %111 = call i32 @ref_transaction_free(%struct.ref_transaction* %110)
  %112 = load %struct.files_ref_store*, %struct.files_ref_store** %6, align 8
  %113 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @packed_refs_unlock(i32 %114)
  %116 = load %struct.files_ref_store*, %struct.files_ref_store** %6, align 8
  %117 = call i32 @prune_refs(%struct.files_ref_store* %116, %struct.ref_to_prune** %9)
  %118 = call i32 @strbuf_release(%struct.strbuf* %10)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %109, %25
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ref_transaction* @ref_store_transaction_begin(i32, %struct.strbuf*) #1

declare dso_local i32 @packed_refs_lock(i32, i32, %struct.strbuf*) #1

declare dso_local %struct.ref_iterator* @cache_ref_iterator_begin(i32, i32*, i32) #1

declare dso_local i32 @get_loose_ref_cache(%struct.files_ref_store*) #1

declare dso_local i32 @ref_iterator_advance(%struct.ref_iterator*) #1

declare dso_local i32 @should_pack_ref(i32, i32, i32, i32) #1

declare dso_local i64 @ref_transaction_update(%struct.ref_transaction*, i32, i32, i32*, i32, i32*, %struct.strbuf*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @FLEX_ALLOC_STR(%struct.ref_to_prune*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32) #1

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

declare dso_local i32 @packed_refs_unlock(i32) #1

declare dso_local i32 @prune_refs(%struct.files_ref_store*, %struct.ref_to_prune**) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
