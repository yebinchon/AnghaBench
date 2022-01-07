; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_process_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_process_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, i64, i8*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.stage_data = type { i32, %struct.rename_conflict_info*, %struct.diff_filespec* }
%struct.rename_conflict_info = type { i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.diff_filespec = type { i8*, i32 }
%struct.merge_file_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Removing %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"file/directory\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"directory/file\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"CONFLICT (%s): There is a directory with name %s in %s. Adding %s as %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Adding %s\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"CONFLICT (add/add): Merge conflict in %s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"fatal merge failure, shouldn't happen.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*, %struct.stage_data*)* @process_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_entry(%struct.merge_options* %0, i8* %1, %struct.stage_data* %2) #0 {
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stage_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca %struct.diff_filespec*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rename_conflict_info*, align 8
  %16 = alloca %struct.diff_filespec*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.diff_filespec*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.merge_file_info, align 4
  %24 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.stage_data* %2, %struct.stage_data** %6, align 8
  store i32 1, i32* %7, align 4
  %25 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %26 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %29 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %28, i32 0, i32 2
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %29, align 8
  %31 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %30, i64 1
  store %struct.diff_filespec* %31, %struct.diff_filespec** %9, align 8
  %32 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %33 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %32, i32 0, i32 2
  %34 = load %struct.diff_filespec*, %struct.diff_filespec** %33, align 8
  %35 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %34, i64 2
  store %struct.diff_filespec* %35, %struct.diff_filespec** %10, align 8
  %36 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %37 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %36, i32 0, i32 2
  %38 = load %struct.diff_filespec*, %struct.diff_filespec** %37, align 8
  %39 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %38, i64 3
  store %struct.diff_filespec* %39, %struct.diff_filespec** %11, align 8
  %40 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %41 = call i32 @is_valid(%struct.diff_filespec* %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %43 = call i32 @is_valid(%struct.diff_filespec* %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %45 = call i32 @is_valid(%struct.diff_filespec* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %48 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %50 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %52 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %51, i32 0, i32 0
  store i8* %46, i8** %52, align 8
  %53 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %54 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %56 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %55, i32 0, i32 1
  %57 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %56, align 8
  %58 = icmp ne %struct.rename_conflict_info* %57, null
  br i1 %58, label %59, label %224

59:                                               ; preds = %3
  %60 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %61 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %60, i32 0, i32 1
  %62 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %61, align 8
  store %struct.rename_conflict_info* %62, %struct.rename_conflict_info** %15, align 8
  %63 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %64 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %65 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = call i32 @warn_about_dir_renamed_entries(%struct.merge_options* %63, %struct.TYPE_12__* %66)
  store i32 %67, i32* %17, align 4
  %68 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %69 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %70 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = call i32 @warn_about_dir_renamed_entries(%struct.merge_options* %68, %struct.TYPE_12__* %71)
  %73 = load i32, i32* %17, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %17, align 4
  %75 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %76 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %79 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %59
  %85 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  br label %88

86:                                               ; preds = %59
  %87 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi %struct.diff_filespec* [ %85, %84 ], [ %87, %86 ]
  store %struct.diff_filespec* %89, %struct.diff_filespec** %16, align 8
  %90 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %91 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %90, i32 0, i32 2
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.diff_filespec*, %struct.diff_filespec** %16, align 8
  %100 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %102 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %101, i32 0, i32 0
  store i8* %98, i8** %102, align 8
  %103 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %104 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %88
  %108 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %109 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %112 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %110, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  br label %119

119:                                              ; preds = %107, %88
  %120 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %121 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %214 [
    i32 132, label %123
    i32 131, label %123
    i32 128, label %131
    i32 134, label %135
    i32 133, label %139
    i32 130, label %146
    i32 129, label %186
  ]

123:                                              ; preds = %119, %119
  %124 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %127 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %128 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %129 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %130 = call i32 @handle_rename_normal(%struct.merge_options* %124, i8* %125, %struct.diff_filespec* %126, %struct.diff_filespec* %127, %struct.diff_filespec* %128, %struct.rename_conflict_info* %129)
  store i32 %130, i32* %7, align 4
  br label %217

131:                                              ; preds = %119
  %132 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %133 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %134 = call i32 @handle_rename_via_dir(%struct.merge_options* %132, %struct.rename_conflict_info* %133)
  store i32 %134, i32* %7, align 4
  br label %217

135:                                              ; preds = %119
  %136 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %137 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %138 = call i32 @handle_rename_add(%struct.merge_options* %136, %struct.rename_conflict_info* %137)
  store i32 %138, i32* %7, align 4
  br label %217

139:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  %140 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %141 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %142 = call i32 @handle_rename_delete(%struct.merge_options* %140, %struct.rename_conflict_info* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 -1, i32* %7, align 4
  br label %145

145:                                              ; preds = %144, %139
  br label %217

146:                                              ; preds = %119
  %147 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %148 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %147, i32 0, i32 2
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %157 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %159 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %168 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %170 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %179 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  store i32 0, i32* %7, align 4
  %180 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %181 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %182 = call i32 @handle_rename_rename_1to2(%struct.merge_options* %180, %struct.rename_conflict_info* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %146
  store i32 -1, i32* %7, align 4
  br label %185

185:                                              ; preds = %184, %146
  br label %217

186:                                              ; preds = %119
  %187 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %188 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %187, i32 0, i32 0
  store i8* null, i8** %188, align 8
  %189 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %190 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %189, i32 0, i32 2
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %199 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %198, i32 0, i32 0
  store i8* %197, i8** %199, align 8
  %200 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %201 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %200, i32 0, i32 1
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %210 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %212 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %15, align 8
  %213 = call i32 @handle_rename_rename_2to1(%struct.merge_options* %211, %struct.rename_conflict_info* %212)
  store i32 %213, i32* %7, align 4
  br label %217

214:                                              ; preds = %119
  %215 = load %struct.stage_data*, %struct.stage_data** %6, align 8
  %216 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %215, i32 0, i32 0
  store i32 0, i32* %216, align 8
  br label %217

217:                                              ; preds = %214, %186, %185, %145, %135, %131, %123
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* %17, align 4
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %221, %217
  br label %469

224:                                              ; preds = %3
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %288

227:                                              ; preds = %224
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %288, label %233

233:                                              ; preds = %230, %227
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %261

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %14, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %239
  %243 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %244 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %245 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i8*, i8** %5, align 8
  %248 = call i64 @blob_unchanged(%struct.merge_options* %243, %struct.diff_filespec* %244, %struct.diff_filespec* %245, i32 %246, i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %242, %239
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %277, label %253

253:                                              ; preds = %250
  %254 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %255 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %256 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i8*, i8** %5, align 8
  %259 = call i64 @blob_unchanged(%struct.merge_options* %254, %struct.diff_filespec* %255, %struct.diff_filespec* %256, i32 %257, i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %253, %242, %236
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %266 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %267 = load i8*, i8** %5, align 8
  %268 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %265, i32 2, i8* %266, i8* %267)
  br label %269

269:                                              ; preds = %264, %261
  %270 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %271 = load i8*, i8** %5, align 8
  %272 = load i32, i32* %13, align 4
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  %276 = call i32 @remove_file(%struct.merge_options* %270, i32 1, i8* %271, i32 %275)
  br label %287

277:                                              ; preds = %253, %250
  store i32 0, i32* %7, align 4
  %278 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %279 = load i8*, i8** %5, align 8
  %280 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %281 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %282 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %283 = call i64 @handle_modify_delete(%struct.merge_options* %278, i8* %279, %struct.diff_filespec* %280, %struct.diff_filespec* %281, %struct.diff_filespec* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %277
  store i32 -1, i32* %7, align 4
  br label %286

286:                                              ; preds = %285, %277
  br label %287

287:                                              ; preds = %286, %269
  br label %468

288:                                              ; preds = %230, %224
  %289 = load i32, i32* %12, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %297, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* %13, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %306

297:                                              ; preds = %294, %291, %288
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %409, label %300

300:                                              ; preds = %297
  %301 = load i32, i32* %13, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %409, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %14, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %409

306:                                              ; preds = %303, %294
  %307 = load i32, i32* %13, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %311 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = inttoptr i64 %312 to i8*
  store i8* %313, i8** %18, align 8
  %314 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %315 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  store i8* %316, i8** %19, align 8
  %317 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  store %struct.diff_filespec* %317, %struct.diff_filespec** %21, align 8
  %318 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %318, i8** %20, align 8
  br label %329

319:                                              ; preds = %306
  %320 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %321 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  store i8* %322, i8** %18, align 8
  %323 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %324 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to i8*
  store i8* %326, i8** %19, align 8
  %327 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  store %struct.diff_filespec* %327, %struct.diff_filespec** %21, align 8
  %328 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %328, i8** %20, align 8
  br label %329

329:                                              ; preds = %319, %309
  %330 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %331 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %330, i32 0, i32 3
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i8*, i8** %5, align 8
  %336 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %337 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %336, i32 0, i32 4
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %329
  %343 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %344 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @S_ISGITLINK(i32 %345)
  %347 = icmp ne i32 %346, 0
  %348 = xor i1 %347, true
  br label %349

349:                                              ; preds = %342, %329
  %350 = phi i1 [ false, %329 ], [ %348, %342 ]
  %351 = zext i1 %350 to i32
  %352 = call i64 @dir_in_way(i32 %334, i8* %335, i32 %351, i32 0)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %392

354:                                              ; preds = %349
  %355 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %356 = load i8*, i8** %5, align 8
  %357 = load i8*, i8** %18, align 8
  %358 = call i8* @unique_path(%struct.merge_options* %355, i8* %356, i8* %357)
  store i8* %358, i8** %22, align 8
  store i32 0, i32* %7, align 4
  %359 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %360 = call i8* @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %361 = load i8*, i8** %20, align 8
  %362 = load i8*, i8** %5, align 8
  %363 = load i8*, i8** %19, align 8
  %364 = load i8*, i8** %5, align 8
  %365 = load i8*, i8** %22, align 8
  %366 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %359, i32 1, i8* %360, i8* %361, i8* %362, i8* %363, i8* %364, i8* %365)
  %367 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %368 = load %struct.diff_filespec*, %struct.diff_filespec** %21, align 8
  %369 = load i8*, i8** %22, align 8
  %370 = call i64 @update_file(%struct.merge_options* %367, i32 0, %struct.diff_filespec* %368, i8* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %354
  store i32 -1, i32* %7, align 4
  br label %389

373:                                              ; preds = %354
  %374 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %375 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %374, i32 0, i32 4
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %373
  %381 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %382 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %381, i32 0, i32 3
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i8*, i8** %5, align 8
  %387 = call i32 @remove_file_from_index(i32 %385, i8* %386)
  br label %388

388:                                              ; preds = %380, %373
  br label %389

389:                                              ; preds = %388, %372
  %390 = load i8*, i8** %22, align 8
  %391 = call i32 @free(i8* %390)
  br label %408

392:                                              ; preds = %349
  %393 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %394 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %395 = load i8*, i8** %5, align 8
  %396 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %393, i32 2, i8* %394, i8* %395)
  %397 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %398 = load %struct.diff_filespec*, %struct.diff_filespec** %21, align 8
  %399 = load i8*, i8** %5, align 8
  %400 = load i32, i32* %13, align 4
  %401 = icmp ne i32 %400, 0
  %402 = xor i1 %401, true
  %403 = zext i1 %402 to i32
  %404 = call i64 @update_file_flags(%struct.merge_options* %397, %struct.diff_filespec* %398, i8* %399, i32 1, i32 %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %392
  store i32 -1, i32* %7, align 4
  br label %407

407:                                              ; preds = %406, %392
  br label %408

408:                                              ; preds = %407, %389
  br label %467

409:                                              ; preds = %303, %300, %297
  %410 = load i32, i32* %13, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %444

412:                                              ; preds = %409
  %413 = load i32, i32* %14, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %444

415:                                              ; preds = %412
  %416 = load i32, i32* %12, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %435, label %418

418:                                              ; preds = %415
  %419 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %420 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %421 = load i8*, i8** %5, align 8
  %422 = call i32 (%struct.merge_options*, i32, i8*, i8*, ...) @output(%struct.merge_options* %419, i32 1, i8* %420, i8* %421)
  %423 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %424 = load i8*, i8** %5, align 8
  %425 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %426 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = inttoptr i64 %427 to i8*
  %429 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %430 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %429, i32 0, i32 2
  %431 = load i8*, i8** %430, align 8
  %432 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %433 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %434 = call i32 @handle_file_collision(%struct.merge_options* %423, i8* %424, i32* null, i32* null, i8* %428, i8* %431, %struct.diff_filespec* %432, %struct.diff_filespec* %433)
  store i32 %434, i32* %7, align 4
  br label %443

435:                                              ; preds = %415
  store i32 0, i32* %24, align 4
  %436 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %437 = load i8*, i8** %5, align 8
  %438 = load i32, i32* %24, align 4
  %439 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %440 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %441 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %442 = call i32 @handle_content_merge(%struct.merge_file_info* %23, %struct.merge_options* %436, i8* %437, i32 %438, %struct.diff_filespec* %439, %struct.diff_filespec* %440, %struct.diff_filespec* %441, i32* null)
  store i32 %442, i32* %7, align 4
  br label %443

443:                                              ; preds = %435, %418
  br label %466

444:                                              ; preds = %412, %409
  %445 = load i32, i32* %12, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %463, label %447

447:                                              ; preds = %444
  %448 = load i32, i32* %13, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %463, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %14, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %463, label %453

453:                                              ; preds = %450
  %454 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %455 = load i8*, i8** %5, align 8
  %456 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %457 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = icmp ne i32 %458, 0
  %460 = xor i1 %459, true
  %461 = zext i1 %460 to i32
  %462 = call i32 @remove_file(%struct.merge_options* %454, i32 1, i8* %455, i32 %461)
  br label %465

463:                                              ; preds = %450, %447, %444
  %464 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %465

465:                                              ; preds = %463, %453
  br label %466

466:                                              ; preds = %465, %443
  br label %467

467:                                              ; preds = %466, %408
  br label %468

468:                                              ; preds = %467, %287
  br label %469

469:                                              ; preds = %468, %223
  %470 = load i32, i32* %7, align 4
  ret i32 %470
}

declare dso_local i32 @is_valid(%struct.diff_filespec*) #1

declare dso_local i32 @warn_about_dir_renamed_entries(%struct.merge_options*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @handle_rename_normal(%struct.merge_options*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.rename_conflict_info*) #1

declare dso_local i32 @handle_rename_via_dir(%struct.merge_options*, %struct.rename_conflict_info*) #1

declare dso_local i32 @handle_rename_add(%struct.merge_options*, %struct.rename_conflict_info*) #1

declare dso_local i32 @handle_rename_delete(%struct.merge_options*, %struct.rename_conflict_info*) #1

declare dso_local i32 @handle_rename_rename_1to2(%struct.merge_options*, %struct.rename_conflict_info*) #1

declare dso_local i32 @handle_rename_rename_2to1(%struct.merge_options*, %struct.rename_conflict_info*) #1

declare dso_local i64 @blob_unchanged(%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, i32, i8*) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @remove_file(%struct.merge_options*, i32, i8*, i32) #1

declare dso_local i64 @handle_modify_delete(%struct.merge_options*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i64 @dir_in_way(i32, i8*, i32, i32) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i8* @unique_path(%struct.merge_options*, i8*, i8*) #1

declare dso_local i64 @update_file(%struct.merge_options*, i32, %struct.diff_filespec*, i8*) #1

declare dso_local i32 @remove_file_from_index(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @update_file_flags(%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32) #1

declare dso_local i32 @handle_file_collision(%struct.merge_options*, i8*, i32*, i32*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i32 @handle_content_merge(%struct.merge_file_info*, %struct.merge_options*, i8*, i32, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
