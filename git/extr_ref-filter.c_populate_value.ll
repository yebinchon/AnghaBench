; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_populate_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_populate_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_info = type { i32 }
%struct.used_atom = type { i8*, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.ref_array_item = type { i32, i8*, i64, i32, %struct.atom_value*, i8* }
%struct.atom_value = type { i32*, i32, %struct.used_atom* }
%struct.strbuf = type { i32 }
%struct.object = type { i64 }
%struct.branch = type { i32 }
%struct.tag = type { i32 }

@OBJECT_INFO_INIT = common dso_local global %struct.object_info zeroinitializer, align 4
@used_atom_cnt = common dso_local global i32 0, align 4
@need_symref = common dso_local global i64 0, align 8
@REF_ISSYMREF = common dso_local global i32 0, align 4
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@used_atom = common dso_local global %struct.used_atom* null, align 8
@append_atom = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"refname\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"worktreepath\00", align 1
@FILTER_REFS_BRANCHES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"symref\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"color:\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c",symref\00", align 1
@REF_ISPACKED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c",packed\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@align_atom_handler = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@end_atom_handler = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"if:\00", align 1
@if_atom_handler = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@then_atom_handler = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@else_atom_handler = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"%s^{}\00", align 1
@SOURCE_NONE = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [25 x i8] c"missing object %s for %s\00", align 1
@need_tagged = common dso_local global i64 0, align 8
@oi = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@oi_deref = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@OBJ_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_array_item*, %struct.strbuf*)* @populate_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_value(%struct.ref_array_item* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_array_item*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_info, align 4
  %9 = alloca %struct.used_atom*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.atom_value*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.branch*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [256 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.atom_value*, align 8
  store %struct.ref_array_item* %0, %struct.ref_array_item** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %21 = bitcast %struct.object_info* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.object_info* @OBJECT_INFO_INIT to i8*), i64 4, i1 false)
  %22 = load i32, i32* @used_atom_cnt, align 4
  %23 = call %struct.atom_value* @xcalloc(i32 %22, i32 24)
  %24 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %25 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %24, i32 0, i32 4
  store %struct.atom_value* %23, %struct.atom_value** %25, align 8
  %26 = load i64, i64* @need_symref, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %2
  %29 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %30 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @REF_ISSYMREF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %37 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %36, i32 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %42 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @RESOLVE_REF_READING, align 4
  %45 = call i8* @resolve_refdup(i8* %43, i32 %44, i32* null, i32* null)
  %46 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %47 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %49 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %55 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %40
  br label %57

57:                                               ; preds = %56, %35, %28, %2
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %402, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @used_atom_cnt, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %405

62:                                               ; preds = %58
  %63 = load %struct.used_atom*, %struct.used_atom** @used_atom, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %63, i64 %65
  store %struct.used_atom* %66, %struct.used_atom** %9, align 8
  %67 = load %struct.used_atom*, %struct.used_atom** @used_atom, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %67, i64 %69
  %71 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %10, align 8
  %73 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %74 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %73, i32 0, i32 4
  %75 = load %struct.atom_value*, %struct.atom_value** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %75, i64 %77
  store %struct.atom_value* %78, %struct.atom_value** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.branch* null, %struct.branch** %14, align 8
  %79 = load i32, i32* @append_atom, align 4
  %80 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %81 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %83 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %84 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %83, i32 0, i32 2
  store %struct.used_atom* %82, %struct.used_atom** %84, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 42
  br i1 %88, label %89, label %92

89:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %89, %62
  %93 = load i8*, i8** %10, align 8
  %94 = call i64 @starts_with(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %98 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %99 = call i8* @get_refname(%struct.used_atom* %97, %struct.ref_array_item* %98)
  store i8* %99, i8** %13, align 8
  br label %385

100:                                              ; preds = %92
  %101 = load i8*, i8** %10, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %100
  %105 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %106 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FILTER_REFS_BRANCHES, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %112 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %113 = call i32* @get_worktree_path(%struct.used_atom* %111, %struct.ref_array_item* %112)
  %114 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %115 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %114, i32 0, i32 0
  store i32* %113, i32** %115, align 8
  br label %121

116:                                              ; preds = %104
  %117 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %120 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  br label %121

121:                                              ; preds = %116, %110
  br label %402

122:                                              ; preds = %100
  %123 = load i8*, i8** %10, align 8
  %124 = call i64 @starts_with(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %128 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %129 = call i8* @get_symref(%struct.used_atom* %127, %struct.ref_array_item* %128)
  store i8* %129, i8** %13, align 8
  br label %383

130:                                              ; preds = %122
  %131 = load i8*, i8** %10, align 8
  %132 = call i64 @starts_with(i8* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %136 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @skip_prefix(i8* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %15)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %134
  %141 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %144 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %143, i32 0, i32 0
  store i32* %142, i32** %144, align 8
  br label %402

145:                                              ; preds = %134
  %146 = load i8*, i8** %15, align 8
  %147 = call %struct.branch* @branch_get(i8* %146)
  store %struct.branch* %147, %struct.branch** %14, align 8
  %148 = load %struct.branch*, %struct.branch** %14, align 8
  %149 = call i8* @branch_get_upstream(%struct.branch* %148, i32* null)
  store i8* %149, i8** %13, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load %struct.branch*, %struct.branch** %14, align 8
  %156 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %157 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %156, i32 0, i32 0
  %158 = call i32 @fill_remote_ref_details(%struct.used_atom* %153, i8* %154, %struct.branch* %155, i32** %157)
  br label %164

159:                                              ; preds = %145
  %160 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %163 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %162, i32 0, i32 0
  store i32* %161, i32** %163, align 8
  br label %164

164:                                              ; preds = %159, %152
  br label %402

165:                                              ; preds = %130
  %166 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %167 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %165
  %173 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %174 = bitcast i8* %173 to i32*
  %175 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %176 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %175, i32 0, i32 0
  store i32* %174, i32** %176, align 8
  %177 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %178 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @skip_prefix(i8* %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %16)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %172
  br label %402

183:                                              ; preds = %172
  %184 = load i8*, i8** %16, align 8
  %185 = call %struct.branch* @branch_get(i8* %184)
  store %struct.branch* %185, %struct.branch** %14, align 8
  %186 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %187 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  store i8* null, i8** %13, align 8
  br label %200

193:                                              ; preds = %183
  %194 = load %struct.branch*, %struct.branch** %14, align 8
  %195 = call i8* @branch_get_push(%struct.branch* %194, i32* null)
  store i8* %195, i8** %13, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  br label %402

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199, %192
  %201 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %202 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = bitcast i32* %203 to i8*
  %205 = call i32 @free(i8* %204)
  %206 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = load %struct.branch*, %struct.branch** %14, align 8
  %209 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %210 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %209, i32 0, i32 0
  %211 = call i32 @fill_remote_ref_details(%struct.used_atom* %206, i8* %207, %struct.branch* %208, i32** %210)
  br label %402

212:                                              ; preds = %165
  %213 = load i8*, i8** %10, align 8
  %214 = call i64 @starts_with(i8* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %218 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @xstrdup(i8* %220)
  %222 = bitcast i8* %221 to i32*
  %223 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %224 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %223, i32 0, i32 0
  store i32* %222, i32** %224, align 8
  br label %402

225:                                              ; preds = %212
  %226 = load i8*, i8** %10, align 8
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %268, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  store i8* %230, i8** %18, align 8
  %231 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %232 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @REF_ISSYMREF, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %229
  %238 = load i8*, i8** %18, align 8
  %239 = call i8* @copy_advance(i8* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i8* %239, i8** %18, align 8
  br label %240

240:                                              ; preds = %237, %229
  %241 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %242 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @REF_ISPACKED, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load i8*, i8** %18, align 8
  %249 = call i8* @copy_advance(i8* %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i8* %249, i8** %18, align 8
  br label %250

250:                                              ; preds = %247, %240
  %251 = load i8*, i8** %18, align 8
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %253 = icmp eq i8* %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %256 = bitcast i8* %255 to i32*
  %257 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %258 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %257, i32 0, i32 0
  store i32* %256, i32** %258, align 8
  br label %267

259:                                              ; preds = %250
  %260 = load i8*, i8** %18, align 8
  store i8 0, i8* %260, align 1
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %262 = getelementptr inbounds i8, i8* %261, i64 1
  %263 = call i8* @xstrdup(i8* %262)
  %264 = bitcast i8* %263 to i32*
  %265 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %266 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %265, i32 0, i32 0
  store i32* %264, i32** %266, align 8
  br label %267

267:                                              ; preds = %259, %254
  br label %402

268:                                              ; preds = %225
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** %10, align 8
  %273 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %274 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %273, i32 0, i32 3
  %275 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %276 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %277 = call i64 @grab_objectname(i8* %272, i32* %274, %struct.atom_value* %275, %struct.used_atom* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %402

280:                                              ; preds = %271, %268
  %281 = load i8*, i8** %10, align 8
  %282 = call i32 @strcmp(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %311, label %284

284:                                              ; preds = %280
  %285 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %286 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %305

290:                                              ; preds = %284
  %291 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %292 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %291, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.used_atom*, %struct.used_atom** %9, align 8
  %295 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @strcmp(i8* %293, i8* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %290
  %301 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %302 = bitcast i8* %301 to i32*
  %303 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %304 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %303, i32 0, i32 0
  store i32* %302, i32** %304, align 8
  br label %310

305:                                              ; preds = %290, %284
  %306 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %307 = bitcast i8* %306 to i32*
  %308 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %309 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %308, i32 0, i32 0
  store i32* %307, i32** %309, align 8
  br label %310

310:                                              ; preds = %305, %300
  br label %402

311:                                              ; preds = %280
  %312 = load i8*, i8** %10, align 8
  %313 = call i64 @starts_with(i8* %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %311
  %316 = load i32, i32* @align_atom_handler, align 4
  %317 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %318 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %317, i32 0, i32 1
  store i32 %316, i32* %318, align 8
  %319 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %320 = bitcast i8* %319 to i32*
  %321 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %322 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %321, i32 0, i32 0
  store i32* %320, i32** %322, align 8
  br label %402

323:                                              ; preds = %311
  %324 = load i8*, i8** %10, align 8
  %325 = call i32 @strcmp(i8* %324, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %335, label %327

327:                                              ; preds = %323
  %328 = load i32, i32* @end_atom_handler, align 4
  %329 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %330 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 8
  %331 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %332 = bitcast i8* %331 to i32*
  %333 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %334 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %333, i32 0, i32 0
  store i32* %332, i32** %334, align 8
  br label %402

335:                                              ; preds = %323
  %336 = load i8*, i8** %10, align 8
  %337 = call i64 @starts_with(i8* %336, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %358

339:                                              ; preds = %335
  %340 = load i8*, i8** %10, align 8
  %341 = call i64 @skip_prefix(i8* %340, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %19)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %339
  %344 = load i8*, i8** %19, align 8
  %345 = call i8* @xstrdup(i8* %344)
  %346 = bitcast i8* %345 to i32*
  %347 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %348 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %347, i32 0, i32 0
  store i32* %346, i32** %348, align 8
  br label %354

349:                                              ; preds = %339
  %350 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %351 = bitcast i8* %350 to i32*
  %352 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %353 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %352, i32 0, i32 0
  store i32* %351, i32** %353, align 8
  br label %354

354:                                              ; preds = %349, %343
  %355 = load i32, i32* @if_atom_handler, align 4
  %356 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %357 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 8
  br label %402

358:                                              ; preds = %335
  %359 = load i8*, i8** %10, align 8
  %360 = call i32 @strcmp(i8* %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* @then_atom_handler, align 4
  %364 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %365 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %364, i32 0, i32 1
  store i32 %363, i32* %365, align 8
  %366 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %367 = bitcast i8* %366 to i32*
  %368 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %369 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %368, i32 0, i32 0
  store i32* %367, i32** %369, align 8
  br label %402

370:                                              ; preds = %358
  %371 = load i8*, i8** %10, align 8
  %372 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %382, label %374

374:                                              ; preds = %370
  %375 = load i32, i32* @else_atom_handler, align 4
  %376 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %377 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 8
  %378 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %379 = bitcast i8* %378 to i32*
  %380 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %381 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %380, i32 0, i32 0
  store i32* %379, i32** %381, align 8
  br label %402

382:                                              ; preds = %370
  br label %402

383:                                              ; preds = %126
  br label %384

384:                                              ; preds = %383
  br label %385

385:                                              ; preds = %384, %96
  %386 = load i32, i32* %12, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %394, label %388

388:                                              ; preds = %385
  %389 = load i8*, i8** %13, align 8
  %390 = call i8* @xstrdup(i8* %389)
  %391 = bitcast i8* %390 to i32*
  %392 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %393 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %392, i32 0, i32 0
  store i32* %391, i32** %393, align 8
  br label %399

394:                                              ; preds = %385
  %395 = load i8*, i8** %13, align 8
  %396 = call i32* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %395)
  %397 = load %struct.atom_value*, %struct.atom_value** %11, align 8
  %398 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %397, i32 0, i32 0
  store i32* %396, i32** %398, align 8
  br label %399

399:                                              ; preds = %394, %388
  %400 = load i8*, i8** %13, align 8
  %401 = call i32 @free(i8* %400)
  br label %402

402:                                              ; preds = %399, %382, %374, %362, %354, %327, %315, %310, %279, %267, %216, %200, %198, %182, %164, %140, %121
  %403 = load i32, i32* %7, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %7, align 4
  br label %58

405:                                              ; preds = %58
  store i32 0, i32* %7, align 4
  br label %406

406:                                              ; preds = %441, %405
  %407 = load i32, i32* %7, align 4
  %408 = load i32, i32* @used_atom_cnt, align 4
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %410, label %444

410:                                              ; preds = %406
  %411 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %412 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %411, i32 0, i32 4
  %413 = load %struct.atom_value*, %struct.atom_value** %412, align 8
  %414 = load i32, i32* %7, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %413, i64 %415
  store %struct.atom_value* %416, %struct.atom_value** %20, align 8
  %417 = load %struct.atom_value*, %struct.atom_value** %20, align 8
  %418 = getelementptr inbounds %struct.atom_value, %struct.atom_value* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = icmp eq i32* %419, null
  br i1 %420, label %421, label %440

421:                                              ; preds = %410
  %422 = load %struct.used_atom*, %struct.used_atom** @used_atom, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %422, i64 %424
  %426 = getelementptr inbounds %struct.used_atom, %struct.used_atom* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @SOURCE_NONE, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %440

430:                                              ; preds = %421
  %431 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %432 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %433 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %434 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %433, i32 0, i32 3
  %435 = call i32 @oid_to_hex(i32* %434)
  %436 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %437 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %436, i32 0, i32 1
  %438 = load i8*, i8** %437, align 8
  %439 = call i32 @strbuf_addf_ret(%struct.strbuf* %431, i32 -1, i32 %432, i32 %435, i8* %438)
  store i32 %439, i32* %3, align 4
  br label %482

440:                                              ; preds = %421, %410
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %7, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %7, align 4
  br label %406

444:                                              ; preds = %406
  %445 = load i64, i64* @need_tagged, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %444
  store i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @oi, i32 0, i32 2), i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @oi, i32 0, i32 1, i32 0), align 8
  br label %448

448:                                              ; preds = %447, %444
  %449 = call i32 @memcmp(%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @oi, i32 0, i32 1), %struct.object_info* %8, i32 4)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %455, label %451

451:                                              ; preds = %448
  %452 = call i32 @memcmp(%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @oi_deref, i32 0, i32 1), %struct.object_info* %8, i32 4)
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %455, label %454

454:                                              ; preds = %451
  store i32 0, i32* %3, align 4
  br label %482

455:                                              ; preds = %451, %448
  %456 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %457 = getelementptr inbounds %struct.ref_array_item, %struct.ref_array_item* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 8
  store i32 %458, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @oi, i32 0, i32 0), align 8
  %459 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %460 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %461 = call i32 @get_object(%struct.ref_array_item* %459, i32 0, %struct.object** %6, %struct.TYPE_9__* @oi, %struct.strbuf* %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %455
  store i32 -1, i32* %3, align 4
  br label %482

464:                                              ; preds = %455
  %465 = load i64, i64* @need_tagged, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %473

467:                                              ; preds = %464
  %468 = load %struct.object*, %struct.object** %6, align 8
  %469 = getelementptr inbounds %struct.object, %struct.object* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @OBJ_TAG, align 8
  %472 = icmp ne i64 %470, %471
  br i1 %472, label %473, label %474

473:                                              ; preds = %467, %464
  store i32 0, i32* %3, align 4
  br label %482

474:                                              ; preds = %467
  %475 = load %struct.object*, %struct.object** %6, align 8
  %476 = bitcast %struct.object* %475 to %struct.tag*
  %477 = call i32* @get_tagged_oid(%struct.tag* %476)
  %478 = load i32, i32* %477, align 4
  store i32 %478, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @oi_deref, i32 0, i32 0), align 8
  %479 = load %struct.ref_array_item*, %struct.ref_array_item** %4, align 8
  %480 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %481 = call i32 @get_object(%struct.ref_array_item* %479, i32 1, %struct.object** %6, %struct.TYPE_9__* @oi_deref, %struct.strbuf* %480)
  store i32 %481, i32* %3, align 4
  br label %482

482:                                              ; preds = %474, %473, %463, %454, %430
  %483 = load i32, i32* %3, align 4
  ret i32 %483
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.atom_value* @xcalloc(i32, i32) #2

declare dso_local i8* @resolve_refdup(i8*, i32, i32*, i32*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i8* @get_refname(%struct.used_atom*, %struct.ref_array_item*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @get_worktree_path(%struct.used_atom*, %struct.ref_array_item*) #2

declare dso_local i8* @get_symref(%struct.used_atom*, %struct.ref_array_item*) #2

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local %struct.branch* @branch_get(i8*) #2

declare dso_local i8* @branch_get_upstream(%struct.branch*, i32*) #2

declare dso_local i32 @fill_remote_ref_details(%struct.used_atom*, i8*, %struct.branch*, i32**) #2

declare dso_local i8* @branch_get_push(%struct.branch*, i32*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @copy_advance(i8*, i8*) #2

declare dso_local i64 @grab_objectname(i8*, i32*, %struct.atom_value*, %struct.used_atom*) #2

declare dso_local i32* @xstrfmt(i8*, i8*) #2

declare dso_local i32 @strbuf_addf_ret(%struct.strbuf*, i32, i32, i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @memcmp(%struct.TYPE_10__*, %struct.object_info*, i32) #2

declare dso_local i32 @get_object(%struct.ref_array_item*, i32, %struct.object**, %struct.TYPE_9__*, %struct.strbuf*) #2

declare dso_local i32* @get_tagged_oid(%struct.tag*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
