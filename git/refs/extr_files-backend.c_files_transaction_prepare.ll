; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_transaction_prepare.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_transaction_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i64, i32, %struct.ref_update**, %struct.files_transaction_backend_data* }
%struct.ref_update = type { i32, i32, i32 }
%struct.files_transaction_backend_data = type { i32, %struct.ref_transaction* }
%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.string_list_item = type { %struct.ref_update* }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ref_transaction_prepare\00", align 1
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@REF_IS_PRUNING = common dso_local global i32 0, align 4
@REF_NO_DEREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"REF_IS_PRUNING set without REF_NO_DEREF\00", align 1
@TRANSACTION_GENERIC_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@RESOLVE_REF_NO_RECURSE = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@REF_DELETING = common dso_local global i32 0, align 4
@REF_LOG_ONLY = common dso_local global i32 0, align 4
@REF_HAVE_NEW = common dso_local global i32 0, align 4
@REF_TRANSACTION_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* @files_transaction_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_transaction_prepare(%struct.ref_store* %0, %struct.ref_transaction* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca %struct.ref_transaction*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.string_list, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.files_transaction_backend_data*, align 8
  %14 = alloca %struct.ref_transaction*, align 8
  %15 = alloca %struct.ref_update*, align 8
  %16 = alloca %struct.string_list_item*, align 8
  %17 = alloca %struct.ref_update*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %18 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %19 = load i32, i32* @REF_STORE_WRITE, align 4
  %20 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %18, i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %20, %struct.files_ref_store** %7, align 8
  store i32 0, i32* %9, align 4
  %21 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  store i8* null, i8** %11, align 8
  store %struct.ref_transaction* null, %struct.ref_transaction** %14, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = call i32 @assert(%struct.strbuf* %22)
  %24 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %25 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %215

29:                                               ; preds = %3
  %30 = call %struct.files_transaction_backend_data* @xcalloc(i32 1, i32 16)
  store %struct.files_transaction_backend_data* %30, %struct.files_transaction_backend_data** %13, align 8
  %31 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %13, align 8
  %32 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %33 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %32, i32 0, i32 3
  store %struct.files_transaction_backend_data* %31, %struct.files_transaction_backend_data** %33, align 8
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %70, %29
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %37 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %34
  %41 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %42 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %41, i32 0, i32 2
  %43 = load %struct.ref_update**, %struct.ref_update*** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %43, i64 %44
  %46 = load %struct.ref_update*, %struct.ref_update** %45, align 8
  store %struct.ref_update* %46, %struct.ref_update** %15, align 8
  %47 = load %struct.ref_update*, %struct.ref_update** %15, align 8
  %48 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.string_list_item* @string_list_append(%struct.string_list* %10, i32 %49)
  store %struct.string_list_item* %50, %struct.string_list_item** %16, align 8
  %51 = load %struct.ref_update*, %struct.ref_update** %15, align 8
  %52 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @REF_IS_PRUNING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %40
  %58 = load %struct.ref_update*, %struct.ref_update** %15, align 8
  %59 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @REF_NO_DEREF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = call i32 @BUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %57, %40
  %67 = load %struct.ref_update*, %struct.ref_update** %15, align 8
  %68 = load %struct.string_list_item*, %struct.string_list_item** %16, align 8
  %69 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %68, i32 0, i32 0
  store %struct.ref_update* %67, %struct.ref_update** %69, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %34

73:                                               ; preds = %34
  %74 = call i32 @string_list_sort(%struct.string_list* %10)
  %75 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %76 = call i64 @ref_update_reject_duplicates(%struct.string_list* %10, %struct.strbuf* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %79, i32* %9, align 4
  br label %215

80:                                               ; preds = %73
  %81 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %82 = load i32, i32* @RESOLVE_REF_NO_RECURSE, align 4
  %83 = call i8* @refs_resolve_refdup(%struct.ref_store* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32* null, i32* %12)
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @REF_ISSYMREF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @FREE_AND_NULL(i8* %92)
  br label %94

94:                                               ; preds = %91, %86, %80
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %167, %94
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %98 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %170

101:                                              ; preds = %95
  %102 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %103 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %102, i32 0, i32 2
  %104 = load %struct.ref_update**, %struct.ref_update*** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds %struct.ref_update*, %struct.ref_update** %104, i64 %105
  %107 = load %struct.ref_update*, %struct.ref_update** %106, align 8
  store %struct.ref_update* %107, %struct.ref_update** %17, align 8
  %108 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %109 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %110 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %113 = call i32 @lock_ref_for_update(%struct.files_ref_store* %108, %struct.ref_update* %109, %struct.ref_transaction* %110, i8* %111, %struct.string_list* %10, %struct.strbuf* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %101
  br label %215

117:                                              ; preds = %101
  %118 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %119 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @REF_DELETING, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %117
  %125 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %126 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @REF_LOG_ONLY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %166, label %131

131:                                              ; preds = %124
  %132 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %133 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @REF_IS_PRUNING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %166, label %138

138:                                              ; preds = %131
  %139 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %140 = icmp ne %struct.ref_transaction* %139, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %138
  %142 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %143 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %146 = call %struct.ref_transaction* @ref_store_transaction_begin(i32 %144, %struct.strbuf* %145)
  store %struct.ref_transaction* %146, %struct.ref_transaction** %14, align 8
  %147 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %148 = icmp ne %struct.ref_transaction* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %150, i32* %9, align 4
  br label %215

151:                                              ; preds = %141
  %152 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %153 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %13, align 8
  %154 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %153, i32 0, i32 1
  store %struct.ref_transaction* %152, %struct.ref_transaction** %154, align 8
  br label %155

155:                                              ; preds = %151, %138
  %156 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %157 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %158 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @REF_HAVE_NEW, align 4
  %161 = load i32, i32* @REF_NO_DEREF, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.ref_update*, %struct.ref_update** %17, align 8
  %164 = getelementptr inbounds %struct.ref_update, %struct.ref_update* %163, i32 0, i32 1
  %165 = call i32 @ref_transaction_add_update(%struct.ref_transaction* %156, i32 %159, i32 %162, i32* %164, i32* null, i32* null)
  br label %166

166:                                              ; preds = %155, %131, %124, %117
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %8, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %8, align 8
  br label %95

170:                                              ; preds = %95
  %171 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %172 = icmp ne %struct.ref_transaction* %171, null
  br i1 %172, label %173, label %214

173:                                              ; preds = %170
  %174 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %175 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %178 = call i64 @packed_refs_lock(i32 %176, i32 0, %struct.strbuf* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %181, i32* %9, align 4
  br label %215

182:                                              ; preds = %173
  %183 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %13, align 8
  %184 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %186 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %189 = call i64 @is_packed_transaction_needed(i32 %187, %struct.ref_transaction* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %182
  %192 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %193 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %194 = call i32 @ref_transaction_prepare(%struct.ref_transaction* %192, %struct.strbuf* %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %199 = call i32 @ref_transaction_free(%struct.ref_transaction* %198)
  %200 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %13, align 8
  %201 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %200, i32 0, i32 1
  store %struct.ref_transaction* null, %struct.ref_transaction** %201, align 8
  br label %202

202:                                              ; preds = %197, %191
  br label %213

203:                                              ; preds = %182
  %204 = load %struct.files_transaction_backend_data*, %struct.files_transaction_backend_data** %13, align 8
  %205 = getelementptr inbounds %struct.files_transaction_backend_data, %struct.files_transaction_backend_data* %204, i32 0, i32 1
  store %struct.ref_transaction* null, %struct.ref_transaction** %205, align 8
  %206 = load %struct.ref_transaction*, %struct.ref_transaction** %14, align 8
  %207 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %208 = call i64 @ref_transaction_abort(%struct.ref_transaction* %206, %struct.strbuf* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %211, i32* %9, align 4
  br label %215

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212, %202
  br label %214

214:                                              ; preds = %213, %170
  br label %215

215:                                              ; preds = %214, %210, %180, %149, %116, %78, %28
  %216 = load i8*, i8** %11, align 8
  %217 = call i32 @free(i8* %216)
  %218 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %223 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %224 = call i32 @files_transaction_cleanup(%struct.files_ref_store* %222, %struct.ref_transaction* %223)
  br label %229

225:                                              ; preds = %215
  %226 = load i32, i32* @REF_TRANSACTION_PREPARED, align 4
  %227 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %228 = getelementptr inbounds %struct.ref_transaction, %struct.ref_transaction* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %225, %221
  %230 = load i32, i32* %9, align 4
  ret i32 %230
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(%struct.strbuf*) #1

declare dso_local %struct.files_transaction_backend_data* @xcalloc(i32, i32) #1

declare dso_local %struct.string_list_item* @string_list_append(%struct.string_list*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @string_list_sort(%struct.string_list*) #1

declare dso_local i64 @ref_update_reject_duplicates(%struct.string_list*, %struct.strbuf*) #1

declare dso_local i8* @refs_resolve_refdup(%struct.ref_store*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

declare dso_local i32 @lock_ref_for_update(%struct.files_ref_store*, %struct.ref_update*, %struct.ref_transaction*, i8*, %struct.string_list*, %struct.strbuf*) #1

declare dso_local %struct.ref_transaction* @ref_store_transaction_begin(i32, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_add_update(%struct.ref_transaction*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @packed_refs_lock(i32, i32, %struct.strbuf*) #1

declare dso_local i64 @is_packed_transaction_needed(i32, %struct.ref_transaction*) #1

declare dso_local i32 @ref_transaction_prepare(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #1

declare dso_local i64 @ref_transaction_abort(%struct.ref_transaction*, %struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @files_transaction_cleanup(%struct.files_ref_store*, %struct.ref_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
