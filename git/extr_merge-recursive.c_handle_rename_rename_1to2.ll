; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_rename_1to2.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_rename_1to2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.rename_conflict_info = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.diff_filespec* }
%struct.diff_filespec = type { i8* }
%struct.TYPE_9__ = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.diff_filespec* }
%struct.TYPE_10__ = type { %struct.diff_filespec* }
%struct.merge_file_info = type { %struct.diff_filespec }

@.str = private unnamed_addr constant [87 x i8] c"CONFLICT (rename/rename): Rename \22%s\22->\22%s\22 in branch \22%s\22 rename \22%s\22->\22%s\22 in \22%s\22%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" (left unresolved)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s and %s, both renamed from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.rename_conflict_info*)* @handle_rename_rename_1to2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rename_rename_1to2(%struct.merge_options* %0, %struct.rename_conflict_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.rename_conflict_info*, align 8
  %6 = alloca %struct.merge_file_info, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca %struct.diff_filespec*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.rename_conflict_info* %1, %struct.rename_conflict_info** %5, align 8
  %14 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %15 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %19, align 8
  store %struct.diff_filespec* %20, %struct.diff_filespec** %8, align 8
  %21 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %22 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %26, align 8
  store %struct.diff_filespec* %27, %struct.diff_filespec** %9, align 8
  %28 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %29 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.diff_filespec*, %struct.diff_filespec** %33, align 8
  store %struct.diff_filespec* %34, %struct.diff_filespec** %10, align 8
  %35 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %36 = call i8* @_(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %38 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %41 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %44 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %49 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %52 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %55 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %60 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %2
  %66 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %68

67:                                               ; preds = %2
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i8* [ %66, %65 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %67 ]
  %70 = call i32 @output(%struct.merge_options* %35, i32 1, i8* %36, i8* %39, i8* %42, i32 %47, i8* %50, i8* %53, i32 %58, i8* %69)
  %71 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %72 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %75 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %78 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @xstrfmt(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %76, i8* %79)
  store i8* %80, i8** %11, align 8
  %81 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %82 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %83 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %84 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %87 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %92 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %97 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2
  %102 = call i64 @merge_mode_and_contents(%struct.merge_options* %81, %struct.diff_filespec* %82, %struct.diff_filespec* %83, %struct.diff_filespec* %84, i8* %85, i32 %90, i32 %95, i32 %101, %struct.merge_file_info* %6)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %356

105:                                              ; preds = %68
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %109 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %188

114:                                              ; preds = %105
  %115 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %116 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %6, i32 0, i32 0
  %117 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %118 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @update_file(%struct.merge_options* %115, i32 0, %struct.diff_filespec* %116, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 -1, i32* %3, align 4
  br label %356

123:                                              ; preds = %114
  %124 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %125 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load %struct.diff_filespec*, %struct.diff_filespec** %129, align 8
  %131 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %130, i64 3
  store %struct.diff_filespec* %131, %struct.diff_filespec** %7, align 8
  %132 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %133 = call i64 @is_valid(%struct.diff_filespec* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %123
  %136 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %137 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %138 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %139 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @update_file(%struct.merge_options* %136, i32 0, %struct.diff_filespec* %137, i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  store i32 -1, i32* %3, align 4
  br label %356

144:                                              ; preds = %135
  br label %155

145:                                              ; preds = %123
  %146 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %147 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %146, i32 0, i32 0
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %152 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @remove_file_from_index(i32 %150, i8* %153)
  br label %155

155:                                              ; preds = %145, %144
  %156 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %157 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %156, i32 0, i32 1
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load %struct.diff_filespec*, %struct.diff_filespec** %161, align 8
  %163 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %162, i64 2
  store %struct.diff_filespec* %163, %struct.diff_filespec** %7, align 8
  %164 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %165 = call i64 @is_valid(%struct.diff_filespec* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %155
  %168 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %169 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %170 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %171 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @update_file(%struct.merge_options* %168, i32 0, %struct.diff_filespec* %169, i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i32 -1, i32* %3, align 4
  br label %356

176:                                              ; preds = %167
  br label %187

177:                                              ; preds = %155
  %178 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %179 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %184 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @remove_file_from_index(i32 %182, i8* %185)
  br label %187

187:                                              ; preds = %177, %176
  br label %355

188:                                              ; preds = %105
  %189 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %190 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %189, i32 0, i32 0
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load %struct.diff_filespec*, %struct.diff_filespec** %194, align 8
  %196 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %195, i64 3
  store %struct.diff_filespec* %196, %struct.diff_filespec** %7, align 8
  %197 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %198 = call i64 @is_valid(%struct.diff_filespec* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %228

200:                                              ; preds = %188
  %201 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %202 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %6, i32 0, i32 0
  %205 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  %206 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %207 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %206, i32 0, i32 0
  store i8* %203, i8** %207, align 8
  %208 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %209 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %210 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %213 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %212, i32 0, i32 0
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %218 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %217, i32 0, i32 1
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %6, i32 0, i32 0
  %223 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %224 = call i64 @handle_file_collision(%struct.merge_options* %208, i8* %211, i32* null, i32* null, i32 %216, i32 %221, %struct.diff_filespec* %222, %struct.diff_filespec* %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %200
  store i32 -1, i32* %3, align 4
  br label %356

227:                                              ; preds = %200
  br label %271

228:                                              ; preds = %188
  %229 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %230 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %231 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %234 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %233, i32 0, i32 0
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %239 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %238, i32 0, i32 1
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @find_path_for_conflict(%struct.merge_options* %229, i8* %232, i32 %237, i32 %242)
  store i8* %243, i8** %12, align 8
  %244 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %245 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %6, i32 0, i32 0
  %246 = load i8*, i8** %12, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %228
  %249 = load i8*, i8** %12, align 8
  br label %254

250:                                              ; preds = %228
  %251 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %252 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  br label %254

254:                                              ; preds = %250, %248
  %255 = phi i8* [ %249, %248 ], [ %253, %250 ]
  %256 = call i64 @update_file(%struct.merge_options* %244, i32 0, %struct.diff_filespec* %245, i8* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  store i32 -1, i32* %3, align 4
  br label %356

259:                                              ; preds = %254
  %260 = load i8*, i8** %12, align 8
  %261 = call i32 @free(i8* %260)
  %262 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %263 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %264 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %267 = call i64 @update_stages(%struct.merge_options* %262, i8* %265, i32* null, %struct.diff_filespec* %266, %struct.diff_filespec* null)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %259
  store i32 -1, i32* %3, align 4
  br label %356

270:                                              ; preds = %259
  br label %271

271:                                              ; preds = %270, %227
  %272 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %273 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %272, i32 0, i32 1
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load %struct.diff_filespec*, %struct.diff_filespec** %277, align 8
  %279 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %278, i64 2
  store %struct.diff_filespec* %279, %struct.diff_filespec** %7, align 8
  %280 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %281 = call i64 @is_valid(%struct.diff_filespec* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %311

283:                                              ; preds = %271
  %284 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %285 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %6, i32 0, i32 0
  %288 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %287, i32 0, i32 0
  store i8* %286, i8** %288, align 8
  %289 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %290 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %289, i32 0, i32 0
  store i8* %286, i8** %290, align 8
  %291 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %292 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %293 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %296 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %295, i32 0, i32 0
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %301 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %300, i32 0, i32 1
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %306 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %6, i32 0, i32 0
  %307 = call i64 @handle_file_collision(%struct.merge_options* %291, i8* %294, i32* null, i32* null, i32 %299, i32 %304, %struct.diff_filespec* %305, %struct.diff_filespec* %306)
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %283
  store i32 -1, i32* %3, align 4
  br label %356

310:                                              ; preds = %283
  br label %354

311:                                              ; preds = %271
  %312 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %313 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %314 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %317 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %316, i32 0, i32 1
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %322 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %321, i32 0, i32 0
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i8* @find_path_for_conflict(%struct.merge_options* %312, i8* %315, i32 %320, i32 %325)
  store i8* %326, i8** %13, align 8
  %327 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %328 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %6, i32 0, i32 0
  %329 = load i8*, i8** %13, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %331, label %333

331:                                              ; preds = %311
  %332 = load i8*, i8** %13, align 8
  br label %337

333:                                              ; preds = %311
  %334 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %335 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  br label %337

337:                                              ; preds = %333, %331
  %338 = phi i8* [ %332, %331 ], [ %336, %333 ]
  %339 = call i64 @update_file(%struct.merge_options* %327, i32 0, %struct.diff_filespec* %328, i8* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %337
  store i32 -1, i32* %3, align 4
  br label %356

342:                                              ; preds = %337
  %343 = load i8*, i8** %13, align 8
  %344 = call i32 @free(i8* %343)
  %345 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %346 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %347 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %350 = call i64 @update_stages(%struct.merge_options* %345, i8* %348, i32* null, %struct.diff_filespec* null, %struct.diff_filespec* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %342
  store i32 -1, i32* %3, align 4
  br label %356

353:                                              ; preds = %342
  br label %354

354:                                              ; preds = %353, %310
  br label %355

355:                                              ; preds = %354, %187
  store i32 0, i32* %3, align 4
  br label %356

356:                                              ; preds = %355, %352, %341, %309, %269, %258, %226, %175, %143, %122, %104
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local i32 @output(%struct.merge_options*, i32, i8*, i8*, i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @merge_mode_and_contents(%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i32, i32, i32, %struct.merge_file_info*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @update_file(%struct.merge_options*, i32, %struct.diff_filespec*, i8*) #1

declare dso_local i64 @is_valid(%struct.diff_filespec*) #1

declare dso_local i32 @remove_file_from_index(i32, i8*) #1

declare dso_local i64 @handle_file_collision(%struct.merge_options*, i8*, i32*, i32*, i32, i32, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i8* @find_path_for_conflict(%struct.merge_options*, i8*, i32, i32) #1

declare dso_local i64 @update_stages(%struct.merge_options*, i8*, i32*, %struct.diff_filespec*, %struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
