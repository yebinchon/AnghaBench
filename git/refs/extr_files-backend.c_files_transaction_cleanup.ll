; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_transaction_cleanup.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_transaction_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.ref_transaction = type { i64, i32, %struct.ref_update**, %struct.files_transaction_backend_data* }
%struct.ref_update = type { %struct.ref_lock* }
%struct.ref_lock = type { i32 }
%struct.files_transaction_backend_data = type { i64, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"error aborting transaction: %s\00", align 1
@REF_TRANSACTION_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, %struct.ref_transaction*)* @files_transaction_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @files_transaction_cleanup(%struct.files_ref_store* %0, %struct.ref_transaction* %1) #0 {
  %3 = alloca %struct.files_ref_store*, align 8
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.files_transaction_backend_data*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.ref_update*, align 8
  %9 = alloca %struct.ref_lock*, align 8
  store %struct.files_ref_store* %0, %struct.files_ref_store** %3, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %4, align 8
  %10 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %11 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %10, i32 0, i32 3
  %12 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %11, align 8
  store %struct.files_transaction_backend_data* %12, %struct.files_transaction_backend_data** %6, align 8
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %17 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %22 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %21, i32 0, i32 2
  %23 = load %struct.ref_update**, %struct.ref_update*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %23, i64 %24
  %26 = load %struct.ref_update*, %struct.ref_update** %25, align 8
  store %struct.ref_update* %26, %struct.ref_update** %8, align 8
  %27 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %28 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %27, i32 0, i32 0
  %29 = load %struct.ref_lock*, %struct.ref_lock** %28, align 8
  store %struct.ref_lock* %29, %struct.ref_lock** %9, align 8
  %30 = load %struct.ref_lock*, %struct.ref_lock** %9, align 8
  %31 = icmp ne %struct.ref_lock* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.ref_lock*, %struct.ref_lock** %9, align 8
  %34 = call i32 @unlock_ref(%struct.ref_lock* %33)
  %35 = load %struct.ref_update*, %struct.ref_update** %8, align 8
  %36 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %35, i32 0, i32 0
  store %struct.ref_lock* null, %struct.ref_lock** %36, align 8
  br label %37

37:                                               ; preds = %32, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %14

41:                                               ; preds = %14
  %42 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %6, align 8
  %43 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %6, align 8
  %48 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @ref_transaction_abort(i64 %49, %struct.strbuf* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %57

57:                                               ; preds = %52, %46, %41
  %58 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %6, align 8
  %59 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.files_ref_store*, %struct.files_ref_store** %3, align 8
  %64 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @packed_refs_unlock(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %6, align 8
  %69 = call i32 @free(%struct.files_transaction_backend_data* %68)
  %70 = load i32, i32* @REF_TRANSACTION_CLOSED, align 4
  %71 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %72 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #2

declare dso_local i64 @ref_transaction_abort(i64, %struct.strbuf*) #2

declare dso_local i32 @error(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @packed_refs_unlock(i32) #2

declare dso_local i32 @free(%struct.files_transaction_backend_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
