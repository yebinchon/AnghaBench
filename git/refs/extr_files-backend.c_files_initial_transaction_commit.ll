; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_initial_transaction_commit.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_initial_transaction_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i64, i64, %struct.ref_update** }
%struct.ref_update = type { i32, i32, i32, i32 }
%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32, i32 }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"initial_ref_transaction_commit\00", align 1
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@REF_TRANSACTION_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"commit called for transaction that is not open\00", align 1
@TRANSACTION_GENERIC_ERROR = common dso_local global i32 0, align 4
@ref_present = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"initial ref transaction called with existing refs\00", align 1
@REF_HAVE_OLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"initial ref transaction with old_sha1 set\00", align 1
@TRANSACTION_NAME_CONFLICT = common dso_local global i32 0, align 4
@REF_TRANSACTION_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* @files_initial_transaction_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_initial_transaction_commit(%struct.ref_store* %0, %struct.ref_transaction* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca %struct.ref_transaction*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.string_list, align 4
  %11 = alloca %struct.ref_transaction*, align 8
  %12 = alloca %struct.ref_update*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %13 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %14 = load i32, i32* @REF_STORE_WRITE, align 4
  %15 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %13, i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %15, %struct.files_ref_store** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  store %struct.ref_transaction* null, %struct.ref_transaction** %11, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %18 = call i32 @assert(%struct.strbuf* %17)
  %19 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %20 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REF_TRANSACTION_OPEN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %3
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %30 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %35 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %34, i32 0, i32 2
  %36 = load %struct.ref_update**, %struct.ref_update*** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %36, i64 %37
  %39 = load %struct.ref_update*, %struct.ref_update** %38, align 8
  %40 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @string_list_append(%struct.string_list* %10, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %27

46:                                               ; preds = %27
  %47 = call i32 @string_list_sort(%struct.string_list* %10)
  %48 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %49 = call i64 @ref_update_reject_duplicates(%struct.string_list* %10, %struct.strbuf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %52, i32* %9, align 4
  br label %149

53:                                               ; preds = %46
  %54 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %55 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %54, i32 0, i32 1
  %56 = load i32, i32* @ref_present, align 4
  %57 = call i64 @refs_for_each_rawref(i32* %55, i32 %56, %struct.string_list* %10)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @BUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  %62 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %63 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %66 = call %struct.ref_transaction* @ref_store_transaction_begin(i32 %64, %struct.strbuf* %65)
  store %struct.ref_transaction* %66, %struct.ref_transaction** %11, align 8
  %67 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %68 = icmp ne %struct.ref_transaction* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %70, i32* %9, align 4
  br label %149

71:                                               ; preds = %61
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %125, %71
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %75 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %128

78:                                               ; preds = %72
  %79 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %80 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %79, i32 0, i32 2
  %81 = load %struct.ref_update**, %struct.ref_update*** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %81, i64 %82
  %84 = load %struct.ref_update*, %struct.ref_update** %83, align 8
  store %struct.ref_update* %84, %struct.ref_update** %12, align 8
  %85 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %86 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @REF_HAVE_OLD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %93 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %92, i32 0, i32 1
  %94 = call i32 @is_null_oid(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91, %78
  %99 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %100 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %99, i32 0, i32 1
  %101 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %102 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %105 = call i64 @refs_verify_refname_available(i32* %100, i32 %103, %struct.string_list* %10, i32* null, %struct.strbuf* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* @TRANSACTION_NAME_CONFLICT, align 4
  store i32 %108, i32* %9, align 4
  br label %149

109:                                              ; preds = %98
  %110 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %111 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %112 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %115 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @REF_HAVE_OLD, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %121 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %120, i32 0, i32 2
  %122 = load %struct.ref_update*, %struct.ref_update** %12, align 8
  %123 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %122, i32 0, i32 1
  %124 = call i32 @ref_transaction_add_update(%struct.ref_transaction* %110, i32 %113, i32 %119, i32* %121, i32* %123, i32* null)
  br label %125

125:                                              ; preds = %109
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %8, align 8
  br label %72

128:                                              ; preds = %72
  %129 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %130 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %133 = call i64 @packed_refs_lock(i32 %131, i32 0, %struct.strbuf* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %136, i32* %9, align 4
  br label %149

137:                                              ; preds = %128
  %138 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %139 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %140 = call i64 @initial_ref_transaction_commit(%struct.ref_transaction* %138, %struct.strbuf* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %142, %137
  %145 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %146 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @packed_refs_unlock(i32 %147)
  br label %149

149:                                              ; preds = %144, %135, %107, %69, %51
  %150 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %151 = icmp ne %struct.ref_transaction* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.ref_transaction*, %struct.ref_transaction** %11, align 8
  %154 = call i32 @ref_transaction_free(%struct.ref_transaction* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i64, i64* @REF_TRANSACTION_CLOSED, align 8
  %157 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %158 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(%struct.strbuf*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #1

declare dso_local i32 @string_list_sort(%struct.string_list*) #1

declare dso_local i64 @ref_update_reject_duplicates(%struct.string_list*, %struct.strbuf*) #1

declare dso_local i64 @refs_for_each_rawref(i32*, i32, %struct.string_list*) #1

declare dso_local %struct.ref_transaction* @ref_store_transaction_begin(i32, %struct.strbuf*) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i64 @refs_verify_refname_available(i32*, i32, %struct.string_list*, i32*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_add_update(%struct.ref_transaction*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @packed_refs_lock(i32, i32, %struct.strbuf*) #1

declare dso_local i64 @initial_ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @packed_refs_unlock(i32) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
