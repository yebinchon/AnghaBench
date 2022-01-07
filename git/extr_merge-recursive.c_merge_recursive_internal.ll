; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.merge_options = type { i8*, i8*, i8*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.commit = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.tree = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"Merging:\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"found %u common ancestor:\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"found %u common ancestors:\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ancestor\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"empty tree\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"merged common ancestors\00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Temporary merge branch 1\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Temporary merge branch 2\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"merge returned no commit\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"merged tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.commit*, %struct.commit*, %struct.commit_list*, %struct.commit**)* @merge_recursive_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_recursive_internal(%struct.merge_options* %0, %struct.commit* %1, %struct.commit* %2, %struct.commit_list* %3, %struct.commit** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.merge_options*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.commit**, align 8
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.tree*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.strbuf, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.tree*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store %struct.commit* %2, %struct.commit** %9, align 8
  store %struct.commit_list* %3, %struct.commit_list** %10, align 8
  store %struct.commit** %4, %struct.commit*** %11, align 8
  %22 = bitcast %struct.strbuf* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %23 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %24 = call i64 @show(%struct.merge_options* %23, i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %28 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %27, i32 4, i32 %28)
  %30 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %31 = load %struct.commit*, %struct.commit** %8, align 8
  %32 = call i32 @output_commit_title(%struct.merge_options* %30, %struct.commit* %31)
  %33 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %34 = load %struct.commit*, %struct.commit** %9, align 8
  %35 = call i32 @output_commit_title(%struct.merge_options* %33, %struct.commit* %34)
  br label %36

36:                                               ; preds = %26, %5
  %37 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %38 = icmp ne %struct.commit_list* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.commit*, %struct.commit** %8, align 8
  %41 = load %struct.commit*, %struct.commit** %9, align 8
  %42 = call %struct.commit_list* @get_merge_bases(%struct.commit* %40, %struct.commit* %41)
  store %struct.commit_list* %42, %struct.commit_list** %10, align 8
  %43 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %44 = call %struct.commit_list* @reverse_commit_list(%struct.commit_list* %43)
  store %struct.commit_list* %44, %struct.commit_list** %10, align 8
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %47 = call i64 @show(%struct.merge_options* %46, i32 5)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %51 = call i32 @commit_list_count(%struct.commit_list* %50)
  store i32 %51, i32* %18, align 4
  %52 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @Q_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %18, align 4
  %56 = call i32 (%struct.merge_options*, i32, i32, ...) @output(%struct.merge_options* %52, i32 5, i32 %54, i32 %55)
  %57 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %57, %struct.commit_list** %12, align 8
  br label %58

58:                                               ; preds = %67, %49
  %59 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %60 = icmp ne %struct.commit_list* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %63 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %64 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %63, i32 0, i32 0
  %65 = load %struct.commit*, %struct.commit** %64, align 8
  %66 = call i32 @output_commit_title(%struct.merge_options* %62, %struct.commit* %65)
  br label %67

67:                                               ; preds = %61
  %68 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %69 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %68, i32 0, i32 1
  %70 = load %struct.commit_list*, %struct.commit_list** %69, align 8
  store %struct.commit_list* %70, %struct.commit_list** %12, align 8
  br label %58

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %45
  %73 = call %struct.commit* @pop_commit(%struct.commit_list** %10)
  store %struct.commit* %73, %struct.commit** %13, align 8
  %74 = load %struct.commit*, %struct.commit** %13, align 8
  %75 = icmp eq %struct.commit* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %78 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %77, i32 0, i32 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %81 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.tree* @lookup_tree(%struct.TYPE_12__* %79, i32 %86)
  store %struct.tree* %87, %struct.tree** %19, align 8
  %88 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %89 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %88, i32 0, i32 3
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load %struct.tree*, %struct.tree** %19, align 8
  %92 = call %struct.commit* @make_virtual_commit(%struct.TYPE_12__* %90, %struct.tree* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.commit* %92, %struct.commit** %13, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %123

93:                                               ; preds = %72
  %94 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %95 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %100 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %99, i32 0, i32 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %107 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %16, align 8
  br label %122

109:                                              ; preds = %98, %93
  %110 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %111 = icmp ne %struct.commit_list* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %121

113:                                              ; preds = %109
  %114 = load %struct.commit*, %struct.commit** %13, align 8
  %115 = getelementptr inbounds %struct.commit, %struct.commit* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* @DEFAULT_ABBREV, align 4
  %118 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %17, i32* %116, i32 %117)
  %119 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %16, align 8
  br label %121

121:                                              ; preds = %113, %112
  br label %122

122:                                              ; preds = %121, %105
  br label %123

123:                                              ; preds = %122, %76
  %124 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  store %struct.commit_list* %124, %struct.commit_list** %12, align 8
  br label %125

125:                                              ; preds = %179, %123
  %126 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %127 = icmp ne %struct.commit_list* %126, null
  br i1 %127, label %128, label %183

128:                                              ; preds = %125
  %129 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %130 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %129, i32 0, i32 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %136 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %135, i32 0, i32 3
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @discard_index(i32 %139)
  %141 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %142 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %20, align 8
  %144 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %145 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %21, align 8
  %147 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %148 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %147, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8** %148, align 8
  %149 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %150 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %149, i32 0, i32 2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %150, align 8
  %151 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %152 = load %struct.commit*, %struct.commit** %13, align 8
  %153 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %154 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %153, i32 0, i32 0
  %155 = load %struct.commit*, %struct.commit** %154, align 8
  %156 = call i32 @merge_recursive_internal(%struct.merge_options* %151, %struct.commit* %152, %struct.commit* %155, %struct.commit_list* null, %struct.commit** %13)
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %128
  store i32 -1, i32* %6, align 4
  br label %259

159:                                              ; preds = %128
  %160 = load i8*, i8** %20, align 8
  %161 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %162 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %21, align 8
  %164 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %165 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %167 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %166, i32 0, i32 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, -1
  store i64 %171, i64* %169, align 8
  %172 = load %struct.commit*, %struct.commit** %13, align 8
  %173 = icmp ne %struct.commit* %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %159
  %175 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %176 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %177 = call i32 @err(%struct.merge_options* %175, i32 %176)
  store i32 %177, i32* %6, align 4
  br label %259

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %181 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %180, i32 0, i32 1
  %182 = load %struct.commit_list*, %struct.commit_list** %181, align 8
  store %struct.commit_list* %182, %struct.commit_list** %12, align 8
  br label %125

183:                                              ; preds = %125
  %184 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %185 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %184, i32 0, i32 3
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @discard_index(i32 %188)
  %190 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %191 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %190, i32 0, i32 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %183
  %197 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %198 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %197, i32 0, i32 3
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = call i32 @repo_read_index(%struct.TYPE_12__* %199)
  br label %201

201:                                              ; preds = %196, %183
  %202 = load i8*, i8** %16, align 8
  %203 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %204 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %206 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %207 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %206, i32 0, i32 3
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = load %struct.commit*, %struct.commit** %8, align 8
  %210 = call i32 @repo_get_commit_tree(%struct.TYPE_12__* %208, %struct.commit* %209)
  %211 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %212 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %211, i32 0, i32 3
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load %struct.commit*, %struct.commit** %9, align 8
  %215 = call i32 @repo_get_commit_tree(%struct.TYPE_12__* %213, %struct.commit* %214)
  %216 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %217 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %216, i32 0, i32 3
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %217, align 8
  %219 = load %struct.commit*, %struct.commit** %13, align 8
  %220 = call i32 @repo_get_commit_tree(%struct.TYPE_12__* %218, %struct.commit* %219)
  %221 = call i32 @merge_trees_internal(%struct.merge_options* %205, i32 %210, i32 %215, i32 %220, %struct.tree** %14)
  store i32 %221, i32* %15, align 4
  %222 = call i32 @strbuf_release(%struct.strbuf* %17)
  %223 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %224 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %223, i32 0, i32 0
  store i8* null, i8** %224, align 8
  %225 = load i32, i32* %15, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %201
  %228 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %229 = call i32 @flush_output(%struct.merge_options* %228)
  %230 = load i32, i32* %15, align 4
  store i32 %230, i32* %6, align 4
  br label %259

231:                                              ; preds = %201
  %232 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %233 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %232, i32 0, i32 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %231
  %239 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %240 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %239, i32 0, i32 3
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load %struct.tree*, %struct.tree** %14, align 8
  %243 = call %struct.commit* @make_virtual_commit(%struct.TYPE_12__* %241, %struct.tree* %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %244 = load %struct.commit**, %struct.commit*** %11, align 8
  store %struct.commit* %243, %struct.commit** %244, align 8
  %245 = load %struct.commit*, %struct.commit** %8, align 8
  %246 = load %struct.commit**, %struct.commit*** %11, align 8
  %247 = load %struct.commit*, %struct.commit** %246, align 8
  %248 = getelementptr inbounds %struct.commit, %struct.commit* %247, i32 0, i32 0
  %249 = call i32 @commit_list_insert(%struct.commit* %245, %struct.TYPE_13__** %248)
  %250 = load %struct.commit*, %struct.commit** %9, align 8
  %251 = load %struct.commit**, %struct.commit*** %11, align 8
  %252 = load %struct.commit*, %struct.commit** %251, align 8
  %253 = getelementptr inbounds %struct.commit, %struct.commit* %252, i32 0, i32 0
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = call i32 @commit_list_insert(%struct.commit* %250, %struct.TYPE_13__** %255)
  br label %257

257:                                              ; preds = %238, %231
  %258 = load i32, i32* %15, align 4
  store i32 %258, i32* %6, align 4
  br label %259

259:                                              ; preds = %257, %227, %174, %158
  %260 = load i32, i32* %6, align 4
  ret i32 %260
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @show(%struct.merge_options*, i32) #2

declare dso_local i32 @output(%struct.merge_options*, i32, i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @output_commit_title(%struct.merge_options*, %struct.commit*) #2

declare dso_local %struct.commit_list* @get_merge_bases(%struct.commit*, %struct.commit*) #2

declare dso_local %struct.commit_list* @reverse_commit_list(%struct.commit_list*) #2

declare dso_local i32 @commit_list_count(%struct.commit_list*) #2

declare dso_local i32 @Q_(i8*, i8*, i32) #2

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #2

declare dso_local %struct.tree* @lookup_tree(%struct.TYPE_12__*, i32) #2

declare dso_local %struct.commit* @make_virtual_commit(%struct.TYPE_12__*, %struct.tree*, i8*) #2

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, i32*, i32) #2

declare dso_local i32 @discard_index(i32) #2

declare dso_local i32 @err(%struct.merge_options*, i32) #2

declare dso_local i32 @repo_read_index(%struct.TYPE_12__*) #2

declare dso_local i32 @merge_trees_internal(%struct.merge_options*, i32, i32, i32, %struct.tree**) #2

declare dso_local i32 @repo_get_commit_tree(%struct.TYPE_12__*, %struct.commit*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @flush_output(%struct.merge_options*) #2

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.TYPE_13__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
