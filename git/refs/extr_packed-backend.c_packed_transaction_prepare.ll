; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_prepare.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i64, i32, %struct.ref_update**, %struct.packed_transaction_backend_data* }
%struct.ref_update = type { i32 }
%struct.packed_transaction_backend_data = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.packed_ref_store = type { i32 }
%struct.string_list_item = type { %struct.ref_update* }

@REF_STORE_READ = common dso_local global i32 0, align 4
@REF_STORE_WRITE = common dso_local global i32 0, align 4
@REF_STORE_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ref_transaction_prepare\00", align 1
@TRANSACTION_GENERIC_ERROR = common dso_local global i32 0, align 4
@REF_TRANSACTION_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* @packed_transaction_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_transaction_prepare(%struct.ref_store* %0, %struct.ref_transaction* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca %struct.ref_transaction*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.packed_ref_store*, align 8
  %9 = alloca %struct.packed_transaction_backend_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ref_update*, align 8
  %13 = alloca %struct.string_list_item*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %5, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %14 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %15 = load i32, i32* @REF_STORE_READ, align 4
  %16 = load i32, i32* @REF_STORE_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @REF_STORE_ODB, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.packed_ref_store* @packed_downcast(%struct.ref_store* %14, i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.packed_ref_store* %20, %struct.packed_ref_store** %8, align 8
  %21 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %21, i32* %11, align 4
  %22 = call %struct.packed_transaction_backend_data* @xcalloc(i32 1, i32 8)
  store %struct.packed_transaction_backend_data* %22, %struct.packed_transaction_backend_data** %9, align 8
  %23 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %9, align 8
  %24 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %23, i32 0, i32 1
  %25 = call i32 @string_list_init(i32* %24, i32 0)
  %26 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %9, align 8
  %27 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %28 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %27, i32 0, i32 3
  store %struct.packed_transaction_backend_data* %26, %struct.packed_transaction_backend_data** %28, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %51, %3
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %32 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %37 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %36, i32 0, i32 2
  %38 = load %struct.ref_update**, %struct.ref_update*** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %38, i64 %39
  %41 = load %struct.ref_update*, %struct.ref_update** %40, align 8
  store %struct.ref_update* %41, %struct.ref_update** %12, align 8
  %42 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %9, align 8
  %43 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %42, i32 0, i32 1
  %44 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %45 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.string_list_item* @string_list_append(i32* %43, i32 %46)
  store %struct.string_list_item* %47, %struct.string_list_item** %13, align 8
  %48 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %49 = load %struct.string_list_item*, %struct.string_list_item** %13, align 8
  %50 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %49, i32 0, i32 0
  store %struct.ref_update* %48, %struct.ref_update** %50, align 8
  br label %51

51:                                               ; preds = %35
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %29

54:                                               ; preds = %29
  %55 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %9, align 8
  %56 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %55, i32 0, i32 1
  %57 = call i32 @string_list_sort(i32* %56)
  %58 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %9, align 8
  %59 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %58, i32 0, i32 1
  %60 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %61 = call i64 @ref_update_reject_duplicates(i32* %59, %struct.strbuf* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %90

64:                                               ; preds = %54
  %65 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %66 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %65, i32 0, i32 0
  %67 = call i32 @is_lock_file_locked(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %71 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %72 = call i64 @packed_refs_lock(%struct.ref_store* %70, i32 0, %struct.strbuf* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %90

75:                                               ; preds = %69
  %76 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %9, align 8
  %77 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %64
  %79 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %80 = load %struct.packed_transaction_backend_data*, %struct.packed_transaction_backend_data** %9, align 8
  %81 = getelementptr inbounds %struct.packed_transaction_backend_data, %struct.packed_transaction_backend_data* %80, i32 0, i32 1
  %82 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %83 = call i64 @write_with_updates(%struct.packed_ref_store* %79, i32* %81, %struct.strbuf* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @REF_TRANSACTION_PREPARED, align 4
  %88 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %89 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  store i32 0, i32* %4, align 4
  br label %95

90:                                               ; preds = %85, %74, %63
  %91 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %92 = load %struct.ref_transaction*, %struct.ref_transaction** %6, align 8
  %93 = call i32 @packed_transaction_cleanup(%struct.packed_ref_store* %91, %struct.ref_transaction* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.packed_ref_store* @packed_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local %struct.packed_transaction_backend_data* @xcalloc(i32, i32) #1

declare dso_local i32 @string_list_init(i32*, i32) #1

declare dso_local %struct.string_list_item* @string_list_append(i32*, i32) #1

declare dso_local i32 @string_list_sort(i32*) #1

declare dso_local i64 @ref_update_reject_duplicates(i32*, %struct.strbuf*) #1

declare dso_local i32 @is_lock_file_locked(i32*) #1

declare dso_local i64 @packed_refs_lock(%struct.ref_store*, i32, %struct.strbuf*) #1

declare dso_local i64 @write_with_updates(%struct.packed_ref_store*, i32*, %struct.strbuf*) #1

declare dso_local i32 @packed_transaction_cleanup(%struct.packed_ref_store*, %struct.ref_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
