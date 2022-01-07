; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_generated_apply_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_generated_apply_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_17__, i32, i32* }
%struct.TYPE_17__ = type { i32, i32, i64, i8*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@GIT_DIFF_IGNORE_CASE = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_TYPECHANGE_TREES = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_TYPECHANGE = common dso_local global i32 0, align 4
@GIT_DIFF_SHOW_UNTRACKED_CONTENT = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_SYMLINKS = common dso_local global i32 0, align 4
@GIT_DIFFCAPS_HAS_SYMLINKS = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_IGNORESTAT = common dso_local global i32 0, align 4
@GIT_DIFFCAPS_IGNORE_STAT = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_FILEMODE = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_FILEMODE = common dso_local global i32 0, align 4
@GIT_DIFFCAPS_TRUST_MODE_BITS = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_TRUSTCTIME = common dso_local global i32 0, align 4
@GIT_DIFFCAPS_TRUST_CTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"diff.context\00", align 1
@GIT_DIFF_REVERSE = common dso_local global i32 0, align 4
@GIT_DIFF_UPDATE_INDEX = common dso_local global i32 0, align 4
@GIT_ITERATOR_TYPE_WORKDIR = common dso_local global i64 0, align 8
@GIT_ITERATOR_TYPE_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"diff.ignoresubmodules\00", align 1
@DIFF_OLD_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@DIFF_NEW_PREFIX_DEFAULT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"diff.noprefix\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"diff.mnemonicprefix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @diff_generated_apply_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_generated_apply_options(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* null, i32** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  store i32* %23, i32** %8, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %29 = call i32 @DIFF_FLAG_IS_SET(%struct.TYPE_15__* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = call i32 @memcpy(%struct.TYPE_17__* %32, %struct.TYPE_14__* %33, i32 32)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @DIFF_FLAG_SET(%struct.TYPE_15__* %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @git_pathspec__vinit(i32* %40, i32* %42, i32* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %384

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = load i32, i32* @GIT_DIFF_INCLUDE_TYPECHANGE_TREES, align 4
  %51 = call i32 @DIFF_FLAG_IS_SET(%struct.TYPE_15__* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @GIT_DIFF_INCLUDE_TYPECHANGE, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = load i32, i32* @GIT_DIFF_SHOW_UNTRACKED_CONTENT, align 4
  %64 = call i32 @DIFF_FLAG_IS_SET(%struct.TYPE_15__* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* @GIT_DIFF_INCLUDE_UNTRACKED, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %66, %61
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @git_repository_config_snapshot(i32** %6, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %384

80:                                               ; preds = %74
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @GIT_CONFIGMAP_SYMLINKS, align 4
  %83 = call i32 @git_config__configmap_lookup(i32* %9, i32* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @GIT_DIFFCAPS_HAS_SYMLINKS, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %85, %80
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* @GIT_CONFIGMAP_IGNORESTAT, align 4
  %97 = call i32 @git_config__configmap_lookup(i32* %9, i32* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* @GIT_DIFFCAPS_IGNORE_STAT, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %99, %94
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @GIT_DIFF_IGNORE_FILEMODE, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %108
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* @GIT_CONFIGMAP_FILEMODE, align 4
  %120 = call i32 @git_config__configmap_lookup(i32* %9, i32* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @GIT_DIFFCAPS_TRUST_MODE_BITS, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %122, %117, %108
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @GIT_CONFIGMAP_TRUSTCTIME, align 4
  %134 = call i32 @git_config__configmap_lookup(i32* %9, i32* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @GIT_DIFFCAPS_TRUST_CTIME, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %136, %131
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = icmp ne %struct.TYPE_14__* %146, null
  br i1 %147, label %162, label %148

148:                                              ; preds = %145
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @git_config__get_int_force(i32* %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  br label %156

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %154, %153 ], [ 3, %155 ]
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %156, %145
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %165 = call i32 @DIFF_FLAG_IS_SET(%struct.TYPE_15__* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %12, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  store i64 %175, i64* %178, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  store i64 %179, i64* %182, align 8
  br label %183

183:                                              ; preds = %167, %162
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = load i32, i32* @GIT_DIFF_UPDATE_INDEX, align 4
  %186 = call i32 @DIFF_FLAG_IS_SET(%struct.TYPE_15__* %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %225

188:                                              ; preds = %183
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @GIT_ITERATOR_TYPE_WORKDIR, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @GIT_ITERATOR_TYPE_WORKDIR, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %195, %188
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @GIT_ITERATOR_TYPE_INDEX, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %225, label %209

209:                                              ; preds = %202
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @GIT_ITERATOR_TYPE_INDEX, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %225, label %216

216:                                              ; preds = %209, %195
  %217 = load i32, i32* @GIT_DIFF_UPDATE_INDEX, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = and i32 %223, %218
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %216, %209, %202, %183
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp sle i64 %230, 0
  br i1 %231, label %232, label %252

232:                                              ; preds = %225
  %233 = load i32*, i32** %6, align 8
  %234 = call i32 @git_config__lookup_entry(%struct.TYPE_16__** %13, i32* %233, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %236 = icmp ne %struct.TYPE_16__* %235, null
  br i1 %236, label %237, label %249

237:                                              ; preds = %232
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @git_submodule_parse_ignore(i64* %241, i32 %244)
  %246 = icmp slt i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %237
  %248 = call i32 (...) @git_error_clear()
  br label %249

249:                                              ; preds = %247, %237, %232
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %251 = call i32 @git_config_entry_free(%struct.TYPE_16__* %250)
  br label %252

252:                                              ; preds = %249, %225
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 3
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %252
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 4
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %316, label %266

266:                                              ; preds = %259, %252
  %267 = load i8*, i8** @DIFF_OLD_PREFIX_DEFAULT, align 8
  store i8* %267, i8** %14, align 8
  %268 = load i8*, i8** @DIFF_NEW_PREFIX_DEFAULT, align 8
  store i8* %268, i8** %15, align 8
  %269 = load i32*, i32** %6, align 8
  %270 = call i64 @git_config__get_bool_force(i32* %269, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %266
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %289

273:                                              ; preds = %266
  %274 = load i32*, i32** %6, align 8
  %275 = call i64 @git_config__get_bool_force(i32* %274, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %273
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = call i8* @diff_mnemonic_prefix(i64 %281, i32 1)
  store i8* %282, i8** %14, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = call i8* @diff_mnemonic_prefix(i64 %286, i32 0)
  store i8* %287, i8** %15, align 8
  br label %288

288:                                              ; preds = %277, %273
  br label %289

289:                                              ; preds = %288, %272
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 3
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %302, label %296

296:                                              ; preds = %289
  %297 = load i8*, i8** %14, align 8
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 3
  store i8* %297, i8** %301, align 8
  br label %302

302:                                              ; preds = %296, %289
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 4
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %302
  %310 = load i8*, i8** %15, align 8
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 4
  store i8* %310, i8** %314, align 8
  br label %315

315:                                              ; preds = %309, %302
  br label %316

316:                                              ; preds = %315, %259
  %317 = load i32*, i32** %8, align 8
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 3
  %322 = load i8*, i8** %321, align 8
  %323 = call i8* @diff_strdup_prefix(i32* %317, i8* %322)
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 3
  store i8* %323, i8** %327, align 8
  %328 = load i32*, i32** %8, align 8
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 4
  %333 = load i8*, i8** %332, align 8
  %334 = call i8* @diff_strdup_prefix(i32* %328, i8* %333)
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 4
  store i8* %334, i8** %338, align 8
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %340 = load i32, i32* @GIT_DIFF_REVERSE, align 4
  %341 = call i32 @DIFF_FLAG_IS_SET(%struct.TYPE_15__* %339, i32 %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %363

343:                                              ; preds = %316
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 3
  %348 = load i8*, i8** %347, align 8
  store i8* %348, i8** %16, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 4
  %353 = load i8*, i8** %352, align 8
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 3
  store i8* %353, i8** %357, align 8
  %358 = load i8*, i8** %16, align 8
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 4
  store i8* %358, i8** %362, align 8
  br label %363

363:                                              ; preds = %343, %316
  %364 = load i32*, i32** %6, align 8
  %365 = call i32 @git_config_free(i32* %364)
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 3
  %370 = load i8*, i8** %369, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %380

372:                                              ; preds = %363
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 4
  %377 = load i8*, i8** %376, align 8
  %378 = icmp ne i8* %377, null
  %379 = xor i1 %378, true
  br label %380

380:                                              ; preds = %372, %363
  %381 = phi i1 [ true, %363 ], [ %379, %372 ]
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 -1, i32 0
  store i32 %383, i32* %3, align 4
  br label %384

384:                                              ; preds = %380, %78, %46
  %385 = load i32, i32* %3, align 4
  ret i32 %385
}

declare dso_local i32 @DIFF_FLAG_IS_SET(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @DIFF_FLAG_SET(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @git_pathspec__vinit(i32*, i32*, i32*) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, i32*) #1

declare dso_local i32 @git_config__configmap_lookup(i32*, i32*, i32) #1

declare dso_local i32 @git_config__get_int_force(i32*, i8*, i32) #1

declare dso_local i32 @git_config__lookup_entry(%struct.TYPE_16__**, i32*, i8*, i32) #1

declare dso_local i64 @git_submodule_parse_ignore(i64*, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_config_entry_free(%struct.TYPE_16__*) #1

declare dso_local i64 @git_config__get_bool_force(i32*, i8*, i32) #1

declare dso_local i8* @diff_mnemonic_prefix(i64, i32) #1

declare dso_local i8* @diff_strdup_prefix(i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
