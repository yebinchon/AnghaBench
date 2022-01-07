; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_cleanup.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_ref_store = type { i32, i32, i32 }
%struct.ref_transaction = type { i32, %struct.packed_transaction_backend_data* }
%struct.packed_transaction_backend_data = type { i64, i32 }

@REF_TRANSACTION_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packed_ref_store*, %struct.ref_transaction*)* @packed_transaction_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packed_transaction_cleanup(%struct.packed_ref_store* %0, %struct.ref_transaction* %1) #0 {
  %3 = alloca %struct.packed_ref_store*, align 8
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca %struct.packed_transaction_backend_data*, align 8
  store %struct.packed_ref_store* %0, %struct.packed_ref_store** %3, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %4, align 8
  %6 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %7 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %6, i32 0, i32 1
  %8 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %7, align 8
  store %struct.packed_transaction_backend_data* %8, %struct.packed_transaction_backend_data** %5, align 8
  %9 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %5, align 8
  %10 = icmp ne %struct.packed_transaction_backend_data* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %5, align 8
  %13 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %12, i32 0, i32 1
  %14 = call i32 @string_list_clear(i32* %13, i32 0)
  %15 = load %struct.packed_ref_store*, %struct.packed_ref_store** %3, align 8
  %16 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_tempfile_active(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.packed_ref_store*, %struct.packed_ref_store** %3, align 8
  %22 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %21, i32 0, i32 2
  %23 = call i32 @delete_tempfile(i32* %22)
  br label %24

24:                                               ; preds = %20, %11
  %25 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %5, align 8
  %26 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.packed_ref_store*, %struct.packed_ref_store** %3, align 8
  %31 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %30, i32 0, i32 1
  %32 = call i64 @is_lock_file_locked(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.packed_ref_store*, %struct.packed_ref_store** %3, align 8
  %36 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %35, i32 0, i32 0
  %37 = call i32 @packed_refs_unlock(i32* %36)
  %38 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %5, align 8
  %39 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %29, %24
  %41 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %5, align 8
  %42 = call i32 @free(%struct.packed_transaction_backend_data* %41)
  %43 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %44 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %43, i32 0, i32 1
  store %struct.packed_transaction_backend_data* null, %struct.packed_transaction_backend_data** %44, align 8
  br label %45

45:                                               ; preds = %40, %2
  %46 = load i32, i32* @REF_TRANSACTION_CLOSED, align 4
  %47 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %48 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  ret void
}

declare dso_local i32 @string_list_clear(i32*, i32) #1

declare dso_local i64 @is_tempfile_active(i32) #1

declare dso_local i32 @delete_tempfile(i32*) #1

declare dso_local i64 @is_lock_file_locked(i32*) #1

declare dso_local i32 @packed_refs_unlock(i32*) #1

declare dso_local i32 @free(%struct.packed_transaction_backend_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
