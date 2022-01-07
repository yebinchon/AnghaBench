; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_handle_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_handle_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--exec-path\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_query_\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"--html-path\00", align 1
@GIT_HTML_PATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"--man-path\00", align 1
@GIT_MAN_PATH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"--info-path\00", align 1
@GIT_INFO_PATH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"--paginate\00", align 1
@use_pager = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"--no-pager\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"--no-replace-objects\00", align 1
@read_replace_refs = common dso_local global i64 0, align 8
@NO_REPLACE_OBJECTS_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"no directory given for --git-dir\0A\00", align 1
@git_usage_string = common dso_local global i32 0, align 4
@GIT_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"--git-dir=\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"--namespace\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"no namespace given for --namespace\0A\00", align 1
@GIT_NAMESPACE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"--namespace=\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"--work-tree\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"no directory given for --work-tree\0A\00", align 1
@GIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"--work-tree=\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"--super-prefix\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"no prefix given for --super-prefix\0A\00", align 1
@GIT_SUPER_PREFIX_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"--super-prefix=\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"--bare\00", align 1
@is_bare_repository_cfg = common dso_local global i32 0, align 4
@GIT_IMPLICIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"-c expects a configuration string\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"--literal-pathspecs\00", align 1
@GIT_LITERAL_PATHSPECS_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [23 x i8] c"--no-literal-pathspecs\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"--glob-pathspecs\00", align 1
@GIT_GLOB_PATHSPECS_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"--noglob-pathspecs\00", align 1
@GIT_NOGLOB_PATHSPECS_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [18 x i8] c"--icase-pathspecs\00", align 1
@GIT_ICASE_PATHSPECS_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [20 x i8] c"--no-optional-locks\00", align 1
@GIT_OPTIONAL_LOCKS_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [15 x i8] c"--shallow-file\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"no directory given for -C\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"cannot change to '%s'\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"--list-cmds=\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"parseopt\00", align 1
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@NO_PARSEOPT = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"unknown option: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8***, i32*, i32*)* @handle_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_options(i8*** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8***, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.string_list, align 8
  %11 = alloca i32, align 4
  store i8*** %0, i8**** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i8***, i8**** %4, align 8
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %7, align 8
  br label %14

14:                                               ; preds = %557, %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %564

18:                                               ; preds = %14
  %19 = load i8***, i8**** %4, align 8
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %564

29:                                               ; preds = %18
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29
  br label %564

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @skip_prefix(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 61
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i32 @git_set_exec_path(i8* %49)
  br label %56

51:                                               ; preds = %42
  %52 = call i32 (...) @git_exec_path()
  %53 = call i32 @puts(i32 %52)
  %54 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @exit(i32 0) #4
  unreachable

56:                                               ; preds = %47
  br label %557

57:                                               ; preds = %38
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @GIT_HTML_PATH, align 4
  %63 = call i32 @system_path(i32 %62)
  %64 = call i32 @puts(i32 %63)
  %65 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 @exit(i32 0) #4
  unreachable

67:                                               ; preds = %57
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @GIT_MAN_PATH, align 4
  %73 = call i32 @system_path(i32 %72)
  %74 = call i32 @puts(i32 %73)
  %75 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @exit(i32 0) #4
  unreachable

77:                                               ; preds = %67
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @GIT_INFO_PATH, align 4
  %83 = call i32 @system_path(i32 %82)
  %84 = call i32 @puts(i32 %83)
  %85 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @exit(i32 0) #4
  unreachable

87:                                               ; preds = %77
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91, %87
  store i32 1, i32* @use_pager, align 4
  br label %553

96:                                               ; preds = %91
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100, %96
  store i32 0, i32* @use_pager, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %6, align 8
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %104
  br label %552

110:                                              ; preds = %100
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  store i64 0, i64* @read_replace_refs, align 8
  %115 = load i32, i32* @NO_REPLACE_OBJECTS_ENVIRONMENT, align 4
  %116 = call i32 @setenv(i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %117 = load i32*, i32** %6, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32*, i32** %6, align 8
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %119, %114
  br label %551

122:                                              ; preds = %110
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %122
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* @stderr, align 4
  %132 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* %132)
  %134 = load i32, i32* @git_usage_string, align 4
  %135 = call i32 @usage(i32 %134)
  br label %136

136:                                              ; preds = %130, %126
  %137 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %138 = load i8***, i8**** %4, align 8
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @setenv(i32 %137, i8* %141, i32 1)
  %143 = load i32*, i32** %6, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32*, i32** %6, align 8
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %145, %136
  %148 = load i8***, i8**** %4, align 8
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i32 1
  store i8** %150, i8*** %148, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 4
  br label %550

154:                                              ; preds = %122
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @skip_prefix(i8* %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8** %8)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @setenv(i32 %159, i8* %160, i32 1)
  %162 = load i32*, i32** %6, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32*, i32** %6, align 8
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %164, %158
  br label %549

167:                                              ; preds = %154
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %199, label %171

171:                                              ; preds = %167
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32, i32* @stderr, align 4
  %177 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* %177)
  %179 = load i32, i32* @git_usage_string, align 4
  %180 = call i32 @usage(i32 %179)
  br label %181

181:                                              ; preds = %175, %171
  %182 = load i32, i32* @GIT_NAMESPACE_ENVIRONMENT, align 4
  %183 = load i8***, i8**** %4, align 8
  %184 = load i8**, i8*** %183, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @setenv(i32 %182, i8* %186, i32 1)
  %188 = load i32*, i32** %6, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32*, i32** %6, align 8
  store i32 1, i32* %191, align 4
  br label %192

192:                                              ; preds = %190, %181
  %193 = load i8***, i8**** %4, align 8
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i32 1
  store i8** %195, i8*** %193, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 4
  br label %548

199:                                              ; preds = %167
  %200 = load i8*, i8** %8, align 8
  %201 = call i64 @skip_prefix(i8* %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %8)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = load i32, i32* @GIT_NAMESPACE_ENVIRONMENT, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @setenv(i32 %204, i8* %205, i32 1)
  %207 = load i32*, i32** %6, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = load i32*, i32** %6, align 8
  store i32 1, i32* %210, align 4
  br label %211

211:                                              ; preds = %209, %203
  br label %547

212:                                              ; preds = %199
  %213 = load i8*, i8** %8, align 8
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %244, label %216

216:                                              ; preds = %212
  %217 = load i32*, i32** %5, align 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %218, 2
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* @stderr, align 4
  %222 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* %222)
  %224 = load i32, i32* @git_usage_string, align 4
  %225 = call i32 @usage(i32 %224)
  br label %226

226:                                              ; preds = %220, %216
  %227 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %228 = load i8***, i8**** %4, align 8
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @setenv(i32 %227, i8* %231, i32 1)
  %233 = load i32*, i32** %6, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %226
  %236 = load i32*, i32** %6, align 8
  store i32 1, i32* %236, align 4
  br label %237

237:                                              ; preds = %235, %226
  %238 = load i8***, i8**** %4, align 8
  %239 = load i8**, i8*** %238, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i32 1
  store i8** %240, i8*** %238, align 8
  %241 = load i32*, i32** %5, align 8
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %241, align 4
  br label %546

244:                                              ; preds = %212
  %245 = load i8*, i8** %8, align 8
  %246 = call i64 @skip_prefix(i8* %245, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8** %8)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %250 = load i8*, i8** %8, align 8
  %251 = call i32 @setenv(i32 %249, i8* %250, i32 1)
  %252 = load i32*, i32** %6, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = load i32*, i32** %6, align 8
  store i32 1, i32* %255, align 4
  br label %256

256:                                              ; preds = %254, %248
  br label %545

257:                                              ; preds = %244
  %258 = load i8*, i8** %8, align 8
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %289, label %261

261:                                              ; preds = %257
  %262 = load i32*, i32** %5, align 8
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  %266 = load i32, i32* @stderr, align 4
  %267 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %268 = call i32 (i32, i8*, ...) @fprintf(i32 %266, i8* %267)
  %269 = load i32, i32* @git_usage_string, align 4
  %270 = call i32 @usage(i32 %269)
  br label %271

271:                                              ; preds = %265, %261
  %272 = load i32, i32* @GIT_SUPER_PREFIX_ENVIRONMENT, align 4
  %273 = load i8***, i8**** %4, align 8
  %274 = load i8**, i8*** %273, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 1
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @setenv(i32 %272, i8* %276, i32 1)
  %278 = load i32*, i32** %6, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %271
  %281 = load i32*, i32** %6, align 8
  store i32 1, i32* %281, align 4
  br label %282

282:                                              ; preds = %280, %271
  %283 = load i8***, i8**** %4, align 8
  %284 = load i8**, i8*** %283, align 8
  %285 = getelementptr inbounds i8*, i8** %284, i32 1
  store i8** %285, i8*** %283, align 8
  %286 = load i32*, i32** %5, align 8
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %286, align 4
  br label %544

289:                                              ; preds = %257
  %290 = load i8*, i8** %8, align 8
  %291 = call i64 @skip_prefix(i8* %290, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8** %8)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %289
  %294 = load i32, i32* @GIT_SUPER_PREFIX_ENVIRONMENT, align 4
  %295 = load i8*, i8** %8, align 8
  %296 = call i32 @setenv(i32 %294, i8* %295, i32 1)
  %297 = load i32*, i32** %6, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %293
  %300 = load i32*, i32** %6, align 8
  store i32 1, i32* %300, align 4
  br label %301

301:                                              ; preds = %299, %293
  br label %543

302:                                              ; preds = %289
  %303 = load i8*, i8** %8, align 8
  %304 = call i32 @strcmp(i8* %303, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %320, label %306

306:                                              ; preds = %302
  %307 = call i8* (...) @xgetcwd()
  store i8* %307, i8** %9, align 8
  store i32 1, i32* @is_bare_repository_cfg, align 4
  %308 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %309 = load i8*, i8** %9, align 8
  %310 = call i32 @setenv(i32 %308, i8* %309, i32 0)
  %311 = load i8*, i8** %9, align 8
  %312 = call i32 @free(i8* %311)
  %313 = load i32, i32* @GIT_IMPLICIT_WORK_TREE_ENVIRONMENT, align 4
  %314 = call i32 @setenv(i32 %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %315 = load i32*, i32** %6, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %306
  %318 = load i32*, i32** %6, align 8
  store i32 1, i32* %318, align 4
  br label %319

319:                                              ; preds = %317, %306
  br label %542

320:                                              ; preds = %302
  %321 = load i8*, i8** %8, align 8
  %322 = call i32 @strcmp(i8* %321, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %346, label %324

324:                                              ; preds = %320
  %325 = load i32*, i32** %5, align 8
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %326, 2
  br i1 %327, label %328, label %334

328:                                              ; preds = %324
  %329 = load i32, i32* @stderr, align 4
  %330 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0))
  %331 = call i32 (i32, i8*, ...) @fprintf(i32 %329, i8* %330)
  %332 = load i32, i32* @git_usage_string, align 4
  %333 = call i32 @usage(i32 %332)
  br label %334

334:                                              ; preds = %328, %324
  %335 = load i8***, i8**** %4, align 8
  %336 = load i8**, i8*** %335, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 1
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @git_config_push_parameter(i8* %338)
  %340 = load i8***, i8**** %4, align 8
  %341 = load i8**, i8*** %340, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i32 1
  store i8** %342, i8*** %340, align 8
  %343 = load i32*, i32** %5, align 8
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %343, align 4
  br label %541

346:                                              ; preds = %320
  %347 = load i8*, i8** %8, align 8
  %348 = call i32 @strcmp(i8* %347, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0))
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %358, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* @GIT_LITERAL_PATHSPECS_ENVIRONMENT, align 4
  %352 = call i32 @setenv(i32 %351, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %353 = load i32*, i32** %6, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = load i32*, i32** %6, align 8
  store i32 1, i32* %356, align 4
  br label %357

357:                                              ; preds = %355, %350
  br label %540

358:                                              ; preds = %346
  %359 = load i8*, i8** %8, align 8
  %360 = call i32 @strcmp(i8* %359, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* @GIT_LITERAL_PATHSPECS_ENVIRONMENT, align 4
  %364 = call i32 @setenv(i32 %363, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %365 = load i32*, i32** %6, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %362
  %368 = load i32*, i32** %6, align 8
  store i32 1, i32* %368, align 4
  br label %369

369:                                              ; preds = %367, %362
  br label %539

370:                                              ; preds = %358
  %371 = load i8*, i8** %8, align 8
  %372 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %382, label %374

374:                                              ; preds = %370
  %375 = load i32, i32* @GIT_GLOB_PATHSPECS_ENVIRONMENT, align 4
  %376 = call i32 @setenv(i32 %375, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %377 = load i32*, i32** %6, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %381

379:                                              ; preds = %374
  %380 = load i32*, i32** %6, align 8
  store i32 1, i32* %380, align 4
  br label %381

381:                                              ; preds = %379, %374
  br label %538

382:                                              ; preds = %370
  %383 = load i8*, i8** %8, align 8
  %384 = call i32 @strcmp(i8* %383, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %394, label %386

386:                                              ; preds = %382
  %387 = load i32, i32* @GIT_NOGLOB_PATHSPECS_ENVIRONMENT, align 4
  %388 = call i32 @setenv(i32 %387, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %389 = load i32*, i32** %6, align 8
  %390 = icmp ne i32* %389, null
  br i1 %390, label %391, label %393

391:                                              ; preds = %386
  %392 = load i32*, i32** %6, align 8
  store i32 1, i32* %392, align 4
  br label %393

393:                                              ; preds = %391, %386
  br label %537

394:                                              ; preds = %382
  %395 = load i8*, i8** %8, align 8
  %396 = call i32 @strcmp(i8* %395, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %406, label %398

398:                                              ; preds = %394
  %399 = load i32, i32* @GIT_ICASE_PATHSPECS_ENVIRONMENT, align 4
  %400 = call i32 @setenv(i32 %399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  %401 = load i32*, i32** %6, align 8
  %402 = icmp ne i32* %401, null
  br i1 %402, label %403, label %405

403:                                              ; preds = %398
  %404 = load i32*, i32** %6, align 8
  store i32 1, i32* %404, align 4
  br label %405

405:                                              ; preds = %403, %398
  br label %536

406:                                              ; preds = %394
  %407 = load i8*, i8** %8, align 8
  %408 = call i32 @strcmp(i8* %407, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0))
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %418, label %410

410:                                              ; preds = %406
  %411 = load i32, i32* @GIT_OPTIONAL_LOCKS_ENVIRONMENT, align 4
  %412 = call i32 @setenv(i32 %411, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %413 = load i32*, i32** %6, align 8
  %414 = icmp ne i32* %413, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %410
  %416 = load i32*, i32** %6, align 8
  store i32 1, i32* %416, align 4
  br label %417

417:                                              ; preds = %415, %410
  br label %535

418:                                              ; preds = %406
  %419 = load i8*, i8** %8, align 8
  %420 = call i32 @strcmp(i8* %419, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %440, label %422

422:                                              ; preds = %418
  %423 = load i8***, i8**** %4, align 8
  %424 = load i8**, i8*** %423, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i32 1
  store i8** %425, i8*** %423, align 8
  %426 = load i32*, i32** %5, align 8
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, -1
  store i32 %428, i32* %426, align 4
  %429 = load i32, i32* @the_repository, align 4
  %430 = load i8***, i8**** %4, align 8
  %431 = load i8**, i8*** %430, align 8
  %432 = getelementptr inbounds i8*, i8** %431, i64 0
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 @set_alternate_shallow_file(i32 %429, i8* %433, i32 1)
  %435 = load i32*, i32** %6, align 8
  %436 = icmp ne i32* %435, null
  br i1 %436, label %437, label %439

437:                                              ; preds = %422
  %438 = load i32*, i32** %6, align 8
  store i32 1, i32* %438, align 4
  br label %439

439:                                              ; preds = %437, %422
  br label %534

440:                                              ; preds = %418
  %441 = load i8*, i8** %8, align 8
  %442 = call i32 @strcmp(i8* %441, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %488, label %444

444:                                              ; preds = %440
  %445 = load i32*, i32** %5, align 8
  %446 = load i32, i32* %445, align 4
  %447 = icmp slt i32 %446, 2
  br i1 %447, label %448, label %454

448:                                              ; preds = %444
  %449 = load i32, i32* @stderr, align 4
  %450 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0))
  %451 = call i32 (i32, i8*, ...) @fprintf(i32 %449, i8* %450)
  %452 = load i32, i32* @git_usage_string, align 4
  %453 = call i32 @usage(i32 %452)
  br label %454

454:                                              ; preds = %448, %444
  %455 = load i8***, i8**** %4, align 8
  %456 = load i8**, i8*** %455, align 8
  %457 = getelementptr inbounds i8*, i8** %456, i64 1
  %458 = load i8*, i8** %457, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 0
  %460 = load i8, i8* %459, align 1
  %461 = icmp ne i8 %460, 0
  br i1 %461, label %462, label %481

462:                                              ; preds = %454
  %463 = load i8***, i8**** %4, align 8
  %464 = load i8**, i8*** %463, align 8
  %465 = getelementptr inbounds i8*, i8** %464, i64 1
  %466 = load i8*, i8** %465, align 8
  %467 = call i64 @chdir(i8* %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %462
  %470 = load i8***, i8**** %4, align 8
  %471 = load i8**, i8*** %470, align 8
  %472 = getelementptr inbounds i8*, i8** %471, i64 1
  %473 = load i8*, i8** %472, align 8
  %474 = call i32 @die_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i8* %473)
  br label %475

475:                                              ; preds = %469, %462
  %476 = load i32*, i32** %6, align 8
  %477 = icmp ne i32* %476, null
  br i1 %477, label %478, label %480

478:                                              ; preds = %475
  %479 = load i32*, i32** %6, align 8
  store i32 1, i32* %479, align 4
  br label %480

480:                                              ; preds = %478, %475
  br label %481

481:                                              ; preds = %480, %454
  %482 = load i8***, i8**** %4, align 8
  %483 = load i8**, i8*** %482, align 8
  %484 = getelementptr inbounds i8*, i8** %483, i32 1
  store i8** %484, i8*** %482, align 8
  %485 = load i32*, i32** %5, align 8
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %486, -1
  store i32 %487, i32* %485, align 4
  br label %533

488:                                              ; preds = %440
  %489 = load i8*, i8** %8, align 8
  %490 = call i64 @skip_prefix(i8* %489, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8** %8)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %525

492:                                              ; preds = %488
  %493 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %494 = load i8*, i8** %8, align 8
  %495 = call i32 @strcmp(i8* %494, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %521, label %497

497:                                              ; preds = %492
  %498 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %498, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %499 = load i32, i32* @NO_PARSEOPT, align 4
  %500 = call i32 @list_builtins(%struct.string_list* %10, i32 %499)
  store i32 0, i32* %11, align 4
  br label %501

501:                                              ; preds = %515, %497
  %502 = load i32, i32* %11, align 4
  %503 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp slt i32 %502, %504
  br i1 %505, label %506, label %518

506:                                              ; preds = %501
  %507 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 1
  %508 = load %struct.TYPE_2__*, %struct.TYPE_2__** %507, align 8
  %509 = load i32, i32* %11, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %511, i32 0, i32 0
  %513 = load i8*, i8** %512, align 8
  %514 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8* %513)
  br label %515

515:                                              ; preds = %506
  %516 = load i32, i32* %11, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %11, align 4
  br label %501

518:                                              ; preds = %501
  %519 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  %520 = call i32 @exit(i32 0) #4
  unreachable

521:                                              ; preds = %492
  %522 = load i8*, i8** %8, align 8
  %523 = call i32 @list_cmds(i8* %522)
  %524 = call i32 @exit(i32 %523) #4
  unreachable

525:                                              ; preds = %488
  %526 = load i32, i32* @stderr, align 4
  %527 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0))
  %528 = load i8*, i8** %8, align 8
  %529 = call i32 (i32, i8*, ...) @fprintf(i32 %526, i8* %527, i8* %528)
  %530 = load i32, i32* @git_usage_string, align 4
  %531 = call i32 @usage(i32 %530)
  br label %532

532:                                              ; preds = %525
  br label %533

533:                                              ; preds = %532, %481
  br label %534

534:                                              ; preds = %533, %439
  br label %535

535:                                              ; preds = %534, %417
  br label %536

536:                                              ; preds = %535, %405
  br label %537

537:                                              ; preds = %536, %393
  br label %538

538:                                              ; preds = %537, %381
  br label %539

539:                                              ; preds = %538, %369
  br label %540

540:                                              ; preds = %539, %357
  br label %541

541:                                              ; preds = %540, %334
  br label %542

542:                                              ; preds = %541, %319
  br label %543

543:                                              ; preds = %542, %301
  br label %544

544:                                              ; preds = %543, %282
  br label %545

545:                                              ; preds = %544, %256
  br label %546

546:                                              ; preds = %545, %237
  br label %547

547:                                              ; preds = %546, %211
  br label %548

548:                                              ; preds = %547, %192
  br label %549

549:                                              ; preds = %548, %166
  br label %550

550:                                              ; preds = %549, %147
  br label %551

551:                                              ; preds = %550, %121
  br label %552

552:                                              ; preds = %551, %109
  br label %553

553:                                              ; preds = %552, %95
  br label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  br label %556

556:                                              ; preds = %555
  br label %557

557:                                              ; preds = %556, %56
  %558 = load i8***, i8**** %4, align 8
  %559 = load i8**, i8*** %558, align 8
  %560 = getelementptr inbounds i8*, i8** %559, i32 1
  store i8** %560, i8*** %558, align 8
  %561 = load i32*, i32** %5, align 8
  %562 = load i32, i32* %561, align 4
  %563 = add nsw i32 %562, -1
  store i32 %563, i32* %561, align 4
  br label %14

564:                                              ; preds = %37, %28, %14
  %565 = load i8***, i8**** %4, align 8
  %566 = load i8**, i8*** %565, align 8
  %567 = load i8**, i8*** %7, align 8
  %568 = ptrtoint i8** %566 to i64
  %569 = ptrtoint i8** %567 to i64
  %570 = sub i64 %568, %569
  %571 = sdiv exact i64 %570, 8
  %572 = trunc i64 %571 to i32
  ret i32 %572
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @git_set_exec_path(i8*) #1

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @git_exec_path(...) #1

declare dso_local i32 @trace2_cmd_name(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @system_path(i32) #1

declare dso_local i32 @setenv(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @xgetcwd(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @git_config_push_parameter(i8*) #1

declare dso_local i32 @set_alternate_shallow_file(i32, i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @die_errno(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @list_builtins(%struct.string_list*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @list_cmds(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
