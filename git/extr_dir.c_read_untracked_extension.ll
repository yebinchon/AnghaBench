; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_read_untracked_extension.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_read_untracked_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.untracked_cache = type { i32, i32, i32, i32, i32, i32 }
%struct.read_data = type { i8*, i8*, i32, i8*, i8*, i8*, i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@info_exclude_stat = common dso_local global i32 0, align 4
@excludes_file_stat = common dso_local global i32 0, align 4
@dir_flags = common dso_local global i32 0, align 4
@set_check_only = common dso_local global i32 0, align 4
@read_stat = common dso_local global i32 0, align 4
@read_oid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.untracked_cache* @read_untracked_extension(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.untracked_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.untracked_cache*, align 8
  %7 = alloca %struct.read_data, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %9, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  store i32 4, i32* %15, align 4
  %24 = load i32, i32* %14, align 4
  %25 = mul i32 2, %24
  %26 = add i32 4, %25
  store i32 %26, i32* %16, align 4
  %27 = load i64, i64* %5, align 8
  %28 = icmp ule i64 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %2
  store %struct.untracked_cache* null, %struct.untracked_cache** %3, align 8
  br label %252

36:                                               ; preds = %29
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %9, align 8
  %39 = call i32 @decode_varint(i8** %8)
  store i32 %39, i32* %11, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store %struct.untracked_cache* null, %struct.untracked_cache** %3, align 8
  br label %252

47:                                               ; preds = %36
  %48 = load i8*, i8** %8, align 8
  store i8* %48, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %16, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ugt i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  store %struct.untracked_cache* null, %struct.untracked_cache** %3, align 8
  br label %252

61:                                               ; preds = %47
  %62 = call %struct.untracked_cache* @xcalloc(i32 1, i32 24)
  store %struct.untracked_cache* %62, %struct.untracked_cache** %6, align 8
  %63 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %64 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %63, i32 0, i32 5
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @strbuf_init(i32* %64, i32 %65)
  %67 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %68 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %67, i32 0, i32 5
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @strbuf_add(i32* %68, i8* %69, i32 %70)
  %72 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %73 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %72, i32 0, i32 4
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* @info_exclude_stat, align 4
  %76 = call i32 @ouc_offset(i32 %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = call i32 @load_oid_stat(i32* %73, i8* %78, i8* %80)
  %82 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %83 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %82, i32 0, i32 3
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @excludes_file_stat, align 4
  %86 = call i32 @ouc_offset(i32 %85)
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = load i32, i32* %14, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = call i32 @load_oid_stat(i32* %83, i8* %88, i8* %93)
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @dir_flags, align 4
  %97 = call i32 @ouc_offset(i32 %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = call i32 @get_be32(i8* %99)
  %101 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %102 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %16, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @xstrdup(i8* %107)
  %109 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %110 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %16, align 4
  %112 = zext i32 %111 to i64
  %113 = load i8*, i8** %13, align 8
  %114 = call i64 @strlen(i8* %113)
  %115 = add nsw i64 %112, %114
  %116 = add nsw i64 %115, 1
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %8, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = icmp uge i8* %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %61
  br label %243

123:                                              ; preds = %61
  %124 = call i32 @decode_varint(i8** %8)
  store i32 %124, i32* %12, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = icmp ugt i8* %125, %126
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128, %123
  br label %243

132:                                              ; preds = %128
  %133 = call i8* (...) @ewah_new()
  %134 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 5
  store i8* %133, i8** %134, align 8
  %135 = call i8* (...) @ewah_new()
  %136 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 4
  store i8* %135, i8** %136, align 8
  %137 = call i8* (...) @ewah_new()
  %138 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 3
  store i8* %137, i8** %138, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 0
  store i8* %139, i8** %140, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 1
  store i8* %141, i8** %142, align 8
  %143 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 2
  store i32 0, i32* %143, align 8
  %144 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @ALLOC_ARRAY(i32 %145, i32 %146)
  %148 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %149 = getelementptr inbounds %struct.untracked_cache, %struct.untracked_cache* %148, i32 0, i32 0
  %150 = call i64 @read_one_dir(i32* %149, %struct.read_data* %7)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %132
  %153 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %152, %132
  br label %230

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %8, align 8
  %161 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 5
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @ewah_read_mmap(i8* %162, i8* %163, i32 %169)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %158
  br label %230

174:                                              ; preds = %158
  %175 = load i32, i32* %12, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  store i8* %178, i8** %8, align 8
  %179 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 4
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @ewah_read_mmap(i8* %180, i8* %181, i32 %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %174
  br label %230

192:                                              ; preds = %174
  %193 = load i32, i32* %12, align 4
  %194 = load i8*, i8** %8, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %8, align 8
  %197 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = load i8*, i8** %8, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i32 @ewah_read_mmap(i8* %198, i8* %199, i32 %205)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %192
  br label %230

210:                                              ; preds = %192
  %211 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* @set_check_only, align 4
  %214 = call i32 @ewah_each_bit(i8* %212, i32 %213, %struct.read_data* %7)
  %215 = load i8*, i8** %8, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 0
  store i8* %218, i8** %219, align 8
  %220 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 5
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* @read_stat, align 4
  %223 = call i32 @ewah_each_bit(i8* %221, i32 %222, %struct.read_data* %7)
  %224 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 3
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* @read_oid, align 4
  %227 = call i32 @ewah_each_bit(i8* %225, i32 %226, %struct.read_data* %7)
  %228 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  store i8* %229, i8** %8, align 8
  br label %230

230:                                              ; preds = %210, %209, %191, %173, %157
  %231 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @free(i32 %232)
  %234 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 5
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @ewah_free(i8* %235)
  %237 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @ewah_free(i8* %238)
  %240 = getelementptr inbounds %struct.read_data, %struct.read_data* %7, i32 0, i32 3
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @ewah_free(i8* %241)
  br label %243

243:                                              ; preds = %230, %131, %122
  %244 = load i8*, i8** %8, align 8
  %245 = load i8*, i8** %9, align 8
  %246 = icmp ne i8* %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  %249 = call i32 @free_untracked_cache(%struct.untracked_cache* %248)
  store %struct.untracked_cache* null, %struct.untracked_cache** %6, align 8
  br label %250

250:                                              ; preds = %247, %243
  %251 = load %struct.untracked_cache*, %struct.untracked_cache** %6, align 8
  store %struct.untracked_cache* %251, %struct.untracked_cache** %3, align 8
  br label %252

252:                                              ; preds = %250, %60, %46, %35
  %253 = load %struct.untracked_cache*, %struct.untracked_cache** %3, align 8
  ret %struct.untracked_cache* %253
}

declare dso_local i32 @decode_varint(i8**) #1

declare dso_local %struct.untracked_cache* @xcalloc(i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @strbuf_add(i32*, i8*, i32) #1

declare dso_local i32 @load_oid_stat(i32*, i8*, i8*) #1

declare dso_local i32 @ouc_offset(i32) #1

declare dso_local i32 @get_be32(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @ewah_new(...) #1

declare dso_local i32 @ALLOC_ARRAY(i32, i32) #1

declare dso_local i64 @read_one_dir(i32*, %struct.read_data*) #1

declare dso_local i32 @ewah_read_mmap(i8*, i8*, i32) #1

declare dso_local i32 @ewah_each_bit(i8*, i32, %struct.read_data*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @ewah_free(i8*) #1

declare dso_local i32 @free_untracked_cache(%struct.untracked_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
