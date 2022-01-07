; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_log.c_lg2_log.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_log.c_lg2_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8**, i32 }
%struct.log_state = type { i32, i32*, i32 }
%struct.log_options = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"Building pathspec\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to look up commit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Get tree\00", align 1
@GIT_PATHSPEC_NO_MATCH_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Get parent\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Tree for parent\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Diff commit with parent\00", align 1
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@diff_output = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Displaying diff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_log(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.log_state, align 8
  %13 = alloca %struct.log_options, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i8**, i8*** %6, align 8
  %27 = call i32 @parse_options(%struct.log_state* %12, %struct.log_options* %13, i32 %25, i8** %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds %struct.log_state, %struct.log_state* %12, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i8** %33, i8*** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %47 = call i32 @git_pathspec_new(i32** %17, %struct.TYPE_7__* %46)
  %48 = call i32 @check_lg2(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %49

49:                                               ; preds = %45, %3
  %50 = getelementptr inbounds %struct.log_state, %struct.log_state* %12, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 @add_revision(%struct.log_state* %12, i32* null)
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %227, %55
  %57 = getelementptr inbounds %struct.log_state, %struct.log_state* %12, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @git_revwalk_next(i32* %15, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %230

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.log_state, %struct.log_state* %12, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @git_commit_lookup(i32** %16, i32* %64, i32* %15)
  %66 = call i32 @check_lg2(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %67 = load i32*, i32** %16, align 8
  %68 = call i64 @git_commit_parentcount(i32* %67)
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %227

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %227

85:                                               ; preds = %79, %75
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @git_commit_tree(i32** %19, i32* %95)
  %97 = call i32 @check_lg2(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %98 = load i32*, i32** %19, align 8
  %99 = load i32, i32* @GIT_PATHSPEC_NO_MATCH_ERROR, align 4
  %100 = load i32*, i32** %17, align 8
  %101 = call i64 @git_pathspec_match_tree(i32* null, i32* %98, i32 %99, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  store i32 1, i32* %18, align 4
  br label %104

104:                                              ; preds = %103, %94
  %105 = load i32*, i32** %19, align 8
  %106 = call i32 @git_tree_free(i32* %105)
  br label %135

107:                                              ; preds = %90
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32*, i32** %16, align 8
  %112 = call i64 @match_with_parent(i32* %111, i32 0, %struct.TYPE_6__* %14)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 1
  store i32 %115, i32* %18, align 4
  br label %134

116:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %130, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %117
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i64 @match_with_parent(i32* %122, i32 %123, %struct.TYPE_6__* %14)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %126, %121
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %117

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %133, %110
  br label %135

135:                                              ; preds = %134, %104
  %136 = load i32, i32* %18, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %227

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %85
  %141 = load i32*, i32** %16, align 8
  %142 = call i32 @git_commit_author(i32* %141)
  %143 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @signature_matches(i32 %142, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  br label %227

148:                                              ; preds = %140
  %149 = load i32*, i32** %16, align 8
  %150 = call i32 @git_commit_committer(i32* %149)
  %151 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @signature_matches(i32 %150, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  br label %227

156:                                              ; preds = %148
  %157 = load i32*, i32** %16, align 8
  %158 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @log_message_matches(i32* %157, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  br label %227

163:                                              ; preds = %156
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  %166 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %227

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  %177 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i32*, i32** %16, align 8
  %182 = call i32 @git_commit_free(i32* %181)
  br label %230

183:                                              ; preds = %174, %170
  %184 = load i32*, i32** %16, align 8
  %185 = call i32 @print_commit(i32* %184, %struct.log_options* %13)
  %186 = getelementptr inbounds %struct.log_options, %struct.log_options* %13, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %226

189:                                              ; preds = %183
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  %190 = load i32, i32* %10, align 4
  %191 = icmp sgt i32 %190, 1
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %227

193:                                              ; preds = %189
  %194 = load i32*, i32** %16, align 8
  %195 = call i32 @git_commit_tree(i32** %21, i32* %194)
  %196 = call i32 @check_lg2(i32 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %208

199:                                              ; preds = %193
  %200 = load i32*, i32** %16, align 8
  %201 = call i32 @git_commit_parent(i32** %23, i32* %200, i32 0)
  %202 = call i32 @check_lg2(i32 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %203 = load i32*, i32** %23, align 8
  %204 = call i32 @git_commit_tree(i32** %20, i32* %203)
  %205 = call i32 @check_lg2(i32 %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %206 = load i32*, i32** %23, align 8
  %207 = call i32 @git_commit_free(i32* %206)
  br label %208

208:                                              ; preds = %199, %193
  %209 = load i32*, i32** %16, align 8
  %210 = call i32 @git_commit_owner(i32* %209)
  %211 = load i32*, i32** %20, align 8
  %212 = load i32*, i32** %21, align 8
  %213 = call i32 @git_diff_tree_to_tree(i32** %22, i32 %210, i32* %211, i32* %212, %struct.TYPE_6__* %14)
  %214 = call i32 @check_lg2(i32 %213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %215 = load i32*, i32** %22, align 8
  %216 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %217 = load i32, i32* @diff_output, align 4
  %218 = call i32 @git_diff_print(i32* %215, i32 %216, i32 %217, i32* null)
  %219 = call i32 @check_lg2(i32 %218, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %220 = load i32*, i32** %22, align 8
  %221 = call i32 @git_diff_free(i32* %220)
  %222 = load i32*, i32** %20, align 8
  %223 = call i32 @git_tree_free(i32* %222)
  %224 = load i32*, i32** %21, align 8
  %225 = call i32 @git_tree_free(i32* %224)
  br label %226

226:                                              ; preds = %208, %183
  br label %227

227:                                              ; preds = %226, %192, %169, %162, %155, %147, %138, %84, %74
  %228 = load i32*, i32** %16, align 8
  %229 = call i32 @git_commit_free(i32* %228)
  br label %56

230:                                              ; preds = %180, %56
  %231 = load i32*, i32** %17, align 8
  %232 = call i32 @git_pathspec_free(i32* %231)
  %233 = getelementptr inbounds %struct.log_state, %struct.log_state* %12, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @git_revwalk_free(i32 %234)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @parse_options(%struct.log_state*, %struct.log_options*, i32, i8**) #2

declare dso_local i32 @check_lg2(i32, i8*, i32*) #2

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_7__*) #2

declare dso_local i32 @add_revision(%struct.log_state*, i32*) #2

declare dso_local i32 @git_revwalk_next(i32*, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32*) #2

declare dso_local i64 @git_commit_parentcount(i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i64 @git_pathspec_match_tree(i32*, i32*, i32, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i64 @match_with_parent(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @signature_matches(i32, i32) #2

declare dso_local i32 @git_commit_author(i32*) #2

declare dso_local i32 @git_commit_committer(i32*) #2

declare dso_local i32 @log_message_matches(i32*, i32) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @print_commit(i32*, %struct.log_options*) #2

declare dso_local i32 @git_commit_parent(i32**, i32*, i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @git_commit_owner(i32*) #2

declare dso_local i32 @git_diff_print(i32*, i32, i32, i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_pathspec_free(i32*) #2

declare dso_local i32 @git_revwalk_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
