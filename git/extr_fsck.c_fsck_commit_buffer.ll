; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_commit_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_commit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fsck_options = type { i32 }
%struct.object_id = type { i32 }
%struct.commit_graft = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"tree \00", align 1
@FSCK_MSG_MISSING_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid format - expected 'tree' line\00", align 1
@FSCK_MSG_BAD_TREE_SHA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid 'tree' line format - bad sha1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"parent \00", align 1
@FSCK_MSG_BAD_PARENT_SHA1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"invalid 'parent' line format - bad sha1\00", align 1
@the_repository = common dso_local global i32 0, align 4
@FSCK_MSG_MISSING_GRAFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"graft objects missing\00", align 1
@FSCK_MSG_MISSING_PARENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"parent objects missing\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@FSCK_MSG_MISSING_AUTHOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"invalid format - expected 'author' line\00", align 1
@FSCK_MSG_MULTIPLE_AUTHORS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"invalid format - multiple 'author' lines\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"committer \00", align 1
@FSCK_MSG_MISSING_COMMITTER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"invalid format - expected 'committer' line\00", align 1
@FSCK_MSG_BAD_TREE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"could not load commit's tree %s\00", align 1
@FSCK_MSG_NUL_IN_COMMIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"NUL byte in the commit object body\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, i8*, i64, %struct.fsck_options*)* @fsck_commit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_commit_buffer(%struct.commit* %0, i8* %1, i64 %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fsck_options*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.object_id, align 4
  %12 = alloca %struct.commit_graft*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.commit* %0, %struct.commit** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  store i32 0, i32* %14, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %17, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.commit*, %struct.commit** %6, align 8
  %23 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 0
  %24 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %25 = call i64 @verify_headers(i8* %20, i64 %21, %struct.TYPE_4__* %23, %struct.fsck_options* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %239

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @skip_prefix(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %34 = load %struct.commit*, %struct.commit** %6, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0
  %36 = load i32, i32* @FSCK_MSG_MISSING_TREE, align 4
  %37 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %33, %struct.TYPE_4__* %35, i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  br label %239

38:                                               ; preds = %28
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @parse_oid_hex(i8* %39, %struct.object_id* %10, i8** %18)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %18, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br i1 %46, label %47, label %58

47:                                               ; preds = %42, %38
  %48 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %49 = load %struct.commit*, %struct.commit** %6, align 8
  %50 = getelementptr inbounds %struct.commit, %struct.commit* %49, i32 0, i32 0
  %51 = load i32, i32* @FSCK_MSG_BAD_TREE_SHA1, align 4
  %52 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %48, %struct.TYPE_4__* %50, i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %5, align 4
  br label %239

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i8*, i8** %18, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %85, %58
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @skip_prefix(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @parse_oid_hex(i8* %66, %struct.object_id* %11, i8** %18)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %18, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 10
  br i1 %73, label %74, label %85

74:                                               ; preds = %69, %65
  %75 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %76 = load %struct.commit*, %struct.commit** %6, align 8
  %77 = getelementptr inbounds %struct.commit, %struct.commit* %76, i32 0, i32 0
  %78 = load i32, i32* @FSCK_MSG_BAD_PARENT_SHA1, align 4
  %79 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %75, %struct.TYPE_4__* %77, i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %5, align 4
  br label %239

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i8*, i8** %18, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %7, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %61

90:                                               ; preds = %61
  %91 = load i32, i32* @the_repository, align 4
  %92 = load %struct.commit*, %struct.commit** %6, align 8
  %93 = getelementptr inbounds %struct.commit, %struct.commit* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call %struct.commit_graft* @lookup_commit_graft(i32 %91, i32* %94)
  store %struct.commit_graft* %95, %struct.commit_graft** %12, align 8
  %96 = load %struct.commit*, %struct.commit** %6, align 8
  %97 = getelementptr inbounds %struct.commit, %struct.commit* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @commit_list_count(i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load %struct.commit_graft*, %struct.commit_graft** %12, align 8
  %101 = icmp ne %struct.commit_graft* %100, null
  br i1 %101, label %102, label %130

102:                                              ; preds = %90
  %103 = load %struct.commit_graft*, %struct.commit_graft** %12, align 8
  %104 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %129

111:                                              ; preds = %107, %102
  %112 = load %struct.commit_graft*, %struct.commit_graft** %12, align 8
  %113 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %119 = load %struct.commit*, %struct.commit** %6, align 8
  %120 = getelementptr inbounds %struct.commit, %struct.commit* %119, i32 0, i32 0
  %121 = load i32, i32* @FSCK_MSG_MISSING_GRAFT, align 4
  %122 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %118, %struct.TYPE_4__* %120, i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %5, align 4
  br label %239

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %111
  br label %129

129:                                              ; preds = %128, %110
  br label %146

130:                                              ; preds = %90
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %136 = load %struct.commit*, %struct.commit** %6, align 8
  %137 = getelementptr inbounds %struct.commit, %struct.commit* %136, i32 0, i32 0
  %138 = load i32, i32* @FSCK_MSG_MISSING_PARENT, align 4
  %139 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %135, %struct.TYPE_4__* %137, i32 %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %5, align 4
  br label %239

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %130
  br label %146

146:                                              ; preds = %145, %129
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %162, %146
  %148 = load i8*, i8** %7, align 8
  %149 = call i64 @skip_prefix(i8* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %7)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %15, align 4
  %154 = load %struct.commit*, %struct.commit** %6, align 8
  %155 = getelementptr inbounds %struct.commit, %struct.commit* %154, i32 0, i32 0
  %156 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %157 = call i32 @fsck_ident(i8** %7, %struct.TYPE_4__* %155, %struct.fsck_options* %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %5, align 4
  br label %239

162:                                              ; preds = %151
  br label %147

163:                                              ; preds = %147
  %164 = load i32, i32* %15, align 4
  %165 = icmp ult i32 %164, 1
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %168 = load %struct.commit*, %struct.commit** %6, align 8
  %169 = getelementptr inbounds %struct.commit, %struct.commit* %168, i32 0, i32 0
  %170 = load i32, i32* @FSCK_MSG_MISSING_AUTHOR, align 4
  %171 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %167, %struct.TYPE_4__* %169, i32 %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  store i32 %171, i32* %16, align 4
  br label %182

172:                                              ; preds = %163
  %173 = load i32, i32* %15, align 4
  %174 = icmp ugt i32 %173, 1
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %177 = load %struct.commit*, %struct.commit** %6, align 8
  %178 = getelementptr inbounds %struct.commit, %struct.commit* %177, i32 0, i32 0
  %179 = load i32, i32* @FSCK_MSG_MULTIPLE_AUTHORS, align 4
  %180 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %176, %struct.TYPE_4__* %178, i32 %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i32 %180, i32* %16, align 4
  br label %181

181:                                              ; preds = %175, %172
  br label %182

182:                                              ; preds = %181, %166
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* %16, align 4
  store i32 %186, i32* %5, align 4
  br label %239

187:                                              ; preds = %182
  %188 = load i8*, i8** %7, align 8
  %189 = call i64 @skip_prefix(i8* %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %7)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %187
  %192 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %193 = load %struct.commit*, %struct.commit** %6, align 8
  %194 = getelementptr inbounds %struct.commit, %struct.commit* %193, i32 0, i32 0
  %195 = load i32, i32* @FSCK_MSG_MISSING_COMMITTER, align 4
  %196 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %192, %struct.TYPE_4__* %194, i32 %195, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  store i32 %196, i32* %5, align 4
  br label %239

197:                                              ; preds = %187
  %198 = load %struct.commit*, %struct.commit** %6, align 8
  %199 = getelementptr inbounds %struct.commit, %struct.commit* %198, i32 0, i32 0
  %200 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %201 = call i32 @fsck_ident(i8** %7, %struct.TYPE_4__* %199, %struct.fsck_options* %200)
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* %16, align 4
  store i32 %205, i32* %5, align 4
  br label %239

206:                                              ; preds = %197
  %207 = load %struct.commit*, %struct.commit** %6, align 8
  %208 = call i32 @get_commit_tree(%struct.commit* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %206
  %211 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %212 = load %struct.commit*, %struct.commit** %6, align 8
  %213 = getelementptr inbounds %struct.commit, %struct.commit* %212, i32 0, i32 0
  %214 = load i32, i32* @FSCK_MSG_BAD_TREE, align 4
  %215 = call i32 @oid_to_hex(%struct.object_id* %10)
  %216 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %211, %struct.TYPE_4__* %213, i32 %214, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %215)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %210
  %220 = load i32, i32* %16, align 4
  store i32 %220, i32* %5, align 4
  br label %239

221:                                              ; preds = %210
  br label %222

222:                                              ; preds = %221, %206
  %223 = load i8*, i8** %17, align 8
  %224 = load i64, i64* %8, align 8
  %225 = call i64 @memchr(i8* %223, i8 signext 0, i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %222
  %228 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %229 = load %struct.commit*, %struct.commit** %6, align 8
  %230 = getelementptr inbounds %struct.commit, %struct.commit* %229, i32 0, i32 0
  %231 = load i32, i32* @FSCK_MSG_NUL_IN_COMMIT, align 4
  %232 = call i32 (%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) @report(%struct.fsck_options* %228, %struct.TYPE_4__* %230, i32 %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = load i32, i32* %16, align 4
  store i32 %236, i32* %5, align 4
  br label %239

237:                                              ; preds = %227
  br label %238

238:                                              ; preds = %237, %222
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %238, %235, %219, %204, %191, %185, %160, %142, %125, %82, %55, %32, %27
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i64 @verify_headers(i8*, i64, %struct.TYPE_4__*, %struct.fsck_options*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @report(%struct.fsck_options*, %struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local %struct.commit_graft* @lookup_commit_graft(i32, i32*) #1

declare dso_local i32 @commit_list_count(i32) #1

declare dso_local i32 @fsck_ident(i8**, %struct.TYPE_4__*, %struct.fsck_options*) #1

declare dso_local i32 @get_commit_tree(%struct.commit*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
