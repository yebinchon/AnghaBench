; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_data_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_25__, i32, i32, i32, i32, %struct.TYPE_26__*, i32, i32, i32, i32* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@GIT_ERROR_CHECKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot checkout nothing\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@GIT_CHECKOUT_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"git_checkout_options\00", align 1
@GIT_DIR_MODE = common dso_local global i64 0, align 8
@GIT_MKDIR_VERIFY_DIR = common dso_local global i32 0, align 4
@GIT_CHECKOUT_NO_REFRESH = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_ECONFLICT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"unresolved conflicts exist in the index\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_SYMLINKS = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_FILEMODE = common dso_local global i32 0, align 4
@GIT_EUNBORNBRANCH = common dso_local global i32 0, align 4
@GIT_CHECKOUT_CONFLICT_STYLE_MERGE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_CONFLICT_STYLE_DIFF3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"merge.conflictstyle\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"diff3\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"unknown style '%s' given for 'merge.conflictstyle'\00", align 1
@git__strcmp_cb = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32*, %struct.TYPE_23__*)* @checkout_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_data_init(%struct.TYPE_24__* %0, i32* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @git_iterator_owner(i32* %13)
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = call i32 @memset(%struct.TYPE_24__* %15, i32 0, i32 112)
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %21 = call i32 (i32, i8*, ...) @git_error_set(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %419

22:                                               ; preds = %3
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = icmp ne %struct.TYPE_23__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25, %22
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @git_repository__ensure_not_bare(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %419

36:                                               ; preds = %30, %25
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 16
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %44 = load i32, i32* @GIT_CHECKOUT_OPTIONS_VERSION, align 4
  %45 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_23__* %43, i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %47 = icmp ne %struct.TYPE_23__* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %36
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 7
  %51 = load i32, i32* @GIT_CHECKOUT_OPTIONS_VERSION, align 4
  %52 = call i32 @GIT_INIT_STRUCTURE(%struct.TYPE_25__* %50, i32 %51)
  br label %58

53:                                               ; preds = %36
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = call i32 @memmove(%struct.TYPE_25__* %55, %struct.TYPE_23__* %56, i32 4)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @git_repository_workdir(i32* %65)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  br label %89

70:                                               ; preds = %58
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @git_path_isdir(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* @GIT_DIR_MODE, align 8
  %84 = load i32, i32* @GIT_MKDIR_VERIFY_DIR, align 4
  %85 = call i32 @checkout_mkdir(%struct.TYPE_24__* %78, i32 %82, i32* null, i64 %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %411

88:                                               ; preds = %77, %70
  br label %89

89:                                               ; preds = %88, %64
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 12
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @git_repository_index(%struct.TYPE_26__** %91, i32* %94)
  store i32 %95, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %411

98:                                               ; preds = %89
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GIT_CHECKOUT_NO_REFRESH, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %162

106:                                              ; preds = %98
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @git_repository_config__weakptr(i32** %10, i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %411

111:                                              ; preds = %106
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 12
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %113, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = call %struct.TYPE_26__* @git_iterator_index(i32* %115)
  %117 = icmp ne %struct.TYPE_26__* %114, %116
  br i1 %117, label %118, label %161

118:                                              ; preds = %111
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 12
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %128, align 8
  %130 = call i32 @git_index_read(%struct.TYPE_26__* %129, i32 0)
  store i32 %130, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %411

133:                                              ; preds = %126
  br label %152

134:                                              ; preds = %118
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 12
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = call i64 @git_index_has_conflicts(%struct.TYPE_26__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @GIT_ECONFLICT, align 4
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %143 = call i32 (i32, i8*, ...) @git_error_set(i32 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %411

144:                                              ; preds = %134
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 12
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %146, align 8
  %148 = call i32 @git_index_read_safely(%struct.TYPE_26__* %147)
  store i32 %148, i32* %8, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %411

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %133
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 12
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = call i32 @git_index_name_clear(%struct.TYPE_26__* %155)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 12
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %158, align 8
  %160 = call i32 @git_index_reuc_clear(%struct.TYPE_26__* %159)
  br label %161

161:                                              ; preds = %152, %111
  br label %162

162:                                              ; preds = %161, %98
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %162
  %171 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %172 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %170, %162
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 12
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %179
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %194, %186, %179
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %201
  %214 = load i64, i64* @GIT_DIR_MODE, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 6
  store i64 %214, i64* %217, align 8
  br label %218

218:                                              ; preds = %213, %201
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %233, label %224

224:                                              ; preds = %218
  %225 = load i32, i32* @O_CREAT, align 4
  %226 = load i32, i32* @O_TRUNC, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @O_WRONLY, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 7
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  br label %233

233:                                              ; preds = %224, %218
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 5
  %237 = call i32 @git_pathspec_prefix(i32* %236)
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 15
  store i32 %237, i32* %239, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 14
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* @GIT_CONFIGMAP_SYMLINKS, align 4
  %244 = call i32 @git_repository__configmap_lookup(i32* %241, i32* %242, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  br label %411

247:                                              ; preds = %233
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 13
  %250 = load i32*, i32** %9, align 8
  %251 = load i32, i32* @GIT_CONFIGMAP_FILEMODE, align 4
  %252 = call i32 @git_repository__configmap_lookup(i32* %249, i32* %250, i32 %251)
  store i32 %252, i32* %8, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %411

255:                                              ; preds = %247
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 7
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %293, label %261

261:                                              ; preds = %255
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 7
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %293, label %267

267:                                              ; preds = %261
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 1
  store i32 1, i32* %269, align 4
  store i32 0, i32* %8, align 4
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 12
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %267
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 3
  %280 = load i32*, i32** %9, align 8
  %281 = call i32 @checkout_lookup_head_tree(i32* %279, i32* %280)
  store i32 %281, i32* %8, align 4
  br label %282

282:                                              ; preds = %276, %267
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @GIT_EUNBORNBRANCH, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  store i32 0, i32* %8, align 4
  %287 = call i32 (...) @git_error_clear()
  br label %288

288:                                              ; preds = %286, %282
  %289 = load i32, i32* %8, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  br label %411

292:                                              ; preds = %288
  br label %293

293:                                              ; preds = %292, %261, %255
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 7
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @GIT_CHECKOUT_CONFLICT_STYLE_MERGE, align 4
  %299 = load i32, i32* @GIT_CHECKOUT_CONFLICT_STYLE_DIFF3, align 4
  %300 = or i32 %298, %299
  %301 = and i32 %297, %300
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %360

303:                                              ; preds = %293
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  store i32* null, i32** %12, align 8
  %304 = load i32*, i32** %9, align 8
  %305 = call i32 @git_repository_config__weakptr(i32** %12, i32* %304)
  store i32 %305, i32* %8, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %303
  %308 = load i32*, i32** %12, align 8
  %309 = call i32 @git_config_get_entry(%struct.TYPE_22__** %11, i32* %308, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 %309, i32* %8, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %307
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* @GIT_ENOTFOUND, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %311, %307, %303
  br label %357

316:                                              ; preds = %311
  %317 = load i32, i32* %8, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  br label %411

320:                                              ; preds = %316
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @strcmp(i32 %323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %320
  %327 = load i32, i32* @GIT_CHECKOUT_CONFLICT_STYLE_MERGE, align 4
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %327
  store i32 %332, i32* %330, align 8
  br label %355

333:                                              ; preds = %320
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @strcmp(i32 %336, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %333
  %340 = load i32, i32* @GIT_CHECKOUT_CONFLICT_STYLE_DIFF3, align 4
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 7
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %340
  store i32 %345, i32* %343, align 8
  br label %354

346:                                              ; preds = %333
  %347 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i32, i8*, ...) @git_error_set(i32 %347, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %350)
  store i32 -1, i32* %8, align 4
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %353 = call i32 @git_config_entry_free(%struct.TYPE_22__* %352)
  br label %411

354:                                              ; preds = %339
  br label %355

355:                                              ; preds = %354, %326
  br label %356

356:                                              ; preds = %355
  br label %357

357:                                              ; preds = %356, %315
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %359 = call i32 @git_config_entry_free(%struct.TYPE_22__* %358)
  br label %360

360:                                              ; preds = %357, %293
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 11
  %363 = call i32 @git_pool_init(i32* %362, i32 1)
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %364, i32 0, i32 10
  %366 = load i32*, i32** @git__strcmp_cb, align 8
  %367 = call i32 @git_vector_init(i32* %365, i32 0, i32* %366)
  store i32 %367, i32* %8, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %398, label %369

369:                                              ; preds = %360
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 9
  %372 = call i32 @git_vector_init(i32* %371, i32 0, i32* null)
  store i32 %372, i32* %8, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %398, label %374

374:                                              ; preds = %369
  %375 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 8
  %377 = call i32 @git_vector_init(i32* %376, i32 0, i32* null)
  store i32 %377, i32* %8, align 4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %398, label %379

379:                                              ; preds = %374
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %382, i32 0, i32 7
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @git_buf_puts(i32* %381, i32 %385)
  store i32 %386, i32* %8, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %398, label %388

388:                                              ; preds = %379
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %389, i32 0, i32 4
  %391 = call i32 @git_path_to_dir(i32* %390)
  store i32 %391, i32* %8, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %398, label %393

393:                                              ; preds = %388
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 6
  %396 = call i32 @git_strmap_new(i32* %395)
  store i32 %396, i32* %8, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %393, %388, %379, %374, %369, %360
  br label %411

399:                                              ; preds = %393
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 4
  %402 = call i32 @git_buf_len(i32* %401)
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 5
  store i32 %402, i32* %404, align 8
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 3
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = call i32 @git_attr_session__init(i32* %406, i32* %409)
  br label %411

411:                                              ; preds = %399, %398, %346, %319, %291, %254, %246, %150, %140, %132, %110, %97, %87
  %412 = load i32, i32* %8, align 4
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %411
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %416 = call i32 @checkout_data_clear(%struct.TYPE_24__* %415)
  br label %417

417:                                              ; preds = %414, %411
  %418 = load i32, i32* %8, align 4
  store i32 %418, i32* %4, align 4
  br label %419

419:                                              ; preds = %417, %34, %19
  %420 = load i32, i32* %4, align 4
  ret i32 %420
}

declare dso_local i32* @git_iterator_owner(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @GIT_INIT_STRUCTURE(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_25__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @git_repository_workdir(i32*) #1

declare dso_local i32 @git_path_isdir(i32) #1

declare dso_local i32 @checkout_mkdir(%struct.TYPE_24__*, i32, i32*, i64, i32) #1

declare dso_local i32 @git_repository_index(%struct.TYPE_26__**, i32*) #1

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #1

declare dso_local %struct.TYPE_26__* @git_iterator_index(i32*) #1

declare dso_local i32 @git_index_read(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @git_index_has_conflicts(%struct.TYPE_26__*) #1

declare dso_local i32 @git_index_read_safely(%struct.TYPE_26__*) #1

declare dso_local i32 @git_index_name_clear(%struct.TYPE_26__*) #1

declare dso_local i32 @git_index_reuc_clear(%struct.TYPE_26__*) #1

declare dso_local i32 @git_pathspec_prefix(i32*) #1

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #1

declare dso_local i32 @checkout_lookup_head_tree(i32*, i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_config_get_entry(%struct.TYPE_22__**, i32*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @git_config_entry_free(%struct.TYPE_22__*) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i32 @git_vector_init(i32*, i32, i32*) #1

declare dso_local i32 @git_buf_puts(i32*, i32) #1

declare dso_local i32 @git_path_to_dir(i32*) #1

declare dso_local i32 @git_strmap_new(i32*) #1

declare dso_local i32 @git_buf_len(i32*) #1

declare dso_local i32 @git_attr_session__init(i32*, i32*) #1

declare dso_local i32 @checkout_data_clear(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
