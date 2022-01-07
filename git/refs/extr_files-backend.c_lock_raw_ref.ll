; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_lock_raw_ref.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_lock_raw_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.files_ref_store = type { i32*, i32 }
%struct.string_list = type { i32 }
%struct.ref_lock = type { i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@TRANSACTION_GENERIC_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"lock_raw_ref\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to resolve reference '%s'\00", align 1
@TRANSACTION_NAME_CONFLICT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"unable to create lock file %s.lock; non-directory in the way\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to create directory for %s\00", align 1
@LOCK_NO_DEREF = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i64 0, align 8
@REMOVE_DIR_EMPTY_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"there is a non-empty directory '%s' blocking reference '%s'\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@REF_ISBROKEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"unable to resolve reference '%s': reference broken\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"unable to resolve reference '%s': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.files_ref_store*, i8*, i32, %struct.string_list*, %struct.string_list*, %struct.ref_lock**, %struct.strbuf*, i32*, %struct.strbuf*)* @lock_raw_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_raw_ref(%struct.files_ref_store* %0, i8* %1, i32 %2, %struct.string_list* %3, %struct.string_list* %4, %struct.ref_lock** %5, %struct.strbuf* %6, i32* %7, %struct.strbuf* %8) #0 {
  %10 = alloca %struct.files_ref_store*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.string_list*, align 8
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca %struct.ref_lock**, align 8
  %16 = alloca %struct.strbuf*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.strbuf*, align 8
  %19 = alloca %struct.ref_lock*, align 8
  %20 = alloca %struct.strbuf, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.string_list* %3, %struct.string_list** %13, align 8
  store %struct.string_list* %4, %struct.string_list** %14, align 8
  store %struct.ref_lock** %5, %struct.ref_lock*** %15, align 8
  store %struct.strbuf* %6, %struct.strbuf** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.strbuf* %8, %struct.strbuf** %18, align 8
  %23 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 3, i32* %21, align 4
  %24 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %24, i32* %22, align 4
  %25 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %26 = call i32 @assert(%struct.strbuf* %25)
  %27 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %28 = call i32 @files_assert_main_repository(%struct.files_ref_store* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %17, align 8
  store i32 0, i32* %29, align 4
  %30 = call %struct.ref_lock* @xcalloc(i32 1, i32 12)
  store %struct.ref_lock* %30, %struct.ref_lock** %19, align 8
  %31 = load %struct.ref_lock**, %struct.ref_lock*** %15, align 8
  store %struct.ref_lock* %30, %struct.ref_lock** %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @xstrdup(i8* %32)
  %34 = load %struct.ref_lock*, %struct.ref_lock** %19, align 8
  %35 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @files_ref_path(%struct.files_ref_store* %36, %struct.strbuf* %20, i8* %37)
  br label %39

39:                                               ; preds = %99, %75, %9
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @safe_create_leading_directories(i8* %41)
  switch i32 %42, label %77 [
    i32 129, label %43
    i32 130, label %44
    i32 128, label %71
  ]

43:                                               ; preds = %39
  br label %82

44:                                               ; preds = %39
  %45 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %46 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %45, i32 0, i32 1
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.string_list*, %struct.string_list** %13, align 8
  %49 = load %struct.string_list*, %struct.string_list** %14, align 8
  %50 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %51 = call i64 @refs_verify_refname_available(i32* %46, i8* %47, %struct.string_list* %48, %struct.string_list* %49, %struct.strbuf* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %58 = call i32 @strbuf_reset(%struct.strbuf* %57)
  %59 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @TRANSACTION_NAME_CONFLICT, align 4
  store i32 %63, i32* %22, align 4
  br label %64

64:                                               ; preds = %62, %56
  br label %70

65:                                               ; preds = %44
  %66 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %66, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %65, %64
  br label %197

71:                                               ; preds = %39
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %21, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %39

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %39, %76
  %78 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  br label %197

82:                                               ; preds = %43
  %83 = load %struct.ref_lock*, %struct.ref_lock** %19, align 8
  %84 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @LOCK_NO_DEREF, align 4
  %88 = call i32 (...) @get_files_ref_lock_timeout_ms()
  %89 = call i64 @hold_lock_file_for_update_timeout(i32* %84, i8* %86, i32 %87, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %82
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @ENOENT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %21, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %21, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %39

100:                                              ; preds = %95, %91
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* @errno, align 8
  %104 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %105 = call i32 @unable_to_lock_message(i8* %102, i64 %103, %struct.strbuf* %104)
  br label %197

106:                                              ; preds = %82
  %107 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %108 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %107, i32 0, i32 1
  %109 = load i8*, i8** %11, align 8
  %110 = load %struct.ref_lock*, %struct.ref_lock** %19, align 8
  %111 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %110, i32 0, i32 0
  %112 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %113 = load i32*, i32** %17, align 8
  %114 = call i64 @files_read_raw_ref(i32* %108, i8* %109, i32* %111, %struct.strbuf* %112, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %196

116:                                              ; preds = %106
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @ENOENT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  br label %197

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127
  br label %184

129:                                              ; preds = %116
  %130 = load i64, i64* @errno, align 8
  %131 = load i64, i64* @EISDIR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %129
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %138)
  br label %197

140:                                              ; preds = %133
  %141 = load i32, i32* @REMOVE_DIR_EMPTY_ONLY, align 4
  %142 = call i64 @remove_dir_recursively(%struct.strbuf* %20, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %146 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %145, i32 0, i32 1
  %147 = load i8*, i8** %11, align 8
  %148 = load %struct.string_list*, %struct.string_list** %13, align 8
  %149 = load %struct.string_list*, %struct.string_list** %14, align 8
  %150 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %151 = call i64 @refs_verify_refname_available(i32* %146, i8* %147, %struct.string_list* %148, %struct.string_list* %149, %struct.strbuf* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* @TRANSACTION_NAME_CONFLICT, align 4
  store i32 %154, i32* %22, align 4
  br label %197

155:                                              ; preds = %144
  %156 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %157 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %156, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %158, i8* %159)
  br label %197

161:                                              ; preds = %140
  br label %162

162:                                              ; preds = %161
  br label %183

163:                                              ; preds = %129
  %164 = load i64, i64* @errno, align 8
  %165 = load i64, i64* @EINVAL, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load i32*, i32** %17, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @REF_ISBROKEN, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %174, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %175)
  br label %197

177:                                              ; preds = %167, %163
  %178 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = load i64, i64* @errno, align 8
  %181 = call i8* @strerror(i64 %180)
  %182 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %179, i8* %181)
  br label %197

183:                                              ; preds = %162
  br label %184

184:                                              ; preds = %183, %128
  %185 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %186 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = load %struct.string_list*, %struct.string_list** %13, align 8
  %190 = load %struct.string_list*, %struct.string_list** %14, align 8
  %191 = load %struct.strbuf*, %struct.strbuf** %18, align 8
  %192 = call i64 @refs_verify_refname_available(i32* %187, i8* %188, %struct.string_list* %189, %struct.string_list* %190, %struct.strbuf* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %197

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %106
  store i32 0, i32* %22, align 4
  br label %201

197:                                              ; preds = %194, %177, %173, %155, %153, %136, %123, %100, %77, %70
  %198 = load %struct.ref_lock*, %struct.ref_lock** %19, align 8
  %199 = call i32 @unlock_ref(%struct.ref_lock* %198)
  %200 = load %struct.ref_lock**, %struct.ref_lock*** %15, align 8
  store %struct.ref_lock* null, %struct.ref_lock** %200, align 8
  br label %201

201:                                              ; preds = %197, %196
  %202 = call i32 @strbuf_release(%struct.strbuf* %20)
  %203 = load i32, i32* %22, align 4
  ret i32 %203
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.strbuf*) #2

declare dso_local i32 @files_assert_main_repository(%struct.files_ref_store*, i8*) #2

declare dso_local %struct.ref_lock* @xcalloc(i32, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @files_ref_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #2

declare dso_local i32 @safe_create_leading_directories(i8*) #2

declare dso_local i64 @refs_verify_refname_available(i32*, i8*, %struct.string_list*, %struct.string_list*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i64 @hold_lock_file_for_update_timeout(i32*, i8*, i32, i32) #2

declare dso_local i32 @get_files_ref_lock_timeout_ms(...) #2

declare dso_local i32 @unable_to_lock_message(i8*, i64, %struct.strbuf*) #2

declare dso_local i64 @files_read_raw_ref(i32*, i8*, i32*, %struct.strbuf*, i32*) #2

declare dso_local i64 @remove_dir_recursively(%struct.strbuf*, i32) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
