; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"memcache_get: key='%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"datedistr\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"intersect\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"subtract\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sumlist\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"sortedlist\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"entry_pos\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"entry_sublist_pos\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"counts\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"incr_value\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"free_block_stats\00", align 1
@MAX_RECORD_WORDS = common dso_local global i32 0, align 4
@FreeCnt = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"used_block_stats\00", align 1
@UsedCnt = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"allocation_stats\00", align 1
@NewAllocations = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [18 x i8] c"split_block_stats\00", align 1
@SplitBlocks = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @verbosity, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @eat_at(i8* %18, i32 %19, i8** %8, i32* %9)
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 9
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.connection*, %struct.connection** %5, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @exec_get_datedistr(%struct.connection* %28, i8* %29, i32 %30, i8* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %300

34:                                               ; preds = %23, %17
  %35 = load i32, i32* %9, align 4
  %36 = icmp sge i32 %35, 9
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load %struct.connection*, %struct.connection** %5, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @exec_get_intersect(%struct.connection* %42, i8* %43, i32 %44, i32 9, i8* %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %300

48:                                               ; preds = %37, %34
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 8
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load %struct.connection*, %struct.connection** %5, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @exec_get_intersect(%struct.connection* %56, i8* %57, i32 %58, i32 8, i8* %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %300

62:                                               ; preds = %51, %48
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 7
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load %struct.connection*, %struct.connection** %5, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @exec_get_intersect(%struct.connection* %70, i8* %71, i32 %72, i32 7, i8* %73, i32 %74)
  store i32 0, i32* %4, align 4
  br label %300

76:                                               ; preds = %65, %62
  %77 = load i32, i32* %9, align 4
  %78 = icmp sge i32 %77, 4
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = load %struct.connection*, %struct.connection** %5, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @exec_get_list(%struct.connection* %84, i8* %85, i32 %86, i8* %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %300

90:                                               ; preds = %79, %76
  %91 = load i32, i32* %9, align 4
  %92 = icmp sge i32 %91, 10
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = load %struct.connection*, %struct.connection** %5, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @exec_get_sorted_list(%struct.connection* %98, i8* %99, i32 %100, i8* %101, i32 %102)
  store i32 0, i32* %4, align 4
  br label %300

104:                                              ; preds = %93, %90
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 9
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 9)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load %struct.connection*, %struct.connection** %5, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @exec_get_entry_pos(%struct.connection* %112, i8* %113, i32 %114, i8* %115)
  store i32 0, i32* %4, align 4
  br label %300

117:                                              ; preds = %107, %104
  %118 = load i32, i32* %9, align 4
  %119 = icmp sge i32 %118, 17
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 17)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = load %struct.connection*, %struct.connection** %5, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @exec_get_entry_sublist_pos(%struct.connection* %125, i8* %126, i32 %127, i8* %128)
  store i32 0, i32* %4, align 4
  br label %300

130:                                              ; preds = %120, %117
  %131 = load i32, i32* %9, align 4
  %132 = icmp sge i32 %131, 5
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @strncmp(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = load %struct.connection*, %struct.connection** %5, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @exec_get_entry(%struct.connection* %138, i8* %139, i32 %140, i8* %141)
  store i32 0, i32* %4, align 4
  br label %300

143:                                              ; preds = %133, %130
  %144 = load i32, i32* %9, align 4
  %145 = icmp sge i32 %144, 5
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @strncmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = load %struct.connection*, %struct.connection** %5, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @exec_get_flags(%struct.connection* %151, i8* %152, i32 %153, i8* %154)
  store i32 0, i32* %4, align 4
  br label %300

156:                                              ; preds = %146, %143
  %157 = load i32, i32* %9, align 4
  %158 = icmp sge i32 %157, 5
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @strncmp(i8* %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %159
  %164 = load %struct.connection*, %struct.connection** %5, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @exec_get_value(%struct.connection* %164, i8* %165, i32 %166, i8* %167)
  store i32 0, i32* %4, align 4
  br label %300

169:                                              ; preds = %159, %156
  %170 = load i32, i32* %9, align 4
  %171 = icmp sge i32 %170, 4
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @strncmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %172
  %177 = load %struct.connection*, %struct.connection** %5, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i8*, i8** %6, align 8
  %181 = call i32 @exec_get_text(%struct.connection* %177, i8* %178, i32 %179, i8* %180)
  store i32 0, i32* %4, align 4
  br label %300

182:                                              ; preds = %172, %169
  %183 = load i32, i32* %9, align 4
  %184 = icmp sge i32 %183, 6
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 @strncmp(i8* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = load %struct.connection*, %struct.connection** %5, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i8*, i8** %6, align 8
  %194 = call i32 @exec_get_counts(%struct.connection* %190, i8* %191, i32 %192, i8* %193)
  store i32 0, i32* %4, align 4
  br label %300

195:                                              ; preds = %185, %182
  %196 = load i32, i32* %9, align 4
  %197 = icmp sge i32 %196, 5
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i8*, i8** %8, align 8
  %200 = call i32 @strncmp(i8* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %198
  %203 = load %struct.connection*, %struct.connection** %5, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @exec_get_count(%struct.connection* %203, i8* %204, i32 %205, i8* %206)
  store i32 0, i32* %4, align 4
  br label %300

208:                                              ; preds = %198, %195
  %209 = load i32, i32* %9, align 4
  %210 = icmp sge i32 %209, 10
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load i8*, i8** %8, align 8
  %213 = call i32 @strncmp(i8* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 10)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %211
  %216 = load %struct.connection*, %struct.connection** %5, align 8
  %217 = load i8*, i8** %8, align 8
  %218 = load i32, i32* %9, align 4
  %219 = load i8*, i8** %6, align 8
  %220 = call i32 @exec_get_incr_value(%struct.connection* %216, i8* %217, i32 %218, i8* %219)
  br label %221

221:                                              ; preds = %215, %211, %208
  %222 = load i32, i32* %9, align 4
  %223 = icmp sge i32 %222, 16
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = load i8*, i8** %8, align 8
  %226 = call i32 @strncmp(i8* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 16)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %224
  %229 = load %struct.connection*, %struct.connection** %5, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %233 = load i32, i32* @FreeCnt, align 4
  %234 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %235 = call i32 @return_one_key_list(%struct.connection* %229, i8* %230, i32 %231, i32 %232, i32 0, i32 %233, i32 %234)
  store i32 0, i32* %4, align 4
  br label %300

236:                                              ; preds = %224, %221
  %237 = load i32, i32* %9, align 4
  %238 = icmp sge i32 %237, 16
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = load i8*, i8** %8, align 8
  %241 = call i32 @strncmp(i8* %240, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 16)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %239
  %244 = load %struct.connection*, %struct.connection** %5, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %248 = load i32, i32* @UsedCnt, align 4
  %249 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %250 = call i32 @return_one_key_list(%struct.connection* %244, i8* %245, i32 %246, i32 %247, i32 0, i32 %248, i32 %249)
  store i32 0, i32* %4, align 4
  br label %300

251:                                              ; preds = %239, %236
  %252 = load i32, i32* %9, align 4
  %253 = icmp sge i32 %252, 16
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  %255 = load i8*, i8** %8, align 8
  %256 = call i32 @strncmp(i8* %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 16)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %254
  %259 = load %struct.connection*, %struct.connection** %5, align 8
  %260 = load i8*, i8** %6, align 8
  %261 = load i32, i32* %7, align 4
  %262 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %263 = load i32*, i32** @NewAllocations, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %267 = mul nsw i32 %266, 4
  %268 = call i32 @return_one_key_list(%struct.connection* %259, i8* %260, i32 %261, i32 %262, i32 0, i32 %265, i32 %267)
  store i32 0, i32* %4, align 4
  br label %300

269:                                              ; preds = %254, %251
  %270 = load i32, i32* %9, align 4
  %271 = icmp sge i32 %270, 17
  br i1 %271, label %272, label %284

272:                                              ; preds = %269
  %273 = load i8*, i8** %8, align 8
  %274 = call i32 @strncmp(i8* %273, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 17)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %272
  %277 = load %struct.connection*, %struct.connection** %5, align 8
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %281 = load i32, i32* @SplitBlocks, align 4
  %282 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %283 = call i32 @return_one_key_list(%struct.connection* %277, i8* %278, i32 %279, i32 %280, i32 0, i32 %281, i32 %282)
  store i32 0, i32* %4, align 4
  br label %300

284:                                              ; preds = %272, %269
  %285 = load i32, i32* %9, align 4
  %286 = icmp sge i32 %285, 5
  br i1 %286, label %287, label %299

287:                                              ; preds = %284
  %288 = load i8*, i8** %8, align 8
  %289 = call i32 @strncmp(i8* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 5)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %287
  %292 = load %struct.connection*, %struct.connection** %5, align 8
  %293 = call i32 @lists_prepare_stats(%struct.connection* %292)
  store i32 %293, i32* %10, align 4
  %294 = load %struct.connection*, %struct.connection** %5, align 8
  %295 = load i8*, i8** %6, align 8
  %296 = load i32, i32* @stats_buff, align 4
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @return_one_key(%struct.connection* %294, i8* %295, i32 %296, i32 %297)
  store i32 0, i32* %4, align 4
  br label %300

299:                                              ; preds = %287, %284
  store i32 0, i32* %4, align 4
  br label %300

300:                                              ; preds = %299, %291, %276, %258, %243, %228, %202, %189, %176, %163, %150, %137, %124, %111, %97, %83, %69, %55, %41, %27
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @exec_get_datedistr(%struct.connection*, i8*, i32, i8*, i32) #1

declare dso_local i32 @exec_get_intersect(%struct.connection*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @exec_get_list(%struct.connection*, i8*, i32, i8*, i32) #1

declare dso_local i32 @exec_get_sorted_list(%struct.connection*, i8*, i32, i8*, i32) #1

declare dso_local i32 @exec_get_entry_pos(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_entry_sublist_pos(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_entry(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_flags(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_value(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_text(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_counts(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_count(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @exec_get_incr_value(%struct.connection*, i8*, i32, i8*) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lists_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
