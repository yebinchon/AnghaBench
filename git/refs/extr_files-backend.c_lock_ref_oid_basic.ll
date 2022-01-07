; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_lock_ref_oid_basic.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_lock_ref_oid_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_lock = type { i32, i32, %struct.object_id }
%struct.object_id = type { i32 }
%struct.files_ref_store = type { i32, i32* }
%struct.string_list = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@RESOLVE_REF_NO_RECURSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"lock_ref_oid_basic\00", align 1
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@REF_DELETING = common dso_local global i32 0, align 4
@RESOLVE_REF_ALLOW_BAD_NAME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"there are still refs under '%s'\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to resolve reference '%s': %s\00", align 1
@create_reflock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_lock* (%struct.files_ref_store*, i8*, %struct.object_id*, %struct.string_list*, %struct.string_list*, i32, i32*, %struct.strbuf*)* @lock_ref_oid_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_lock* @lock_ref_oid_basic(%struct.files_ref_store* %0, i8* %1, %struct.object_id* %2, %struct.string_list* %3, %struct.string_list* %4, i32 %5, i32* %6, %struct.strbuf* %7) #0 {
  %9 = alloca %struct.files_ref_store*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca %struct.string_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.strbuf*, align 8
  %17 = alloca %struct.strbuf, align 4
  %18 = alloca %struct.ref_lock*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.object_id* %2, %struct.object_id** %11, align 8
  store %struct.string_list* %3, %struct.string_list** %12, align 8
  store %struct.string_list* %4, %struct.string_list** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.strbuf* %7, %struct.strbuf** %16, align 8
  %23 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %19, align 4
  %24 = load %struct.object_id*, %struct.object_id** %11, align 8
  %25 = icmp ne %struct.object_id* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load %struct.object_id*, %struct.object_id** %11, align 8
  %28 = call i64 @is_null_oid(%struct.object_id* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %8
  %32 = phi i1 [ false, %8 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* @RESOLVE_REF_NO_RECURSE, align 4
  store i32 %34, i32* %21, align 4
  %35 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %36 = call i32 @files_assert_main_repository(%struct.files_ref_store* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %38 = call i32 @assert(%struct.strbuf* %37)
  %39 = call %struct.ref_lock* @xcalloc(i32 1, i32 12)
  store %struct.ref_lock* %39, %struct.ref_lock** %18, align 8
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @RESOLVE_REF_READING, align 4
  %44 = load i32, i32* %21, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %21, align 4
  br label %46

46:                                               ; preds = %42, %31
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @REF_DELETING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @RESOLVE_REF_ALLOW_BAD_NAME, align 4
  %53 = load i32, i32* %21, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %21, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @files_ref_path(%struct.files_ref_store* %56, %struct.strbuf* %17, i8* %57)
  %59 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %60 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %59, i32 0, i32 0
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %21, align 4
  %63 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  %64 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %63, i32 0, i32 2
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @refs_resolve_ref_unsafe(i32* %60, i8* %61, i32 %62, %struct.object_id* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %55
  %74 = load i32, i32* @errno, align 4
  %75 = load i32, i32* @EISDIR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  %78 = call i64 @remove_empty_directories(%struct.strbuf* %17)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load i32, i32* @errno, align 4
  store i32 %81, i32* %19, align 4
  %82 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %83 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %82, i32 0, i32 0
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.string_list*, %struct.string_list** %12, align 8
  %86 = load %struct.string_list*, %struct.string_list** %13, align 8
  %87 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %88 = call i64 @refs_verify_refname_available(i32* %83, i8* %84, %struct.string_list* %85, %struct.string_list* %86, %struct.strbuf* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %80
  %91 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %80
  br label %180

95:                                               ; preds = %77
  %96 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %97 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %96, i32 0, i32 0
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  %101 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %100, i32 0, i32 2
  %102 = load i32*, i32** %15, align 8
  %103 = call i32 @refs_resolve_ref_unsafe(i32* %97, i8* %98, i32 %99, %struct.object_id* %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %22, align 4
  br label %108

108:                                              ; preds = %95, %73, %55
  %109 = load i32, i32* %22, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @errno, align 4
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* @ENOTDIR, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %125, label %116

116:                                              ; preds = %111
  %117 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %118 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %117, i32 0, i32 0
  %119 = load i8*, i8** %10, align 8
  %120 = load %struct.string_list*, %struct.string_list** %12, align 8
  %121 = load %struct.string_list*, %struct.string_list** %13, align 8
  %122 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %123 = call i64 @refs_verify_refname_available(i32* %118, i8* %119, %struct.string_list* %120, %struct.string_list* %121, %struct.strbuf* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %116, %111
  %126 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @strerror(i32 %128)
  %130 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %127, i32 %129)
  br label %131

131:                                              ; preds = %125, %116
  br label %180

132:                                              ; preds = %108
  %133 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  %134 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %133, i32 0, i32 2
  %135 = call i64 @is_null_oid(%struct.object_id* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %139 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.string_list*, %struct.string_list** %12, align 8
  %143 = load %struct.string_list*, %struct.string_list** %13, align 8
  %144 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %145 = call i64 @refs_verify_refname_available(i32* %140, i8* %141, %struct.string_list* %142, %struct.string_list* %143, %struct.strbuf* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* @ENOTDIR, align 4
  store i32 %148, i32* %19, align 4
  br label %180

149:                                              ; preds = %137, %132
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @xstrdup(i8* %150)
  %152 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  %153 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @create_reflock, align 4
  %157 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  %158 = getelementptr inbounds %struct.ref_lock, %struct.ref_lock* %157, i32 0, i32 0
  %159 = call i64 @raceproof_create_file(i32 %155, i32 %156, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %149
  %162 = load i32, i32* @errno, align 4
  store i32 %162, i32* %19, align 4
  %163 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @errno, align 4
  %166 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %167 = call i32 @unable_to_lock_message(i32 %164, i32 %165, %struct.strbuf* %166)
  br label %180

168:                                              ; preds = %149
  %169 = load %struct.files_ref_store*, %struct.files_ref_store** %9, align 8
  %170 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %169, i32 0, i32 0
  %171 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  %172 = load %struct.object_id*, %struct.object_id** %11, align 8
  %173 = load i32, i32* %20, align 4
  %174 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %175 = call i64 @verify_lock(i32* %170, %struct.ref_lock* %171, %struct.object_id* %172, i32 %173, %struct.strbuf* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i32, i32* @errno, align 4
  store i32 %178, i32* %19, align 4
  br label %180

179:                                              ; preds = %168
  br label %183

180:                                              ; preds = %177, %161, %147, %131, %94
  %181 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  %182 = call i32 @unlock_ref(%struct.ref_lock* %181)
  store %struct.ref_lock* null, %struct.ref_lock** %18, align 8
  br label %183

183:                                              ; preds = %180, %179
  %184 = call i32 @strbuf_release(%struct.strbuf* %17)
  %185 = load i32, i32* %19, align 4
  store i32 %185, i32* @errno, align 4
  %186 = load %struct.ref_lock*, %struct.ref_lock** %18, align 8
  ret %struct.ref_lock* %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @files_assert_main_repository(%struct.files_ref_store*, i8*) #2

declare dso_local i32 @assert(%struct.strbuf*) #2

declare dso_local %struct.ref_lock* @xcalloc(i32, i32) #2

declare dso_local i32 @files_ref_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #2

declare dso_local i32 @refs_resolve_ref_unsafe(i32*, i8*, i32, %struct.object_id*, i32*) #2

declare dso_local i64 @remove_empty_directories(%struct.strbuf*) #2

declare dso_local i64 @refs_verify_refname_available(i32*, i8*, %struct.string_list*, %struct.string_list*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i64 @raceproof_create_file(i32, i32, i32*) #2

declare dso_local i32 @unable_to_lock_message(i32, i32, %struct.strbuf*) #2

declare dso_local i64 @verify_lock(i32*, %struct.ref_lock*, %struct.object_id*, i32, %struct.strbuf*) #2

declare dso_local i32 @unlock_ref(%struct.ref_lock*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
