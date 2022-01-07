; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_show_dirstat.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_show_dirstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i64, i32, i64 }
%struct.diff_options = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.dirstat_dir = type { i32, %struct.TYPE_11__*, i64, i32, i32 }
%struct.TYPE_11__ = type { i8*, i64 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@CHECK_SIZE_ONLY = common dso_local global i32 0, align 4
@dirstat_compare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*)* @show_dirstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dirstat(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.dirstat_dir, align 8
  %6 = alloca %struct.diff_queue_struct*, align 8
  %7 = alloca %struct.diff_filepair*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %6, align 8
  %12 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  %13 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %16 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %226, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %27 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %229

30:                                               ; preds = %24
  %31 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %32 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %31, i32 0, i32 1
  %33 = load %struct.diff_filepair**, %struct.diff_filepair*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %33, i64 %35
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %36, align 8
  store %struct.diff_filepair* %37, %struct.diff_filepair** %7, align 8
  %38 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %39 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %46 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %56

50:                                               ; preds = %30
  %51 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %52 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi i8* [ %49, %44 ], [ %55, %50 ]
  store i8* %57, i8** %8, align 8
  %58 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %59 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %56
  %65 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %66 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %73 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %77 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = call i64 @oideq(i32* %75, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i64 0, i64* %11, align 8
  br label %195

83:                                               ; preds = %71, %64, %56
  %84 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %85 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i64 1, i64* %11, align 8
  br label %195

90:                                               ; preds = %83
  %91 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %92 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = call i64 @DIFF_FILE_VALID(%struct.TYPE_10__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %135

96:                                               ; preds = %90
  %97 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %98 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = call i64 @DIFF_FILE_VALID(%struct.TYPE_10__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %96
  %103 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %104 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %107 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @diff_populate_filespec(i32 %105, %struct.TYPE_10__* %108, i32 0)
  %110 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %111 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %114 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = call i32 @diff_populate_filespec(i32 %112, %struct.TYPE_10__* %115, i32 0)
  %117 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %118 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %121 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %124 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = call i32 @diffcore_count_changes(i32 %119, %struct.TYPE_10__* %122, %struct.TYPE_10__* %125, i32* null, i32* null, i64* %9, i64* %10)
  %127 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %128 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = call i32 @diff_free_filespec_data(%struct.TYPE_10__* %129)
  %131 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %132 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = call i32 @diff_free_filespec_data(%struct.TYPE_10__* %133)
  br label %181

135:                                              ; preds = %96, %90
  %136 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %137 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = call i64 @DIFF_FILE_VALID(%struct.TYPE_10__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %143 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %146 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* @CHECK_SIZE_ONLY, align 4
  %149 = call i32 @diff_populate_filespec(i32 %144, %struct.TYPE_10__* %147, i32 %148)
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %150 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %151 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = call i32 @diff_free_filespec_data(%struct.TYPE_10__* %152)
  br label %180

154:                                              ; preds = %135
  %155 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %156 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = call i64 @DIFF_FILE_VALID(%struct.TYPE_10__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %178

160:                                              ; preds = %154
  %161 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %162 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %165 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %164, i32 0, i32 1
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load i32, i32* @CHECK_SIZE_ONLY, align 4
  %168 = call i32 @diff_populate_filespec(i32 %163, %struct.TYPE_10__* %166, i32 %167)
  store i64 0, i64* %9, align 8
  %169 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %170 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %169, i32 0, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %10, align 8
  %174 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %175 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %174, i32 0, i32 1
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = call i32 @diff_free_filespec_data(%struct.TYPE_10__* %176)
  br label %179

178:                                              ; preds = %154
  br label %226

179:                                              ; preds = %160
  br label %180

180:                                              ; preds = %179, %141
  br label %181

181:                                              ; preds = %180, %102
  %182 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %183 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %182, i32 0, i32 0
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = sub i64 %186, %187
  %189 = load i64, i64* %10, align 8
  %190 = add i64 %188, %189
  store i64 %190, i64* %11, align 8
  %191 = load i64, i64* %11, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %181
  store i64 1, i64* %11, align 8
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194, %89, %82
  %196 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 1
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  %201 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @ALLOC_GROW(%struct.TYPE_11__* %197, i32 %200, i64 %202)
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 1
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  store i8* %204, i8** %211, align 8
  %212 = load i64, i64* %11, align 8
  %213 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 1
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  store i64 %212, i64* %219, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* %4, align 8
  %222 = add i64 %221, %220
  store i64 %222, i64* %4, align 8
  %223 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %195, %178
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %3, align 4
  br label %24

229:                                              ; preds = %24
  %230 = load i64, i64* %4, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  br label %244

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 1
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %5, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = load i32, i32* @dirstat_compare, align 4
  %240 = call i32 @QSORT(%struct.TYPE_11__* %235, i64 %238, i32 %239)
  %241 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %242 = load i64, i64* %4, align 8
  %243 = call i32 @gather_dirstat(%struct.diff_options* %241, %struct.dirstat_dir* %5, i64 %242, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %244

244:                                              ; preds = %233, %232
  ret void
}

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.TYPE_10__*) #1

declare dso_local i32 @diff_populate_filespec(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @diffcore_count_changes(i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @diff_free_filespec_data(%struct.TYPE_10__*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @QSORT(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @gather_dirstat(%struct.diff_options*, %struct.dirstat_dir*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
