; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_write_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_write_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i8*, i32 }
%struct.TYPE_34__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_35__ = type { i32*, i32* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_32__, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_31__*, %struct.TYPE_30__*, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i64, i32, i64, i32*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@GIT_MERGE_FILE_OPTIONS_INIT = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@GIT_FILTER_OPTIONS_INIT = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@GIT_CHECKOUT_CONFLICT_STYLE_DIFF3 = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_STYLE_DIFF3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ancestor\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@GIT_ERROR_CHECKOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"could not merge contents of file\00", align 1
@GIT_ECONFLICT = common dso_local global i32 0, align 4
@GIT_CHECKOUT_UPDATE_ONLY = common dso_local global i32 0, align 4
@GIT_FILTER_TO_WORKTREE = common dso_local global i32 0, align 4
@GIT_FILEBUF_DO_NOT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_37__*, %struct.TYPE_38__*)* @checkout_write_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_write_merge(%struct.TYPE_37__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_36__, align 8
  %6 = alloca %struct.TYPE_36__, align 8
  %7 = alloca %struct.TYPE_36__, align 8
  %8 = alloca %struct.TYPE_36__, align 8
  %9 = alloca %struct.TYPE_36__, align 8
  %10 = alloca %struct.TYPE_36__, align 8
  %11 = alloca %struct.TYPE_34__, align 8
  %12 = alloca %struct.TYPE_33__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_35__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %4, align 8
  %17 = bitcast %struct.TYPE_36__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_36__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %18 = bitcast %struct.TYPE_36__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_36__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %19 = bitcast %struct.TYPE_36__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_36__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %20 = bitcast %struct.TYPE_36__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_36__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %21 = bitcast %struct.TYPE_36__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_36__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %22 = bitcast %struct.TYPE_36__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_36__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %23 = bitcast %struct.TYPE_34__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_34__* @GIT_MERGE_FILE_OPTIONS_INIT to i8*), i64 32, i1 false)
  %24 = bitcast %struct.TYPE_33__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 40, i1 false)
  %25 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %25, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %26 = bitcast %struct.TYPE_35__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_35__* @GIT_FILTER_OPTIONS_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %16, align 4
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GIT_CHECKOUT_CONFLICT_STYLE_DIFF3, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @GIT_MERGE_FILE_STYLE_DIFF3, align 4
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i8* [ %49, %45 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %50 ]
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i8* [ %63, %59 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %64 ]
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  br label %79

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi i8* [ %77, %73 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %78 ]
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %83, align 8
  %85 = icmp ne %struct.TYPE_30__* %84, null
  br i1 %85, label %86, label %130

86:                                               ; preds = %79
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %88, align 8
  %90 = icmp ne %struct.TYPE_31__* %89, null
  br i1 %90, label %91, label %130

91:                                               ; preds = %86
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @strcmp(i32 %96, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @conflict_entry_name(%struct.TYPE_36__* %5, i8* %106, i32 %111)
  store i32 %112, i32* %16, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @conflict_entry_name(%struct.TYPE_36__* %6, i8* %116, i32 %121)
  store i32 %122, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114, %104
  br label %249

125:                                              ; preds = %114
  %126 = call i8* @git_buf_cstr(%struct.TYPE_36__* %5)
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  store i8* %126, i8** %127, align 8
  %128 = call i8* @git_buf_cstr(%struct.TYPE_36__* %6)
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 2
  store i8* %128, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %91, %86, %79
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %138, align 8
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %141, align 8
  %143 = call i32 @git_merge_file_from_index(%struct.TYPE_33__* %12, i32 %133, i32 %136, %struct.TYPE_30__* %139, %struct.TYPE_31__* %142, %struct.TYPE_34__* %11)
  store i32 %143, i32* %16, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %130
  br label %249

146:                                              ; preds = %130
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150, %146
  %155 = load i32, i32* @GIT_ERROR_CHECKOUT, align 4
  %156 = call i32 @git_error_set(i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %157 = load i32, i32* @GIT_ECONFLICT, align 4
  store i32 %157, i32* %16, align 4
  br label %249

158:                                              ; preds = %150
  %159 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %160 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %161 = call i32 @checkout_merge_path(%struct.TYPE_36__* %8, %struct.TYPE_37__* %159, %struct.TYPE_38__* %160, %struct.TYPE_33__* %12)
  store i32 %161, i32* %16, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %249

164:                                              ; preds = %158
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @GIT_CHECKOUT_UPDATE_ONLY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %173 = call i8* @git_buf_cstr(%struct.TYPE_36__* %8)
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @checkout_safe_for_update_only(%struct.TYPE_37__* %172, i8* %173, i64 %175)
  store i32 %176, i32* %16, align 4
  %177 = icmp sle i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %249

179:                                              ; preds = %171, %164
  %180 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %212, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i8*
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 0
  store i8* %188, i8** %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 1
  store i32 %191, i32* %192, align 8
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %15, i32 0, i32 1
  store i32* %194, i32** %195, align 8
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %15, i32 0, i32 0
  store i32* %197, i32** %198, align 8
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i8* @git_buf_cstr(%struct.TYPE_36__* %8)
  %203 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %204 = call i32 @git_filter_list__load_ext(i32** %14, i32 %201, i32* null, i8* %202, i32 %203, %struct.TYPE_35__* %15)
  store i32 %204, i32* %16, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %185
  %207 = load i32*, i32** %14, align 8
  %208 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_36__* %10, i32* %207, %struct.TYPE_36__* %9)
  store i32 %208, i32* %16, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206, %185
  br label %249

211:                                              ; preds = %206
  br label %220

212:                                              ; preds = %179
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i8*
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 0
  store i8* %215, i8** %216, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 1
  store i32 %218, i32* %219, align 8
  br label %220

220:                                              ; preds = %212, %211
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %8, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @mkpath2file(%struct.TYPE_37__* %221, i8* %223, i32 %227)
  store i32 %228, i32* %16, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %247, label %230

230:                                              ; preds = %220
  %231 = call i8* @git_buf_cstr(%struct.TYPE_36__* %8)
  %232 = load i32, i32* @GIT_FILEBUF_DO_NOT_BUFFER, align 4
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @git_filebuf_open(i32* %13, i8* %231, i32 %232, i64 %234)
  store i32 %235, i32* %16, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %247, label %237

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %10, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @git_filebuf_write(i32* %13, i8* %239, i32 %241)
  store i32 %242, i32* %16, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %237
  %245 = call i32 @git_filebuf_commit(i32* %13)
  store i32 %245, i32* %16, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244, %237, %230, %220
  br label %249

248:                                              ; preds = %244
  br label %249

249:                                              ; preds = %248, %247, %210, %178, %163, %154, %145, %124
  %250 = load i32*, i32** %14, align 8
  %251 = call i32 @git_filter_list_free(i32* %250)
  %252 = call i32 @git_buf_dispose(%struct.TYPE_36__* %10)
  %253 = call i32 @git_buf_dispose(%struct.TYPE_36__* %5)
  %254 = call i32 @git_buf_dispose(%struct.TYPE_36__* %6)
  %255 = call i32 @git_merge_file_result_free(%struct.TYPE_33__* %12)
  %256 = call i32 @git_buf_dispose(%struct.TYPE_36__* %8)
  %257 = call i32 @git_buf_dispose(%struct.TYPE_36__* %7)
  %258 = load i32, i32* %16, align 4
  ret i32 %258
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i32 @conflict_entry_name(%struct.TYPE_36__*, i8*, i32) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_36__*) #2

declare dso_local i32 @git_merge_file_from_index(%struct.TYPE_33__*, i32, i32, %struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_34__*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @checkout_merge_path(%struct.TYPE_36__*, %struct.TYPE_37__*, %struct.TYPE_38__*, %struct.TYPE_33__*) #2

declare dso_local i32 @checkout_safe_for_update_only(%struct.TYPE_37__*, i8*, i64) #2

declare dso_local i32 @git_filter_list__load_ext(i32**, i32, i32*, i8*, i32, %struct.TYPE_35__*) #2

declare dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_36__*, i32*, %struct.TYPE_36__*) #2

declare dso_local i32 @mkpath2file(%struct.TYPE_37__*, i8*, i32) #2

declare dso_local i32 @git_filebuf_open(i32*, i8*, i32, i64) #2

declare dso_local i32 @git_filebuf_write(i32*, i8*, i32) #2

declare dso_local i32 @git_filebuf_commit(i32*) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_36__*) #2

declare dso_local i32 @git_merge_file_result_free(%struct.TYPE_33__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
