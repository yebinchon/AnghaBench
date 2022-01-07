; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_read_counter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i64, i32, i32, i32, i32, i32, i32, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8* }

@index_version = common dso_local global i32 0, align 4
@FORCE_COUNTER_TYPE = common dso_local global i64 0, align 8
@MAX_AGE = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@MAX_SEX_AGE = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Dropping old data about subcounters.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.counter* @read_counter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.counter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call %struct.counter* @malloc_counter(i32 0, i32 -1)
  store %struct.counter* %8, %struct.counter** %5, align 8
  %9 = load %struct.counter*, %struct.counter** %5, align 8
  %10 = getelementptr inbounds %struct.counter, %struct.counter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @index_version, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i8* (...) @readin_long()
  %19 = load %struct.counter*, %struct.counter** %5, align 8
  %20 = getelementptr inbounds %struct.counter, %struct.counter* %19, i32 0, i32 24
  store i8* %18, i8** %20, align 8
  br label %25

21:                                               ; preds = %1
  %22 = call i8* (...) @readin_int()
  %23 = load %struct.counter*, %struct.counter** %5, align 8
  %24 = getelementptr inbounds %struct.counter, %struct.counter* %23, i32 0, i32 24
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = call i8* (...) @readin_int()
  %27 = load %struct.counter*, %struct.counter** %5, align 8
  %28 = getelementptr inbounds %struct.counter, %struct.counter* %27, i32 0, i32 20
  store i8* %26, i8** %28, align 8
  %29 = call i8* (...) @readin_int()
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.counter*, %struct.counter** %5, align 8
  %32 = getelementptr inbounds %struct.counter, %struct.counter* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* @FORCE_COUNTER_TYPE, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load %struct.counter*, %struct.counter** %5, align 8
  %37 = getelementptr inbounds %struct.counter, %struct.counter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, -65536
  %40 = load %struct.counter*, %struct.counter** %5, align 8
  %41 = getelementptr inbounds %struct.counter, %struct.counter* %40, i32 0, i32 24
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @get_cnt_type(i8* %42)
  %44 = or i32 %39, %43
  %45 = load %struct.counter*, %struct.counter** %5, align 8
  %46 = getelementptr inbounds %struct.counter, %struct.counter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %35, %25
  %48 = call i8* (...) @readin_int()
  %49 = load %struct.counter*, %struct.counter** %5, align 8
  %50 = getelementptr inbounds %struct.counter, %struct.counter* %49, i32 0, i32 23
  store i8* %48, i8** %50, align 8
  %51 = call i8* (...) @readin_int()
  %52 = load %struct.counter*, %struct.counter** %5, align 8
  %53 = getelementptr inbounds %struct.counter, %struct.counter* %52, i32 0, i32 22
  store i8* %51, i8** %53, align 8
  %54 = call i8* (...) @readin_int()
  %55 = load %struct.counter*, %struct.counter** %5, align 8
  %56 = getelementptr inbounds %struct.counter, %struct.counter* %55, i32 0, i32 21
  store i8* %54, i8** %56, align 8
  %57 = call i8* (...) @readin_int()
  %58 = load %struct.counter*, %struct.counter** %5, align 8
  %59 = getelementptr inbounds %struct.counter, %struct.counter* %58, i32 0, i32 20
  store i8* %57, i8** %59, align 8
  %60 = call i8* (...) @readin_int()
  %61 = load %struct.counter*, %struct.counter** %5, align 8
  %62 = getelementptr inbounds %struct.counter, %struct.counter* %61, i32 0, i32 19
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @index_version, align 4
  %64 = icmp sge i32 %63, 3
  br i1 %64, label %65, label %78

65:                                               ; preds = %47
  %66 = call i8* (...) @readin_int()
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.counter*, %struct.counter** %5, align 8
  %69 = getelementptr inbounds %struct.counter, %struct.counter* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = call i8* (...) @readin_int()
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.counter*, %struct.counter** %5, align 8
  %73 = getelementptr inbounds %struct.counter, %struct.counter* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = call i8* (...) @readin_int()
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.counter*, %struct.counter** %5, align 8
  %77 = getelementptr inbounds %struct.counter, %struct.counter* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %102

78:                                               ; preds = %47
  %79 = load i32, i32* @index_version, align 4
  %80 = icmp sge i32 %79, 2
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = call i8* (...) @readin_int()
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.counter*, %struct.counter** %5, align 8
  %85 = getelementptr inbounds %struct.counter, %struct.counter* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = call i8* (...) @readin_int()
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.counter*, %struct.counter** %5, align 8
  %89 = getelementptr inbounds %struct.counter, %struct.counter* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.counter*, %struct.counter** %5, align 8
  %91 = getelementptr inbounds %struct.counter, %struct.counter* %90, i32 0, i32 4
  store i32 -1, i32* %91, align 4
  br label %101

92:                                               ; preds = %78
  %93 = load %struct.counter*, %struct.counter** %5, align 8
  %94 = getelementptr inbounds %struct.counter, %struct.counter* %93, i32 0, i32 2
  store i32 -1, i32* %94, align 4
  %95 = load %struct.counter*, %struct.counter** %5, align 8
  %96 = getelementptr inbounds %struct.counter, %struct.counter* %95, i32 0, i32 3
  store i32 -1, i32* %96, align 8
  %97 = call i8* (...) @readin_int()
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.counter*, %struct.counter** %5, align 8
  %100 = getelementptr inbounds %struct.counter, %struct.counter* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %92, %81
  br label %102

102:                                              ; preds = %101, %65
  %103 = load %struct.counter*, %struct.counter** %5, align 8
  %104 = getelementptr inbounds %struct.counter, %struct.counter* %103, i32 0, i32 18
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @readin(i8* %106, i32 8)
  %108 = call i8* (...) @readin_int()
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %102
  %114 = load i32, i32* @MAX_AGE, align 4
  %115 = call i8* @read_list(i32 %114)
  %116 = load %struct.counter*, %struct.counter** %5, align 8
  %117 = getelementptr inbounds %struct.counter, %struct.counter* %116, i32 0, i32 17
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %113, %102
  %119 = load i32, i32* %6, align 4
  %120 = and i32 %119, 2
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* @MAX_MSTATUS, align 4
  %124 = call i8* @read_list(i32 %123)
  %125 = load %struct.counter*, %struct.counter** %5, align 8
  %126 = getelementptr inbounds %struct.counter, %struct.counter* %125, i32 0, i32 16
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %122, %118
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* @MAX_POLIT, align 4
  %133 = call i8* @read_list(i32 %132)
  %134 = load %struct.counter*, %struct.counter** %5, align 8
  %135 = getelementptr inbounds %struct.counter, %struct.counter* %134, i32 0, i32 15
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %127
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i32, i32* @MAX_SECTION, align 4
  %142 = call i8* @read_list(i32 %141)
  %143 = load %struct.counter*, %struct.counter** %5, align 8
  %144 = getelementptr inbounds %struct.counter, %struct.counter* %143, i32 0, i32 14
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %136
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, 16
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = call i8* (...) @read_list2()
  %151 = load %struct.counter*, %struct.counter** %5, align 8
  %152 = getelementptr inbounds %struct.counter, %struct.counter* %151, i32 0, i32 13
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, 32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32, i32* @MAX_SEX_AGE, align 4
  %159 = call i8* @read_list(i32 %158)
  %160 = load %struct.counter*, %struct.counter** %5, align 8
  %161 = getelementptr inbounds %struct.counter, %struct.counter* %160, i32 0, i32 12
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %157, %153
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, 64
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = call i8* (...) @read_list2()
  %168 = load %struct.counter*, %struct.counter** %5, align 8
  %169 = getelementptr inbounds %struct.counter, %struct.counter* %168, i32 0, i32 11
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i32, i32* %6, align 4
  %172 = and i32 %171, 128
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = call i8* (...) @read_list2()
  %176 = load %struct.counter*, %struct.counter** %5, align 8
  %177 = getelementptr inbounds %struct.counter, %struct.counter* %176, i32 0, i32 10
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %174, %170
  %179 = load i32, i32* %6, align 4
  %180 = and i32 %179, 256
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i32, i32* @MAX_SOURCE, align 4
  %184 = call i8* @read_list(i32 %183)
  %185 = load %struct.counter*, %struct.counter** %5, align 8
  %186 = getelementptr inbounds %struct.counter, %struct.counter* %185, i32 0, i32 9
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %182, %178
  %188 = load i32, i32* @index_version, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = call i8* (...) @readin_int()
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* @stderr, align 4
  %197 = call i32 @fprintf(i32 %196, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = call i32 @readin_skip(i32 %202)
  %204 = load %struct.counter*, %struct.counter** %5, align 8
  %205 = getelementptr inbounds %struct.counter, %struct.counter* %204, i32 0, i32 8
  store i8* null, i8** %205, align 8
  br label %210

206:                                              ; preds = %187
  %207 = call i8* (...) @readin_long()
  %208 = load %struct.counter*, %struct.counter** %5, align 8
  %209 = getelementptr inbounds %struct.counter, %struct.counter* %208, i32 0, i32 8
  store i8* %207, i8** %209, align 8
  br label %210

210:                                              ; preds = %206, %198
  %211 = load %struct.counter*, %struct.counter** %5, align 8
  %212 = getelementptr inbounds %struct.counter, %struct.counter* %211, i32 0, i32 8
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @ipopcount(i8* %213)
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %241

217:                                              ; preds = %210
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = mul i64 4, %219
  %221 = trunc i64 %220 to i32
  %222 = call i8** @zzmalloc(i32 %221)
  %223 = load %struct.counter*, %struct.counter** %5, align 8
  %224 = getelementptr inbounds %struct.counter, %struct.counter* %223, i32 0, i32 7
  store i8** %222, i8*** %224, align 8
  store i32 0, i32* %3, align 4
  br label %225

225:                                              ; preds = %237, %217
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %225
  %230 = call i8* (...) @readin_int()
  %231 = load %struct.counter*, %struct.counter** %5, align 8
  %232 = getelementptr inbounds %struct.counter, %struct.counter* %231, i32 0, i32 7
  %233 = load i8**, i8*** %232, align 8
  %234 = load i32, i32* %3, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  store i8* %230, i8** %236, align 8
  br label %237

237:                                              ; preds = %229
  %238 = load i32, i32* %3, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %3, align 4
  br label %225

240:                                              ; preds = %225
  br label %241

241:                                              ; preds = %240, %210
  %242 = call i32 (...) @readin_char()
  %243 = load %struct.counter*, %struct.counter** %5, align 8
  %244 = getelementptr inbounds %struct.counter, %struct.counter* %243, i32 0, i32 6
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %2, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = call i32 (...) @read_tree()
  %249 = load %struct.counter*, %struct.counter** %5, align 8
  %250 = getelementptr inbounds %struct.counter, %struct.counter* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 8
  br label %253

251:                                              ; preds = %241
  %252 = call i32 (...) @skip_tree()
  br label %253

253:                                              ; preds = %251, %247
  %254 = load %struct.counter*, %struct.counter** %5, align 8
  %255 = getelementptr inbounds %struct.counter, %struct.counter* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.counter*, %struct.counter** %5, align 8
  ret %struct.counter* %260
}

declare dso_local %struct.counter* @malloc_counter(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @readin_long(...) #1

declare dso_local i8* @readin_int(...) #1

declare dso_local i32 @get_cnt_type(i8*) #1

declare dso_local i32 @readin(i8*, i32) #1

declare dso_local i8* @read_list(i32) #1

declare dso_local i8* @read_list2(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @readin_skip(i32) #1

declare dso_local i32 @ipopcount(i8*) #1

declare dso_local i8** @zzmalloc(i32) #1

declare dso_local i32 @readin_char(...) #1

declare dso_local i32 @read_tree(...) #1

declare dso_local i32 @skip_tree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
