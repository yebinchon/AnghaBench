; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-reach.c_cmd__reach.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-reach.c_cmd__reach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32 }
%struct.strbuf = type { i32, i32* }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.commit_list = type { %struct.TYPE_6__*, %struct.commit_list* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.object_id }
%struct.object = type { i32 }
%struct.ref_filter = type { i32 }
%struct.contains_cache = type { i32 }

@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@the_repository = common dso_local global %struct.repository* null, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"failed to resolve %s\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"failed to load commit for input %s resulting in oid %s\0A\00", align 1
@OBJ_COMMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unexpected start of line: %c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ref_newer\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s(A,B):%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"in_merge_bases\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"is_descendant_of\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s(A,X):%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"get_merge_bases_many\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s(A,X):\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"reduce_heads\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s(X):\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"can_all_from_reach\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%s(X,Y):%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"can_all_from_reach_with_flag\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"%s(X,_,_,0,0):%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"commit_contains\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"--tag\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"%s(_,A,X,_):%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"get_reachable_subset\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"get_reachable_subset(X,Y)\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"commit %s is not marked reachable\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"too many commits marked reachable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__reach(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.object_id, align 4
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.object_array, align 4
  %12 = alloca %struct.commit**, align 8
  %13 = alloca %struct.commit**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 8
  %19 = alloca %struct.repository*, align 8
  %20 = alloca %struct.object_id, align 4
  %21 = alloca %struct.object*, align 8
  %22 = alloca %struct.object*, align 8
  %23 = alloca %struct.commit*, align 8
  %24 = alloca %struct.commit_list*, align 8
  %25 = alloca %struct.commit_list*, align 8
  %26 = alloca %struct.commit_list*, align 8
  %27 = alloca %struct.ref_filter, align 4
  %28 = alloca %struct.contains_cache, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.commit_list*, align 8
  %33 = alloca %struct.commit_list*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %34 = bitcast %struct.object_array* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 4, i1 false)
  %35 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %36 = load %struct.repository*, %struct.repository** @the_repository, align 8
  store %struct.repository* %36, %struct.repository** %19, align 8
  %37 = call i32 (...) @setup_git_directory()
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = call i32 @exit(i32 1) #4
  unreachable

42:                                               ; preds = %2
  store %struct.commit* null, %struct.commit** %8, align 8
  store %struct.commit* null, %struct.commit** %7, align 8
  store %struct.commit_list* null, %struct.commit_list** %10, align 8
  store %struct.commit_list* null, %struct.commit_list** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 16, i32* %17, align 4
  store i32 16, i32* %15, align 4
  %43 = load %struct.commit**, %struct.commit*** %12, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @ALLOC_ARRAY(%struct.commit** %43, i32 %44)
  %46 = load %struct.commit**, %struct.commit*** %13, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @ALLOC_ARRAY(%struct.commit** %46, i32 %47)
  br label %49

49:                                               ; preds = %141, %58, %42
  %50 = load i32, i32* @stdin, align 4
  %51 = call i64 @strbuf_getline(%struct.strbuf* %18, i32 %50)
  %52 = load i64, i64* @EOF, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %142

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %49

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = call i64 @get_oid_committish(i32* %62, %struct.object_id* %20)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %68)
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.repository*, %struct.repository** %19, align 8
  %72 = call %struct.object* @parse_object(%struct.repository* %71, %struct.object_id* %20)
  store %struct.object* %72, %struct.object** %21, align 8
  %73 = load %struct.object*, %struct.object** %21, align 8
  %74 = call %struct.object* @deref_tag_noverify(%struct.object* %73)
  store %struct.object* %74, %struct.object** %22, align 8
  %75 = load %struct.object*, %struct.object** %22, align 8
  %76 = icmp ne %struct.object* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @oid_to_hex(%struct.object_id* %20)
  %81 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %70
  %83 = load %struct.repository*, %struct.repository** %19, align 8
  %84 = load %struct.object*, %struct.object** %22, align 8
  %85 = load i32, i32* @OBJ_COMMIT, align 4
  %86 = call %struct.commit* @object_as_type(%struct.repository* %83, %struct.object* %84, i32 %85, i32 0)
  store %struct.commit* %86, %struct.commit** %23, align 8
  %87 = load %struct.commit*, %struct.commit** %23, align 8
  %88 = icmp ne %struct.commit* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @oid_to_hex(%struct.object_id* %20)
  %93 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %82
  %95 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %135 [
    i32 65, label %99
    i32 66, label %102
    i32 88, label %105
    i32 89, label %121
  ]

99:                                               ; preds = %94
  %100 = call i32 @oidcpy(%struct.object_id* %5, %struct.object_id* %20)
  %101 = load %struct.commit*, %struct.commit** %23, align 8
  store %struct.commit* %101, %struct.commit** %7, align 8
  br label %141

102:                                              ; preds = %94
  %103 = call i32 @oidcpy(%struct.object_id* %6, %struct.object_id* %20)
  %104 = load %struct.commit*, %struct.commit** %23, align 8
  store %struct.commit* %104, %struct.commit** %8, align 8
  br label %141

105:                                              ; preds = %94
  %106 = load %struct.commit*, %struct.commit** %23, align 8
  %107 = call i32 @commit_list_insert(%struct.commit* %106, %struct.commit_list** %9)
  %108 = load %struct.commit**, %struct.commit*** %12, align 8
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @ALLOC_GROW(%struct.commit** %108, i32 %110, i32 %111)
  %113 = load %struct.commit*, %struct.commit** %23, align 8
  %114 = load %struct.commit**, %struct.commit*** %12, align 8
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds %struct.commit*, %struct.commit** %114, i64 %117
  store %struct.commit* %113, %struct.commit** %118, align 8
  %119 = load %struct.object*, %struct.object** %21, align 8
  %120 = call i32 @add_object_array(%struct.object* %119, i32* null, %struct.object_array* %11)
  br label %141

121:                                              ; preds = %94
  %122 = load %struct.commit*, %struct.commit** %23, align 8
  %123 = call i32 @commit_list_insert(%struct.commit* %122, %struct.commit_list** %10)
  %124 = load %struct.commit**, %struct.commit*** %13, align 8
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @ALLOC_GROW(%struct.commit** %124, i32 %126, i32 %127)
  %129 = load %struct.commit*, %struct.commit** %23, align 8
  %130 = load %struct.commit**, %struct.commit*** %13, align 8
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds %struct.commit*, %struct.commit** %130, i64 %133
  store %struct.commit* %129, %struct.commit** %134, align 8
  br label %141

135:                                              ; preds = %94
  %136 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %135, %121, %105, %102, %99
  br label %49

142:                                              ; preds = %49
  %143 = call i32 @strbuf_release(%struct.strbuf* %18)
  %144 = load i8**, i8*** %4, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %142
  %150 = load i8**, i8*** %4, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @ref_newer(%struct.object_id* %5, %struct.object_id* %6)
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %152, i32 %153)
  br label %371

155:                                              ; preds = %142
  %156 = load i8**, i8*** %4, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %155
  %162 = load i8**, i8*** %4, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 1
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.commit*, %struct.commit** %7, align 8
  %166 = load %struct.commit*, %struct.commit** %8, align 8
  %167 = call i32 @in_merge_bases(%struct.commit* %165, %struct.commit* %166)
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %164, i32 %167)
  br label %370

169:                                              ; preds = %155
  %170 = load i8**, i8*** %4, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %169
  %176 = load i8**, i8*** %4, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 1
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.commit*, %struct.commit** %7, align 8
  %180 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %181 = call i32 @is_descendant_of(%struct.commit* %179, %struct.commit_list* %180)
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %178, i32 %181)
  br label %369

183:                                              ; preds = %169
  %184 = load i8**, i8*** %4, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %200, label %189

189:                                              ; preds = %183
  %190 = load %struct.commit*, %struct.commit** %7, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.commit**, %struct.commit*** %12, align 8
  %193 = call %struct.commit_list* @get_merge_bases_many(%struct.commit* %190, i32 %191, %struct.commit** %192)
  store %struct.commit_list* %193, %struct.commit_list** %24, align 8
  %194 = load i8**, i8*** %4, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %196)
  %198 = load %struct.commit_list*, %struct.commit_list** %24, align 8
  %199 = call i32 @print_sorted_commit_ids(%struct.commit_list* %198)
  br label %368

200:                                              ; preds = %183
  %201 = load i8**, i8*** %4, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 1
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %200
  %207 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %208 = call %struct.commit_list* @reduce_heads(%struct.commit_list* %207)
  store %struct.commit_list* %208, %struct.commit_list** %25, align 8
  %209 = load i8**, i8*** %4, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %211)
  %213 = load %struct.commit_list*, %struct.commit_list** %25, align 8
  %214 = call i32 @print_sorted_commit_ids(%struct.commit_list* %213)
  br label %367

215:                                              ; preds = %200
  %216 = load i8**, i8*** %4, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %215
  %222 = load i8**, i8*** %4, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 1
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %226 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %227 = call i32 @can_all_from_reach(%struct.commit_list* %225, %struct.commit_list* %226, i32 1)
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %224, i32 %227)
  br label %366

229:                                              ; preds = %215
  %230 = load i8**, i8*** %4, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 1
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @strcmp(i8* %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %257, label %235

235:                                              ; preds = %229
  %236 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %236, %struct.commit_list** %26, align 8
  br label %237

237:                                              ; preds = %240, %235
  %238 = load %struct.commit_list*, %struct.commit_list** %26, align 8
  %239 = icmp ne %struct.commit_list* %238, null
  br i1 %239, label %240, label %251

240:                                              ; preds = %237
  %241 = load %struct.commit_list*, %struct.commit_list** %26, align 8
  %242 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %241, i32 0, i32 0
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, 2
  store i32 %247, i32* %245, align 4
  %248 = load %struct.commit_list*, %struct.commit_list** %26, align 8
  %249 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %248, i32 0, i32 1
  %250 = load %struct.commit_list*, %struct.commit_list** %249, align 8
  store %struct.commit_list* %250, %struct.commit_list** %26, align 8
  br label %237

251:                                              ; preds = %237
  %252 = load i8**, i8*** %4, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 1
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @can_all_from_reach_with_flag(%struct.object_array* %11, i32 2, i32 4, i32 0, i32 0)
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %254, i32 %255)
  br label %365

257:                                              ; preds = %229
  %258 = load i8**, i8*** %4, align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @strcmp(i8* %260, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %285, label %263

263:                                              ; preds = %257
  %264 = call i32 @init_contains_cache(%struct.contains_cache* %28)
  %265 = load i32, i32* %3, align 4
  %266 = icmp sgt i32 %265, 2
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  %268 = load i8**, i8*** %4, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 2
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @strcmp(i8* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %27, i32 0, i32 0
  store i32 1, i32* %274, align 4
  br label %277

275:                                              ; preds = %267, %263
  %276 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %27, i32 0, i32 0
  store i32 0, i32* %276, align 4
  br label %277

277:                                              ; preds = %275, %273
  %278 = load i8**, i8*** %4, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 1
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.commit*, %struct.commit** %7, align 8
  %282 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %283 = call i32 @commit_contains(%struct.ref_filter* %27, %struct.commit* %281, %struct.commit_list* %282, %struct.contains_cache* %28)
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %280, i32 %283)
  br label %364

285:                                              ; preds = %257
  %286 = load i8**, i8*** %4, align 8
  %287 = getelementptr inbounds i8*, i8** %286, i64 1
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @strcmp(i8* %288, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %363, label %291

291:                                              ; preds = %285
  store i32 1, i32* %29, align 4
  store i32 0, i32* %31, align 4
  %292 = load %struct.commit**, %struct.commit*** %12, align 8
  %293 = load i32, i32* %14, align 4
  %294 = load %struct.commit**, %struct.commit*** %13, align 8
  %295 = load i32, i32* %16, align 4
  %296 = call %struct.commit_list* @get_reachable_subset(%struct.commit** %292, i32 %293, %struct.commit** %294, i32 %295, i32 1)
  store %struct.commit_list* %296, %struct.commit_list** %33, align 8
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %298 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  store %struct.commit_list* %298, %struct.commit_list** %32, align 8
  br label %299

299:                                              ; preds = %325, %291
  %300 = load %struct.commit_list*, %struct.commit_list** %32, align 8
  %301 = icmp ne %struct.commit_list* %300, null
  br i1 %301, label %302, label %329

302:                                              ; preds = %299
  %303 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  %304 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %303, i32 0, i32 0
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, 1
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %302
  %312 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %315 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  %316 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %315, i32 0, i32 0
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 1
  %320 = call i32 @oid_to_hex(%struct.object_id* %319)
  %321 = call i32 (i8*, ...) @die(i8* %314, i32 %320)
  br label %322

322:                                              ; preds = %311, %302
  %323 = load i32, i32* %31, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %31, align 4
  br label %325

325:                                              ; preds = %322
  %326 = load %struct.commit_list*, %struct.commit_list** %32, align 8
  %327 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %326, i32 0, i32 1
  %328 = load %struct.commit_list*, %struct.commit_list** %327, align 8
  store %struct.commit_list* %328, %struct.commit_list** %32, align 8
  br label %299

329:                                              ; preds = %299
  store i32 0, i32* %30, align 4
  br label %330

330:                                              ; preds = %349, %329
  %331 = load i32, i32* %30, align 4
  %332 = load i32, i32* %16, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %352

334:                                              ; preds = %330
  %335 = load %struct.commit**, %struct.commit*** %13, align 8
  %336 = load i32, i32* %30, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.commit*, %struct.commit** %335, i64 %337
  %339 = load %struct.commit*, %struct.commit** %338, align 8
  %340 = getelementptr inbounds %struct.commit, %struct.commit* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, 1
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %334
  %346 = load i32, i32* %31, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %31, align 4
  br label %348

348:                                              ; preds = %345, %334
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %30, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %30, align 4
  br label %330

352:                                              ; preds = %330
  %353 = load i32, i32* %31, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %357 = sext i32 %356 to i64
  %358 = inttoptr i64 %357 to i8*
  %359 = call i32 (i8*, ...) @die(i8* %358)
  br label %360

360:                                              ; preds = %355, %352
  %361 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  %362 = call i32 @print_sorted_commit_ids(%struct.commit_list* %361)
  br label %363

363:                                              ; preds = %360, %285
  br label %364

364:                                              ; preds = %363, %277
  br label %365

365:                                              ; preds = %364, %251
  br label %366

366:                                              ; preds = %365, %221
  br label %367

367:                                              ; preds = %366, %206
  br label %368

368:                                              ; preds = %367, %189
  br label %369

369:                                              ; preds = %368, %175
  br label %370

370:                                              ; preds = %369, %161
  br label %371

371:                                              ; preds = %370, %149
  %372 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_git_directory(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @ALLOC_ARRAY(%struct.commit**, i32) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32) #2

declare dso_local i64 @get_oid_committish(i32*, %struct.object_id*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local %struct.object* @parse_object(%struct.repository*, %struct.object_id*) #2

declare dso_local %struct.object* @deref_tag_noverify(%struct.object*) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local %struct.commit* @object_as_type(%struct.repository*, %struct.object*, i32, i32) #2

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #2

declare dso_local i32 @ALLOC_GROW(%struct.commit**, i32, i32) #2

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @ref_newer(%struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @in_merge_bases(%struct.commit*, %struct.commit*) #2

declare dso_local i32 @is_descendant_of(%struct.commit*, %struct.commit_list*) #2

declare dso_local %struct.commit_list* @get_merge_bases_many(%struct.commit*, i32, %struct.commit**) #2

declare dso_local i32 @print_sorted_commit_ids(%struct.commit_list*) #2

declare dso_local %struct.commit_list* @reduce_heads(%struct.commit_list*) #2

declare dso_local i32 @can_all_from_reach(%struct.commit_list*, %struct.commit_list*, i32) #2

declare dso_local i32 @can_all_from_reach_with_flag(%struct.object_array*, i32, i32, i32, i32) #2

declare dso_local i32 @init_contains_cache(%struct.contains_cache*) #2

declare dso_local i32 @commit_contains(%struct.ref_filter*, %struct.commit*, %struct.commit_list*, %struct.contains_cache*) #2

declare dso_local %struct.commit_list* @get_reachable_subset(%struct.commit**, i32, %struct.commit**, i32, i32) #2

declare dso_local i32 @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
