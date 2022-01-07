; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_use_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_use_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.packed_git = type { i64, i32, %struct.pack_window*, i32, i32 }
%struct.pack_window = type { i64, i64, i64, i32, i64, %struct.pack_window* }

@.str = private unnamed_addr constant [31 x i8] c"packfile %s cannot be accessed\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"offset beyond end of packfile (truncated pack?)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"offset before end of packfile (broken .idx?)\00", align 1
@packed_git_window_size = common dso_local global i32 0, align 4
@pack_mapped = common dso_local global i64 0, align 8
@packed_git_limit = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"packfile %s cannot be mapped\00", align 1
@pack_mmap_calls = common dso_local global i32 0, align 4
@pack_open_windows = common dso_local global i64 0, align 8
@peak_pack_mapped = common dso_local global i64 0, align 8
@peak_pack_open_windows = common dso_local global i64 0, align 8
@pack_used_ctr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @use_pack(%struct.packed_git* %0, %struct.pack_window** %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca %struct.pack_window**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.pack_window*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.packed_git* %0, %struct.packed_git** %5, align 8
  store %struct.pack_window** %1, %struct.pack_window*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.pack_window**, %struct.pack_window*** %6, align 8
  %13 = load %struct.pack_window*, %struct.pack_window** %12, align 8
  store %struct.pack_window* %13, %struct.pack_window** %9, align 8
  %14 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %15 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %4
  %19 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %20 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %25 = call i64 @open_packed_git(%struct.packed_git* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %29 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %23, %18, %4
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %35 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = icmp sgt i64 %33, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i64, i64* %7, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 (i8*, ...) @die(i8* %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %54 = icmp ne %struct.pack_window* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @in_window(%struct.pack_window* %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %221, label %60

60:                                               ; preds = %55, %52
  %61 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %62 = icmp ne %struct.pack_window* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %65 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %70 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %69, i32 0, i32 2
  %71 = load %struct.pack_window*, %struct.pack_window** %70, align 8
  store %struct.pack_window* %71, %struct.pack_window** %9, align 8
  br label %72

72:                                               ; preds = %82, %68
  %73 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %74 = icmp ne %struct.pack_window* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @in_window(%struct.pack_window* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %86

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %84 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %83, i32 0, i32 5
  %85 = load %struct.pack_window*, %struct.pack_window** %84, align 8
  store %struct.pack_window* %85, %struct.pack_window** %9, align 8
  br label %72

86:                                               ; preds = %80, %72
  %87 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %88 = icmp ne %struct.pack_window* %87, null
  br i1 %88, label %220, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @packed_git_window_size, align 4
  %91 = sdiv i32 %90, 2
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %10, align 8
  %93 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %94 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %99 = call i64 @open_packed_git(%struct.packed_git* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %103 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %97, %89
  %107 = call %struct.pack_window* @xcalloc(i32 1, i32 48)
  store %struct.pack_window* %107, %struct.pack_window** %9, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %10, align 8
  %110 = udiv i64 %108, %109
  %111 = load i64, i64* %10, align 8
  %112 = mul i64 %110, %111
  %113 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %114 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %116 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %119 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i32, i32* @packed_git_window_size, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp sgt i64 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %106
  %127 = load i32, i32* @packed_git_window_size, align 4
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %126, %106
  %130 = load i64, i64* %11, align 8
  %131 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %132 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %134 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @pack_mapped, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* @pack_mapped, align 8
  br label %138

138:                                              ; preds = %148, %129
  %139 = load i64, i64* @packed_git_limit, align 8
  %140 = load i64, i64* @pack_mapped, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %144 = call i64 @unuse_one_window(%struct.packed_git* %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i1 [ false, %138 ], [ %145, %142 ]
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  br label %138

149:                                              ; preds = %146
  %150 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %151 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @PROT_READ, align 4
  %154 = load i32, i32* @MAP_PRIVATE, align 4
  %155 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %156 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %159 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @xmmap_gently(i32* null, i64 %152, i32 %153, i32 %154, i32 %157, i64 %160)
  %162 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %163 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %165 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MAP_FAILED, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %149
  %170 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %171 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @die_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %169, %149
  %175 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %176 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %174
  %180 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %181 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %184 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %179
  %188 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %189 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %194 = call i32 @close_pack_fd(%struct.packed_git* %193)
  br label %195

195:                                              ; preds = %192, %187, %179, %174
  %196 = load i32, i32* @pack_mmap_calls, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @pack_mmap_calls, align 4
  %198 = load i64, i64* @pack_open_windows, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* @pack_open_windows, align 8
  %200 = load i64, i64* @pack_mapped, align 8
  %201 = load i64, i64* @peak_pack_mapped, align 8
  %202 = icmp sgt i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = load i64, i64* @pack_mapped, align 8
  store i64 %204, i64* @peak_pack_mapped, align 8
  br label %205

205:                                              ; preds = %203, %195
  %206 = load i64, i64* @pack_open_windows, align 8
  %207 = load i64, i64* @peak_pack_open_windows, align 8
  %208 = icmp sgt i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i64, i64* @pack_open_windows, align 8
  store i64 %210, i64* @peak_pack_open_windows, align 8
  br label %211

211:                                              ; preds = %209, %205
  %212 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %213 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %212, i32 0, i32 2
  %214 = load %struct.pack_window*, %struct.pack_window** %213, align 8
  %215 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %216 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %215, i32 0, i32 5
  store %struct.pack_window* %214, %struct.pack_window** %216, align 8
  %217 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %218 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %219 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %218, i32 0, i32 2
  store %struct.pack_window* %217, %struct.pack_window** %219, align 8
  br label %220

220:                                              ; preds = %211, %86
  br label %221

221:                                              ; preds = %220, %55
  %222 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %223 = load %struct.pack_window**, %struct.pack_window*** %6, align 8
  %224 = load %struct.pack_window*, %struct.pack_window** %223, align 8
  %225 = icmp ne %struct.pack_window* %222, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load i32, i32* @pack_used_ctr, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* @pack_used_ctr, align 4
  %229 = sext i32 %227 to i64
  %230 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %231 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %230, i32 0, i32 4
  store i64 %229, i64* %231, align 8
  %232 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %233 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 8
  %236 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %237 = load %struct.pack_window**, %struct.pack_window*** %6, align 8
  store %struct.pack_window* %236, %struct.pack_window** %237, align 8
  br label %238

238:                                              ; preds = %226, %221
  %239 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %240 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %7, align 8
  %243 = sub nsw i64 %242, %241
  store i64 %243, i64* %7, align 8
  %244 = load i64*, i64** %8, align 8
  %245 = icmp ne i64* %244, null
  br i1 %245, label %246, label %254

246:                                              ; preds = %238
  %247 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %248 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %7, align 8
  %251 = call i64 @xsize_t(i64 %250)
  %252 = sub i64 %249, %251
  %253 = load i64*, i64** %8, align 8
  store i64 %252, i64* %253, align 8
  br label %254

254:                                              ; preds = %246, %238
  %255 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %256 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %7, align 8
  %259 = add nsw i64 %257, %258
  %260 = inttoptr i64 %259 to i8*
  ret i8* %260
}

declare dso_local i64 @open_packed_git(%struct.packed_git*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @in_window(%struct.pack_window*, i64) #1

declare dso_local %struct.pack_window* @xcalloc(i32, i32) #1

declare dso_local i64 @unuse_one_window(%struct.packed_git*) #1

declare dso_local i64 @xmmap_gently(i32*, i64, i32, i32, i32, i64) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local i32 @close_pack_fd(%struct.packed_git*) #1

declare dso_local i64 @xsize_t(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
