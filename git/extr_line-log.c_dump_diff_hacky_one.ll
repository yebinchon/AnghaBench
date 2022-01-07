; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_dump_diff_hacky_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_dump_diff_hacky_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.diff_options }
%struct.diff_options = type { i32, i32, i32 }
%struct.line_log_data = type { %struct.TYPE_11__, %struct.diff_ranges, %struct.diff_filepair* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.diff_ranges = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.diff_filepair = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i32, i64 }

@DIFF_RESET = common dso_local global i32 0, align 4
@DIFF_FRAGINFO = common dso_local global i32 0, align 4
@DIFF_METAINFO = common dso_local global i32 0, align 4
@DIFF_FILE_OLD = common dso_local global i32 0, align 4
@DIFF_FILE_NEW = common dso_local global i32 0, align 4
@DIFF_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s%sdiff --git a/%s b/%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s%s--- %s%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a/\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s%s+++ b/%s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s%s@@ -%ld,%ld +%ld,%ld @@%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.line_log_data*)* @dump_diff_hacky_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_diff_hacky_one(%struct.rev_info* %0, %struct.line_log_data* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.line_log_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.diff_filepair*, align 8
  %12 = alloca %struct.diff_ranges*, align 8
  %13 = alloca %struct.diff_options*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.line_log_data* %1, %struct.line_log_data** %4, align 8
  store i32 0, i32* %6, align 4
  store i64* null, i64** %9, align 8
  store i64* null, i64** %10, align 8
  %28 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %29 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %28, i32 0, i32 2
  %30 = load %struct.diff_filepair*, %struct.diff_filepair** %29, align 8
  store %struct.diff_filepair* %30, %struct.diff_filepair** %11, align 8
  %31 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %32 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %31, i32 0, i32 1
  store %struct.diff_ranges* %32, %struct.diff_ranges** %12, align 8
  %33 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %33, i32 0, i32 0
  store %struct.diff_options* %34, %struct.diff_options** %13, align 8
  %35 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %36 = call i8* @output_prefix(%struct.diff_options* %35)
  store i8* %36, i8** %14, align 8
  %37 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %38 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DIFF_RESET, align 4
  %41 = call i8* @diff_get_color(i32 %39, i32 %40)
  store i8* %41, i8** %15, align 8
  %42 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %43 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DIFF_FRAGINFO, align 4
  %46 = call i8* @diff_get_color(i32 %44, i32 %45)
  store i8* %46, i8** %16, align 8
  %47 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %48 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DIFF_METAINFO, align 4
  %51 = call i8* @diff_get_color(i32 %49, i32 %50)
  store i8* %51, i8** %17, align 8
  %52 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %53 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DIFF_FILE_OLD, align 4
  %56 = call i8* @diff_get_color(i32 %54, i32 %55)
  store i8* %56, i8** %18, align 8
  %57 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %58 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DIFF_FILE_NEW, align 4
  %61 = call i8* @diff_get_color(i32 %59, i32 %60)
  store i8* %61, i8** %19, align 8
  %62 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %63 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DIFF_CONTEXT, align 4
  %66 = call i8* @diff_get_color(i32 %64, i32 %65)
  store i8* %66, i8** %20, align 8
  %67 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %68 = icmp ne %struct.diff_filepair* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %2
  %70 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %71 = icmp ne %struct.diff_ranges* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %2
  br label %541

73:                                               ; preds = %69
  %74 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %75 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %82 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %86 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = call i32 @fill_line_ends(i32 %84, %struct.TYPE_14__* %87, i64* %7, i64** %9)
  br label %89

89:                                               ; preds = %80, %73
  %90 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %91 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %95 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = call i32 @fill_line_ends(i32 %93, %struct.TYPE_14__* %96, i64* %8, i64** %10)
  %98 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %99 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %104 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %109 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %108, i32 0, i32 0
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %101, i8* %102, i8* %107, i8* %112, i8* %113)
  %115 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %116 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %121 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %120, i32 0, i32 1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %128 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %129 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %89
  %135 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %136 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %135, i32 0, i32 1
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  br label %141

140:                                              ; preds = %89
  br label %141

141:                                              ; preds = %140, %134
  %142 = phi i8* [ %139, %134 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %140 ]
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %118, i8* %119, i8* %127, i8* %142, i8* %143)
  %145 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %146 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %14, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %151 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %148, i8* %149, i8* %154, i8* %155)
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %533, %141
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %160 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp ult i32 %158, %162
  br i1 %163, label %164, label %536

164:                                              ; preds = %157
  %165 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %166 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %23, align 8
  %174 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  %175 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %24, align 8
  %183 = load i64, i64* %23, align 8
  store i64 %183, i64* %25, align 8
  br label %184

184:                                              ; preds = %205, %164
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %187 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ult i32 %185, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %184
  %192 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %193 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %23, align 8
  %202 = icmp slt i64 %200, %201
  br label %203

203:                                              ; preds = %191, %184
  %204 = phi i1 [ false, %184 ], [ %202, %191 ]
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = load i32, i32* %6, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %184

208:                                              ; preds = %203
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %211 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %209, %213
  br i1 %214, label %227, label %215

215:                                              ; preds = %208
  %216 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %217 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %24, align 8
  %226 = icmp sgt i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %215, %208
  br label %533

228:                                              ; preds = %215
  %229 = load i32, i32* %6, align 4
  store i32 %229, i32* %26, align 4
  br label %230

230:                                              ; preds = %251, %228
  %231 = load i32, i32* %26, align 4
  %232 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %233 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ult i32 %231, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %230
  %238 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %239 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i32, i32* %26, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %24, align 8
  %248 = icmp slt i64 %246, %247
  br label %249

249:                                              ; preds = %237, %230
  %250 = phi i1 [ false, %230 ], [ %248, %237 ]
  br i1 %250, label %251, label %254

251:                                              ; preds = %249
  %252 = load i32, i32* %26, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %26, align 4
  br label %230

254:                                              ; preds = %249
  %255 = load i32, i32* %26, align 4
  %256 = load i32, i32* %6, align 4
  %257 = icmp ugt i32 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i32, i32* %26, align 4
  %260 = add i32 %259, -1
  store i32 %260, i32* %26, align 4
  br label %261

261:                                              ; preds = %258, %254
  %262 = load i64, i64* %23, align 8
  %263 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %264 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = load i32, i32* %6, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp slt i64 %262, %271
  br i1 %272, label %273, label %295

273:                                              ; preds = %261
  %274 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %275 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %284 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %23, align 8
  %293 = sub nsw i64 %291, %292
  %294 = sub nsw i64 %282, %293
  store i64 %294, i64* %21, align 8
  br label %305

295:                                              ; preds = %261
  %296 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %297 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %298, align 8
  %300 = load i32, i32* %6, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %21, align 8
  br label %305

305:                                              ; preds = %295, %273
  %306 = load i64, i64* %24, align 8
  %307 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %308 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %309, align 8
  %311 = load i32, i32* %26, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp sgt i64 %306, %315
  br i1 %316, label %317, label %339

317:                                              ; preds = %305
  %318 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %319 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %320, align 8
  %322 = load i32, i32* %26, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* %24, align 8
  %328 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %329 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = load i32, i32* %26, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = sub nsw i64 %327, %336
  %338 = add nsw i64 %326, %337
  store i64 %338, i64* %22, align 8
  br label %349

339:                                              ; preds = %305
  %340 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %341 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %342, align 8
  %344 = load i32, i32* %26, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %22, align 8
  br label %349

349:                                              ; preds = %339, %317
  %350 = load i64, i64* %21, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = load i64, i64* %22, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %352
  store i64 -1, i64* %21, align 8
  store i64 -1, i64* %22, align 8
  br label %356

356:                                              ; preds = %355, %352, %349
  %357 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %358 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i8*, i8** %14, align 8
  %361 = load i8*, i8** %16, align 8
  %362 = load i64, i64* %21, align 8
  %363 = add nsw i64 %362, 1
  %364 = load i64, i64* %22, align 8
  %365 = load i64, i64* %21, align 8
  %366 = sub nsw i64 %364, %365
  %367 = load i64, i64* %23, align 8
  %368 = add nsw i64 %367, 1
  %369 = load i64, i64* %24, align 8
  %370 = load i64, i64* %23, align 8
  %371 = sub nsw i64 %369, %370
  %372 = load i8*, i8** %15, align 8
  %373 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %359, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %360, i8* %361, i64 %363, i64 %366, i64 %368, i64 %371, i8* %372)
  br label %374

374:                                              ; preds = %506, %356
  %375 = load i32, i32* %6, align 4
  %376 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %377 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp ult i32 %375, %379
  br i1 %380, label %381, label %393

381:                                              ; preds = %374
  %382 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %383 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %384, align 8
  %386 = load i32, i32* %6, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* %24, align 8
  %392 = icmp slt i64 %390, %391
  br label %393

393:                                              ; preds = %381, %374
  %394 = phi i1 [ false, %374 ], [ %392, %381 ]
  br i1 %394, label %395, label %509

395:                                              ; preds = %393
  br label %396

396:                                              ; preds = %423, %395
  %397 = load i64, i64* %25, align 8
  %398 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %399 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %400, align 8
  %402 = load i32, i32* %6, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = icmp slt i64 %397, %406
  br i1 %407, label %408, label %426

408:                                              ; preds = %396
  %409 = load i8*, i8** %14, align 8
  %410 = load i64, i64* %25, align 8
  %411 = load i64*, i64** %10, align 8
  %412 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %413 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %412, i32 0, i32 0
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load i8*, i8** %20, align 8
  %418 = load i8*, i8** %15, align 8
  %419 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %420 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @print_line(i8* %409, i8 signext 32, i64 %410, i64* %411, i32 %416, i8* %417, i8* %418, i32 %421)
  br label %423

423:                                              ; preds = %408
  %424 = load i64, i64* %25, align 8
  %425 = add nsw i64 %424, 1
  store i64 %425, i64* %25, align 8
  br label %396

426:                                              ; preds = %396
  %427 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %428 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %429, align 8
  %431 = load i32, i32* %6, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = trunc i64 %435 to i32
  store i32 %436, i32* %27, align 4
  br label %437

437:                                              ; preds = %466, %426
  %438 = load i32, i32* %27, align 4
  %439 = sext i32 %438 to i64
  %440 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %441 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** %442, align 8
  %444 = load i32, i32* %6, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = icmp slt i64 %439, %448
  br i1 %449, label %450, label %469

450:                                              ; preds = %437
  %451 = load i8*, i8** %14, align 8
  %452 = load i32, i32* %27, align 4
  %453 = sext i32 %452 to i64
  %454 = load i64*, i64** %9, align 8
  %455 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %456 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %455, i32 0, i32 1
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = load i8*, i8** %18, align 8
  %461 = load i8*, i8** %15, align 8
  %462 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %463 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @print_line(i8* %451, i8 signext 45, i64 %453, i64* %454, i32 %459, i8* %460, i8* %461, i32 %464)
  br label %466

466:                                              ; preds = %450
  %467 = load i32, i32* %27, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %27, align 4
  br label %437

469:                                              ; preds = %437
  br label %470

470:                                              ; preds = %503, %469
  %471 = load i64, i64* %25, align 8
  %472 = load %struct.diff_ranges*, %struct.diff_ranges** %12, align 8
  %473 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %474, align 8
  %476 = load i32, i32* %6, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = icmp slt i64 %471, %480
  br i1 %481, label %482, label %486

482:                                              ; preds = %470
  %483 = load i64, i64* %25, align 8
  %484 = load i64, i64* %24, align 8
  %485 = icmp slt i64 %483, %484
  br label %486

486:                                              ; preds = %482, %470
  %487 = phi i1 [ false, %470 ], [ %485, %482 ]
  br i1 %487, label %488, label %506

488:                                              ; preds = %486
  %489 = load i8*, i8** %14, align 8
  %490 = load i64, i64* %25, align 8
  %491 = load i64*, i64** %10, align 8
  %492 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %493 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %492, i32 0, i32 0
  %494 = load %struct.TYPE_14__*, %struct.TYPE_14__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 8
  %497 = load i8*, i8** %19, align 8
  %498 = load i8*, i8** %15, align 8
  %499 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %500 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @print_line(i8* %489, i8 signext 43, i64 %490, i64* %491, i32 %496, i8* %497, i8* %498, i32 %501)
  br label %503

503:                                              ; preds = %488
  %504 = load i64, i64* %25, align 8
  %505 = add nsw i64 %504, 1
  store i64 %505, i64* %25, align 8
  br label %470

506:                                              ; preds = %486
  %507 = load i32, i32* %6, align 4
  %508 = add i32 %507, 1
  store i32 %508, i32* %6, align 4
  br label %374

509:                                              ; preds = %393
  br label %510

510:                                              ; preds = %529, %509
  %511 = load i64, i64* %25, align 8
  %512 = load i64, i64* %24, align 8
  %513 = icmp slt i64 %511, %512
  br i1 %513, label %514, label %532

514:                                              ; preds = %510
  %515 = load i8*, i8** %14, align 8
  %516 = load i64, i64* %25, align 8
  %517 = load i64*, i64** %10, align 8
  %518 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %519 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %518, i32 0, i32 0
  %520 = load %struct.TYPE_14__*, %struct.TYPE_14__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 8
  %523 = load i8*, i8** %20, align 8
  %524 = load i8*, i8** %15, align 8
  %525 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %526 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @print_line(i8* %515, i8 signext 32, i64 %516, i64* %517, i32 %522, i8* %523, i8* %524, i32 %527)
  br label %529

529:                                              ; preds = %514
  %530 = load i64, i64* %25, align 8
  %531 = add nsw i64 %530, 1
  store i64 %531, i64* %25, align 8
  br label %510

532:                                              ; preds = %510
  br label %533

533:                                              ; preds = %532, %227
  %534 = load i32, i32* %5, align 4
  %535 = add i32 %534, 1
  store i32 %535, i32* %5, align 4
  br label %157

536:                                              ; preds = %157
  %537 = load i64*, i64** %9, align 8
  %538 = call i32 @free(i64* %537)
  %539 = load i64*, i64** %10, align 8
  %540 = call i32 @free(i64* %539)
  br label %541

541:                                              ; preds = %536, %72
  ret void
}

declare dso_local i8* @output_prefix(%struct.diff_options*) #1

declare dso_local i8* @diff_get_color(i32, i32) #1

declare dso_local i32 @fill_line_ends(i32, %struct.TYPE_14__*, i64*, i64**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @print_line(i8*, i8 signext, i64, i64*, i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
