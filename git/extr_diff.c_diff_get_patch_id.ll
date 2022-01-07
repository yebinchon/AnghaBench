; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_get_patch_id.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_get_patch_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 (i32, i32*)*, i32 (i32*, i32, i32)*, i32 (i32*)* }
%struct.diff_options = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.object_id = type { i32 }
%struct.patch_id_t = type { i32, i64, i32* }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@the_hash_algo = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"internal diff status error\00", align 1
@DIFF_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"diff--git\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"b/\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"newfilemode\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"---/dev/null\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"+++b/\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"deletedfilemode\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"---a/\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"+++/dev/null\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"unable to read files to diff\00", align 1
@discard_hunk_line = common dso_local global i32 0, align 4
@patch_id_consume = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"unable to generate patch-id diff for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, %struct.object_id*, i32, i32)* @diff_get_patch_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_get_patch_id(%struct.diff_options* %0, %struct.object_id* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.diff_queue_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.patch_id_t, align 8
  %14 = alloca %struct.patch_id_t, align 8
  %15 = alloca %struct.patch_id_t, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.diff_filepair*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %10, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = call i32 %23(i32* %12)
  %25 = call i32 @memset(%struct.patch_id_t* %13, i32 0, i32 24)
  %26 = getelementptr inbounds %struct.patch_id_t, %struct.patch_id_t* %13, i32 0, i32 2
  store i32* %12, i32** %26, align 8
  %27 = load %struct.object_id*, %struct.object_id** %7, align 8
  %28 = call i32 @oidclr(%struct.object_id* %27)
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %329, %4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %32 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %332

35:                                               ; preds = %29
  %36 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %37 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %36, i32 0, i32 1
  %38 = load %struct.diff_filepair**, %struct.diff_filepair*** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %38, i64 %40
  %42 = load %struct.diff_filepair*, %struct.diff_filepair** %41, align 8
  store %struct.diff_filepair* %42, %struct.diff_filepair** %18, align 8
  %43 = call i32 @memset(%struct.patch_id_t* %14, i32 0, i32 24)
  %44 = call i32 @memset(%struct.patch_id_t* %15, i32 0, i32 24)
  %45 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %46 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %5, align 4
  br label %344

51:                                               ; preds = %35
  %52 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %53 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DIFF_STATUS_UNKNOWN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %329

58:                                               ; preds = %51
  %59 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %60 = call i64 @diff_unmodified_pair(%struct.diff_filepair* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %329

63:                                               ; preds = %58
  %64 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %65 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = call i64 @DIFF_FILE_VALID(%struct.TYPE_10__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %71 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @S_ISDIR(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %69, %63
  %78 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %79 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = call i64 @DIFF_FILE_VALID(%struct.TYPE_10__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %85 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @S_ISDIR(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83, %69
  br label %329

92:                                               ; preds = %83, %77
  %93 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %94 = call i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %329

97:                                               ; preds = %92
  %98 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %99 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %102 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @diff_fill_oid_info(%struct.TYPE_10__* %100, i32 %105)
  %107 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %108 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %111 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @diff_fill_oid_info(%struct.TYPE_10__* %109, i32 %114)
  %116 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %117 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %122 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @strlen(i32 %125)
  %127 = call i32 @remove_space(i32 %120, i32 %126)
  store i32 %127, i32* %19, align 4
  %128 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %129 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %128, i32 0, i32 2
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %134 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %133, i32 0, i32 2
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @strlen(i32 %137)
  %139 = call i32 @remove_space(i32 %132, i32 %138)
  store i32 %139, i32* %20, align 4
  %140 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %141 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %143, align 8
  %145 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %146 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %145, i32 0, i32 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = call i32 %144(i32* %12, i32 %149, i32 %150)
  %152 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %154, align 8
  %156 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %157 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %156, i32 0, i32 2
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %20, align 4
  %162 = call i32 %155(i32* %12, i32 %160, i32 %161)
  %163 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %164 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %97
  %170 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %172 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %171, i32 0, i32 2
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @patch_id_add_mode(i32* %12, i64 %175)
  %177 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %178 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %180, align 8
  %182 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %183 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %182, i32 0, i32 2
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %20, align 4
  %188 = call i32 %181(i32* %12, i32 %186, i32 %187)
  br label %240

189:                                              ; preds = %97
  %190 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %191 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %190, i32 0, i32 2
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %189
  %197 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %198 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %199 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %198, i32 0, i32 1
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @patch_id_add_mode(i32* %12, i64 %202)
  %204 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %206, align 8
  %208 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %209 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %208, i32 0, i32 1
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %19, align 4
  %214 = call i32 %207(i32* %12, i32 %212, i32 %213)
  %215 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %239

216:                                              ; preds = %189
  %217 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %219, align 8
  %221 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %222 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %221, i32 0, i32 1
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %19, align 4
  %227 = call i32 %220(i32* %12, i32 %225, i32 %226)
  %228 = call i32 @patch_id_add_string(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %230, align 8
  %232 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %233 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %232, i32 0, i32 2
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %20, align 4
  %238 = call i32 %231(i32* %12, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %216, %196
  br label %240

240:                                              ; preds = %239, %169
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %329

244:                                              ; preds = %240
  %245 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %246 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %245, i32 0, i32 0
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %249 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %248, i32 0, i32 1
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %249, align 8
  %251 = call i64 @fill_mmfile(%struct.TYPE_9__* %247, i32* %16, %struct.TYPE_10__* %250)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %262, label %253

253:                                              ; preds = %244
  %254 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %255 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %254, i32 0, i32 0
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %258 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %257, i32 0, i32 2
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %258, align 8
  %260 = call i64 @fill_mmfile(%struct.TYPE_9__* %256, i32* %17, %struct.TYPE_10__* %259)
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %253, %244
  %263 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  store i32 %263, i32* %5, align 4
  br label %344

264:                                              ; preds = %253
  %265 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %266 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %265, i32 0, i32 0
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %269 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %268, i32 0, i32 1
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %269, align 8
  %271 = call i64 @diff_filespec_is_binary(%struct.TYPE_9__* %267, %struct.TYPE_10__* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %264
  %274 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %275 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %274, i32 0, i32 0
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %278 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %277, i32 0, i32 2
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = call i64 @diff_filespec_is_binary(%struct.TYPE_9__* %276, %struct.TYPE_10__* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %307

282:                                              ; preds = %273, %264
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 2
  %285 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %284, align 8
  %286 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %287 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %286, i32 0, i32 1
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  %290 = call i32 @oid_to_hex(i32* %289)
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 %285(i32* %12, i32 %290, i32 %293)
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 2
  %297 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %296, align 8
  %298 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %299 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %298, i32 0, i32 2
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 2
  %302 = call i32 @oid_to_hex(i32* %301)
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 %297(i32* %12, i32 %302, i32 %305)
  br label %329

307:                                              ; preds = %273
  %308 = getelementptr inbounds %struct.patch_id_t, %struct.patch_id_t* %14, i32 0, i32 1
  store i64 0, i64* %308, align 8
  %309 = getelementptr inbounds %struct.patch_id_t, %struct.patch_id_t* %15, i32 0, i32 0
  store i32 3, i32* %309, align 8
  %310 = getelementptr inbounds %struct.patch_id_t, %struct.patch_id_t* %15, i32 0, i32 1
  store i64 0, i64* %310, align 8
  %311 = load i32, i32* @discard_hunk_line, align 4
  %312 = load i32, i32* @patch_id_consume, align 4
  %313 = call i64 @xdi_diff_outf(i32* %16, i32* %17, i32 %311, i32 %312, %struct.patch_id_t* %13, %struct.patch_id_t* %14, %struct.patch_id_t* %15)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %307
  %316 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %317 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %316, i32 0, i32 1
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %320)
  store i32 %321, i32* %5, align 4
  br label %344

322:                                              ; preds = %307
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load %struct.object_id*, %struct.object_id** %7, align 8
  %327 = call i32 @flush_one_hunk(%struct.object_id* %326, i32* %12)
  br label %328

328:                                              ; preds = %325, %322
  br label %329

329:                                              ; preds = %328, %282, %243, %96, %91, %62, %57
  %330 = load i32, i32* %11, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %11, align 4
  br label %29

332:                                              ; preds = %29
  %333 = load i32, i32* %9, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %332
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** @the_hash_algo, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 1
  %338 = load i32 (i32, i32*)*, i32 (i32, i32*)** %337, align 8
  %339 = load %struct.object_id*, %struct.object_id** %7, align 8
  %340 = getelementptr inbounds %struct.object_id, %struct.object_id* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 %338(i32 %341, i32* %12)
  br label %343

343:                                              ; preds = %335, %332
  store i32 0, i32* %5, align 4
  br label %344

344:                                              ; preds = %343, %315, %262, %49
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

declare dso_local i32 @memset(%struct.patch_id_t*, i32, i32) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @diff_unmodified_pair(%struct.diff_filepair*) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.TYPE_10__*) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair*) #1

declare dso_local i32 @diff_fill_oid_info(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @remove_space(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @patch_id_add_string(i32*, i8*) #1

declare dso_local i32 @patch_id_add_mode(i32*, i64) #1

declare dso_local i64 @fill_mmfile(%struct.TYPE_9__*, i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @diff_filespec_is_binary(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @xdi_diff_outf(i32*, i32*, i32, i32, %struct.patch_id_t*, %struct.patch_id_t*, %struct.patch_id_t*) #1

declare dso_local i32 @flush_one_hunk(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
