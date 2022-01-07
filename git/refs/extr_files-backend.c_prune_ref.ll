; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_prune_ref.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_prune_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_to_prune = type { i32, i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@REF_HAVE_NEW = common dso_local global i32 0, align 4
@REF_HAVE_OLD = common dso_local global i32 0, align 4
@REF_IS_PRUNING = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, %struct.ref_to_prune*)* @prune_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_ref(%struct.files_ref_store* %0, %struct.ref_to_prune* %1) #0 {
  %3 = alloca %struct.files_ref_store*, align 8
  %4 = alloca %struct.ref_to_prune*, align 8
  %5 = alloca %struct.ref_transaction*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %3, align 8
  store %struct.ref_to_prune* %1, %struct.ref_to_prune** %4, align 8
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 -1, i32* %7, align 4
  %9 = load %struct.ref_to_prune*, %struct.ref_to_prune** %4, align 8
  %10 = getelementptr inbounds %struct.ref_to_prune, %struct.ref_to_prune* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @check_refname_format(i32 %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.files_ref_store*, %struct.files_ref_store** %3, align 8
  %17 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %16, i32 0, i32 0
  %18 = call %struct.ref_transaction* @ref_store_transaction_begin(i32* %17, %struct.strbuf* %6)
  store %struct.ref_transaction* %18, %struct.ref_transaction** %5, align 8
  %19 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %20 = icmp ne %struct.ref_transaction* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %42

22:                                               ; preds = %15
  %23 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %24 = load %struct.ref_to_prune*, %struct.ref_to_prune** %4, align 8
  %25 = getelementptr inbounds %struct.ref_to_prune, %struct.ref_to_prune* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @REF_NO_DEREF, align 4
  %28 = load i32, i32* @REF_HAVE_NEW, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @REF_HAVE_OLD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @REF_IS_PRUNING, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ref_to_prune*, %struct.ref_to_prune** %4, align 8
  %35 = getelementptr inbounds %struct.ref_to_prune, %struct.ref_to_prune* %34, i32 0, i32 0
  %36 = call i32 @ref_transaction_add_update(%struct.ref_transaction* %23, i32 %26, i32 %33, i32* @null_oid, i32* %35, i32* null)
  %37 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %38 = call i64 @ref_transaction_commit(%struct.ref_transaction* %37, %struct.strbuf* %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %42

41:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %40, %21
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = call i32 @strbuf_release(%struct.strbuf* %6)
  %51 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %52 = call i32 @ref_transaction_free(%struct.ref_transaction* %51)
  br label %53

53:                                               ; preds = %49, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @check_refname_format(i32, i32) #2

declare dso_local %struct.ref_transaction* @ref_store_transaction_begin(i32*, %struct.strbuf*) #2

declare dso_local i32 @ref_transaction_add_update(%struct.ref_transaction*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
