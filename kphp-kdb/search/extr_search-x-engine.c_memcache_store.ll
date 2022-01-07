; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"mc_store: op=%d, key=\22%s\22, flags=%d, expire=%d, bytes=%d, noreply=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"item%d#%d,%d \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"item%d_%d#%d,%d \00", align 1
@update_queries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"store: item_id=%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ate%d_%d \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ate%d \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"p = %d, *key=%c\0A\00", align 1
@MAX_RATES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"rates%d_%d \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"rates%d \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"hash%d_%d \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"hash%d \00", align 1
@minor_update_queries = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"store: item_id=%016llx, cur_op = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 0, i64* %20, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %27 = load i64, i64* @verbosity, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %7
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %23, align 4
  %37 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %7
  store i32 0, i32* %18, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp sge i32 %39, 65536
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -2, i32* %8, align 4
  br label %241

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %87

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 65536
  br i1 %50, label %51, label %87

51:                                               ; preds = %48
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %16, i32* %17)
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %19, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %18, i32* %19, i32* %16, i32* %17)
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32, i32* %19, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65, %55
  %69 = load i32, i32* @update_queries, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @update_queries, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = shl i64 %75, 32
  %77 = load i32, i32* %18, align 4
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  br label %83

80:                                               ; preds = %68
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %80, %73
  %84 = phi i64 [ %79, %73 ], [ %82, %80 ]
  store i64 %84, i64* %20, align 8
  %85 = load i64, i64* %20, align 8
  %86 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %87

87:                                               ; preds = %83, %65, %62, %58, %48, %45, %42
  %88 = load i32, i32* %22, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %222, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %222

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %222

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %97, 256
  br i1 %98, label %99, label %222

99:                                               ; preds = %96
  store i32 0, i32* %24, align 4
  store i32 0, i32* %18, align 4
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %18, i32* %19)
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %19, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 1, i32* %24, align 4
  br label %121

111:                                              ; preds = %107, %104, %99
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %19)
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* %19, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %18, align 4
  store i32 1, i32* %24, align 4
  br label %120

120:                                              ; preds = %119, %116, %111
  br label %121

121:                                              ; preds = %120, %110
  %122 = load i32, i32* %24, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = load i8*, i8** %11, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @get_sorting_mode(i8 signext %126)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = load i8*, i8** %11, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %129, i32 %132)
  %134 = load i32, i32* %25, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %124
  %137 = load i32, i32* %25, align 4
  %138 = load i32, i32* @MAX_RATES, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %25, align 4
  %142 = add nsw i32 %141, 1
  br label %144

143:                                              ; preds = %136, %124
  br label %144

144:                                              ; preds = %143, %140
  %145 = phi i32 [ %142, %140 ], [ 0, %143 ]
  store i32 %145, i32* %24, align 4
  br label %146

146:                                              ; preds = %144, %121
  %147 = load i32, i32* %24, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %146
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %18, i32* %19)
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %162

153:                                              ; preds = %149
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i32, i32* %19, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @MAX_RATES, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %24, align 4
  br label %173

162:                                              ; preds = %156, %153, %149, %146
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %19)
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i32, i32* %19, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  store i32 0, i32* %18, align 4
  %170 = load i32, i32* @MAX_RATES, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %24, align 4
  br label %172

172:                                              ; preds = %169, %166, %162
  br label %173

173:                                              ; preds = %172, %159
  %174 = load i32, i32* %24, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %173
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* %18, i32* %19)
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* %19, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* @MAX_RATES, align 4
  %188 = add nsw i32 %187, 2
  store i32 %188, i32* %24, align 4
  br label %200

189:                                              ; preds = %183, %180, %176, %173
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %19)
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load i32, i32* %19, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  store i32 0, i32* %18, align 4
  %197 = load i32, i32* @MAX_RATES, align 4
  %198 = add nsw i32 %197, 2
  store i32 %198, i32* %24, align 4
  br label %199

199:                                              ; preds = %196, %193, %189
  br label %200

200:                                              ; preds = %199, %186
  %201 = load i32, i32* %24, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %200
  %204 = load i32, i32* @minor_update_queries, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* @minor_update_queries, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %206 = load i32, i32* %24, align 4
  store i32 %206, i32* %21, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %203
  %210 = load i32, i32* %19, align 4
  %211 = sext i32 %210 to i64
  %212 = shl i64 %211, 32
  %213 = load i32, i32* %18, align 4
  %214 = zext i32 %213 to i64
  %215 = add nsw i64 %212, %214
  br label %219

216:                                              ; preds = %203
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  br label %219

219:                                              ; preds = %216, %209
  %220 = phi i64 [ %215, %209 ], [ %218, %216 ]
  store i64 %220, i64* %20, align 8
  store i32 1, i32* %22, align 4
  br label %221

221:                                              ; preds = %219, %200
  br label %222

222:                                              ; preds = %221, %96, %93, %90, %87
  %223 = load i64, i64* %20, align 8
  %224 = load i32, i32* %21, align 4
  %225 = call i32 (i32, i8*, i64, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i64 %223, i32 %224)
  store i32 0, i32* %26, align 4
  %226 = load i32, i32* %22, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load %struct.connection*, %struct.connection** %9, align 8
  %230 = load i64, i64* %20, align 8
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @do_store(%struct.connection* %229, i64 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  store i32 %235, i32* %26, align 4
  br label %236

236:                                              ; preds = %228, %222
  %237 = load i32, i32* %26, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store i32 1, i32* %8, align 4
  br label %241

240:                                              ; preds = %236
  store i32 0, i32* %8, align 4
  br label %241

241:                                              ; preds = %240, %239, %41
  %242 = load i32, i32* %8, align 4
  ret i32 %242
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @get_sorting_mode(i8 signext) #1

declare dso_local i32 @do_store(%struct.connection*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
