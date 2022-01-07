; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_handle_revision_pseudo_opt.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_handle_revision_pseudo_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i8*, i32, i32 }
%struct.ref_store = type { i32 }
%struct.all_refs_cb = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"--single-worktree cannot be used together with submodule\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@refs_for_each_ref = common dso_local global i32 0, align 4
@refs_head_ref = common dso_local global i32 0, align 4
@handle_one_ref = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"--branches\00", align 1
@refs_for_each_branch_ref = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"--bisect\00", align 1
@term_bad = common dso_local global i32 0, align 4
@term_good = common dso_local global i32 0, align 4
@for_each_bad_bisect_ref = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@for_each_good_bisect_ref = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@refs_for_each_tag_ref = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"--remotes\00", align 1
@refs_for_each_remote_ref = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"--branches=\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"--tags=\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"--remotes=\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"--reflog\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"--indexed-objects\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"--alternate-refs\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"--not\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"--no-walk\00", align 1
@REVISION_WALK_NO_WALK_SORTED = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"--no-walk=\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"sorted\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"unsorted\00", align 1
@REVISION_WALK_NO_WALK_UNSORTED = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [30 x i8] c"invalid argument to --no-walk\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"--do-walk\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"--single-worktree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rev_info*, i32, i8**, i32*)* @handle_revision_pseudo_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_revision_pseudo_opt(i8* %0, %struct.rev_info* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ref_store*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.all_refs_cb, align 4
  %17 = alloca %struct.all_refs_cb, align 4
  %18 = alloca %struct.all_refs_cb, align 4
  %19 = alloca %struct.all_refs_cb, align 4
  %20 = alloca %struct.all_refs_cb, align 4
  store i8* %0, i8** %7, align 8
  store %struct.rev_info* %1, %struct.rev_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @BUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i8*, i8** %7, align 8
  %35 = call %struct.ref_store* @get_submodule_ref_store(i8* %34)
  store %struct.ref_store* %35, %struct.ref_store** %14, align 8
  br label %41

36:                                               ; preds = %5
  %37 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %38 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ref_store* @get_main_ref_store(i32 %39)
  store %struct.ref_store* %40, %struct.ref_store** %14, align 8
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %41
  %46 = load %struct.ref_store*, %struct.ref_store** %14, align 8
  %47 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @refs_for_each_ref, align 4
  %51 = call i32 @handle_refs(%struct.ref_store* %46, %struct.rev_info* %47, i32 %49, i32 %50)
  %52 = load %struct.ref_store*, %struct.ref_store** %14, align 8
  %53 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @refs_head_ref, align 4
  %57 = call i32 @handle_refs(%struct.ref_store* %52, %struct.rev_info* %53, i32 %55, i32 %56)
  %58 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %59 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %45
  %63 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @init_all_refs_cb(%struct.all_refs_cb* %16, %struct.rev_info* %63, i32 %65)
  %67 = load i32, i32* @handle_one_ref, align 4
  %68 = call i32 @other_head_refs(i32 %67, %struct.all_refs_cb* %16)
  br label %69

69:                                               ; preds = %62, %45
  %70 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %71 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %70, i32 0, i32 3
  %72 = call i32 @clear_ref_exclusion(i32* %71)
  br label %312

73:                                               ; preds = %41
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = load %struct.ref_store*, %struct.ref_store** %14, align 8
  %79 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @refs_for_each_branch_ref, align 4
  %83 = call i32 @handle_refs(%struct.ref_store* %78, %struct.rev_info* %79, i32 %81, i32 %82)
  %84 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %84, i32 0, i32 3
  %86 = call i32 @clear_ref_exclusion(i32* %85)
  br label %311

87:                                               ; preds = %73
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = call i32 @read_bisect_terms(i32* @term_bad, i32* @term_good)
  %93 = load %struct.ref_store*, %struct.ref_store** %14, align 8
  %94 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @for_each_bad_bisect_ref, align 4
  %98 = call i32 @handle_refs(%struct.ref_store* %93, %struct.rev_info* %94, i32 %96, i32 %97)
  %99 = load %struct.ref_store*, %struct.ref_store** %14, align 8
  %100 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @UNINTERESTING, align 4
  %104 = load i32, i32* @BOTTOM, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %102, %105
  %107 = load i32, i32* @for_each_good_bisect_ref, align 4
  %108 = call i32 @handle_refs(%struct.ref_store* %99, %struct.rev_info* %100, i32 %106, i32 %107)
  %109 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %110 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %310

111:                                              ; preds = %87
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = load %struct.ref_store*, %struct.ref_store** %14, align 8
  %117 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @refs_for_each_tag_ref, align 4
  %121 = call i32 @handle_refs(%struct.ref_store* %116, %struct.rev_info* %117, i32 %119, i32 %120)
  %122 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %123 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %122, i32 0, i32 3
  %124 = call i32 @clear_ref_exclusion(i32* %123)
  br label %309

125:                                              ; preds = %111
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %125
  %130 = load %struct.ref_store*, %struct.ref_store** %14, align 8
  %131 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @refs_for_each_remote_ref, align 4
  %135 = call i32 @handle_refs(%struct.ref_store* %130, %struct.rev_info* %131, i32 %133, i32 %134)
  %136 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %137 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %136, i32 0, i32 3
  %138 = call i32 @clear_ref_exclusion(i32* %137)
  br label %308

139:                                              ; preds = %125
  %140 = load i8**, i8*** %10, align 8
  %141 = call i32 @parse_long_opt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %140, i8** %13)
  store i32 %141, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %139
  %144 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @init_all_refs_cb(%struct.all_refs_cb* %17, %struct.rev_info* %144, i32 %146)
  %148 = load i32, i32* @handle_one_ref, align 4
  %149 = load i8*, i8** %13, align 8
  %150 = call i32 @for_each_glob_ref(i32 %148, i8* %149, %struct.all_refs_cb* %17)
  %151 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %152 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %151, i32 0, i32 3
  %153 = call i32 @clear_ref_exclusion(i32* %152)
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %6, align 4
  br label %313

155:                                              ; preds = %139
  %156 = load i8**, i8*** %10, align 8
  %157 = call i32 @parse_long_opt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %156, i8** %13)
  store i32 %157, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %161 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %160, i32 0, i32 3
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @add_ref_exclusion(i32* %161, i8* %162)
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %6, align 4
  br label %313

165:                                              ; preds = %155
  %166 = load i8*, i8** %12, align 8
  %167 = call i64 @skip_prefix(i8* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %13)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @init_all_refs_cb(%struct.all_refs_cb* %18, %struct.rev_info* %170, i32 %172)
  %174 = load i32, i32* @handle_one_ref, align 4
  %175 = load i8*, i8** %13, align 8
  %176 = call i32 @for_each_glob_ref_in(i32 %174, i8* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.all_refs_cb* %18)
  %177 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %178 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %177, i32 0, i32 3
  %179 = call i32 @clear_ref_exclusion(i32* %178)
  br label %305

180:                                              ; preds = %165
  %181 = load i8*, i8** %12, align 8
  %182 = call i64 @skip_prefix(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %13)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %180
  %185 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @init_all_refs_cb(%struct.all_refs_cb* %19, %struct.rev_info* %185, i32 %187)
  %189 = load i32, i32* @handle_one_ref, align 4
  %190 = load i8*, i8** %13, align 8
  %191 = call i32 @for_each_glob_ref_in(i32 %189, i8* %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), %struct.all_refs_cb* %19)
  %192 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %193 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %192, i32 0, i32 3
  %194 = call i32 @clear_ref_exclusion(i32* %193)
  br label %304

195:                                              ; preds = %180
  %196 = load i8*, i8** %12, align 8
  %197 = call i64 @skip_prefix(i8* %196, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %13)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %195
  %200 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @init_all_refs_cb(%struct.all_refs_cb* %20, %struct.rev_info* %200, i32 %202)
  %204 = load i32, i32* @handle_one_ref, align 4
  %205 = load i8*, i8** %13, align 8
  %206 = call i32 @for_each_glob_ref_in(i32 %204, i8* %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), %struct.all_refs_cb* %20)
  %207 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %208 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %207, i32 0, i32 3
  %209 = call i32 @clear_ref_exclusion(i32* %208)
  br label %303

210:                                              ; preds = %195
  %211 = load i8*, i8** %12, align 8
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %210
  %215 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @add_reflogs_to_pending(%struct.rev_info* %215, i32 %217)
  br label %302

219:                                              ; preds = %210
  %220 = load i8*, i8** %12, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %219
  %224 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %225 = load i32*, i32** %11, align 8
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @add_index_objects_to_pending(%struct.rev_info* %224, i32 %226)
  br label %301

228:                                              ; preds = %219
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %228
  %233 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @add_alternate_refs_to_pending(%struct.rev_info* %233, i32 %235)
  br label %300

237:                                              ; preds = %228
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %248, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* @UNINTERESTING, align 4
  %243 = load i32, i32* @BOTTOM, align 4
  %244 = or i32 %242, %243
  %245 = load i32*, i32** %11, align 8
  %246 = load i32, i32* %245, align 4
  %247 = xor i32 %246, %244
  store i32 %247, i32* %245, align 4
  br label %299

248:                                              ; preds = %237
  %249 = load i8*, i8** %12, align 8
  %250 = call i32 @strcmp(i8* %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load i8*, i8** @REVISION_WALK_NO_WALK_SORTED, align 8
  %254 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %255 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  br label %298

256:                                              ; preds = %248
  %257 = load i8*, i8** %12, align 8
  %258 = call i64 @skip_prefix(i8* %257, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8** %13)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %280

260:                                              ; preds = %256
  %261 = load i8*, i8** %13, align 8
  %262 = call i32 @strcmp(i8* %261, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = load i8*, i8** @REVISION_WALK_NO_WALK_SORTED, align 8
  %266 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %267 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %266, i32 0, i32 2
  store i8* %265, i8** %267, align 8
  br label %279

268:                                              ; preds = %260
  %269 = load i8*, i8** %13, align 8
  %270 = call i32 @strcmp(i8* %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i8*, i8** @REVISION_WALK_NO_WALK_UNSORTED, align 8
  %274 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %275 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  br label %278

276:                                              ; preds = %268
  %277 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  store i32 %277, i32* %6, align 4
  br label %313

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278, %264
  br label %297

280:                                              ; preds = %256
  %281 = load i8*, i8** %12, align 8
  %282 = call i32 @strcmp(i8* %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %286 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %285, i32 0, i32 2
  store i8* null, i8** %286, align 8
  br label %296

287:                                              ; preds = %280
  %288 = load i8*, i8** %12, align 8
  %289 = call i32 @strcmp(i8* %288, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %287
  %292 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %293 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %292, i32 0, i32 0
  store i32 1, i32* %293, align 8
  br label %295

294:                                              ; preds = %287
  store i32 0, i32* %6, align 4
  br label %313

295:                                              ; preds = %291
  br label %296

296:                                              ; preds = %295, %284
  br label %297

297:                                              ; preds = %296, %279
  br label %298

298:                                              ; preds = %297, %252
  br label %299

299:                                              ; preds = %298, %241
  br label %300

300:                                              ; preds = %299, %232
  br label %301

301:                                              ; preds = %300, %223
  br label %302

302:                                              ; preds = %301, %214
  br label %303

303:                                              ; preds = %302, %199
  br label %304

304:                                              ; preds = %303, %184
  br label %305

305:                                              ; preds = %304, %169
  br label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307, %129
  br label %309

309:                                              ; preds = %308, %115
  br label %310

310:                                              ; preds = %309, %91
  br label %311

311:                                              ; preds = %310, %77
  br label %312

312:                                              ; preds = %311, %69
  store i32 1, i32* %6, align 4
  br label %313

313:                                              ; preds = %312, %294, %276, %159, %143
  %314 = load i32, i32* %6, align 4
  ret i32 %314
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.ref_store* @get_submodule_ref_store(i8*) #1

declare dso_local %struct.ref_store* @get_main_ref_store(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @handle_refs(%struct.ref_store*, %struct.rev_info*, i32, i32) #1

declare dso_local i32 @init_all_refs_cb(%struct.all_refs_cb*, %struct.rev_info*, i32) #1

declare dso_local i32 @other_head_refs(i32, %struct.all_refs_cb*) #1

declare dso_local i32 @clear_ref_exclusion(i32*) #1

declare dso_local i32 @read_bisect_terms(i32*, i32*) #1

declare dso_local i32 @parse_long_opt(i8*, i8**, i8**) #1

declare dso_local i32 @for_each_glob_ref(i32, i8*, %struct.all_refs_cb*) #1

declare dso_local i32 @add_ref_exclusion(i32*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @for_each_glob_ref_in(i32, i8*, i8*, %struct.all_refs_cb*) #1

declare dso_local i32 @add_reflogs_to_pending(%struct.rev_info*, i32) #1

declare dso_local i32 @add_index_objects_to_pending(%struct.rev_info*, i32) #1

declare dso_local i32 @add_alternate_refs_to_pending(%struct.rev_info*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
