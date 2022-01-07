; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_rpc_proxy_search_on_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_rpc_proxy_search_on_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32, %struct.search_extra*, %struct.TYPE_4__*, i64 }
%struct.search_extra = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@FLAG_RETRY_SEARCH = common dso_local global i32 0, align 4
@received_bad_answers = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Dropping result %d (num = %d)\0A\00", align 1
@TL_SEARCH_RESULT = common dso_local global i32 0, align 4
@GH_n = common dso_local global i32 0, align 4
@GH_total = common dso_local global i32 0, align 4
@FLAG_GROUP_HASH = common dso_local global i32 0, align 4
@FLAG_SORT = common dso_local global i32 0, align 4
@cum_hash_ratio = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@tot_hash_ratio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_proxy_search_on_end(%struct.gather* %0) #0 {
  %2 = alloca %struct.gather*, align 8
  %3 = alloca %struct.search_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca x86_fp80, align 16
  store %struct.gather* %0, %struct.gather** %2, align 8
  %13 = load %struct.gather*, %struct.gather** %2, align 8
  %14 = getelementptr inbounds %struct.gather, %struct.gather* %13, i32 0, i32 1
  %15 = load %struct.search_extra*, %struct.search_extra** %14, align 8
  store %struct.search_extra* %15, %struct.search_extra** %3, align 8
  %16 = load %struct.search_extra*, %struct.search_extra** %3, align 8
  %17 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load %struct.search_extra*, %struct.search_extra** %3, align 8
  %20 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @clear_gather_heap(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FLAG_RETRY_SEARCH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.gather*, %struct.gather** %2, align 8
  %30 = getelementptr inbounds %struct.gather, %struct.gather* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.search_extra*, %struct.search_extra** %3, align 8
  %35 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.gather*, %struct.gather** %2, align 8
  %40 = call i64 @check_resend(%struct.gather* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.search_extra*, %struct.search_extra** %3, align 8
  %44 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %228

47:                                               ; preds = %38, %33, %28, %1
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %105, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.gather*, %struct.gather** %2, align 8
  %51 = getelementptr inbounds %struct.gather, %struct.gather* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %108

54:                                               ; preds = %48
  %55 = load %struct.gather*, %struct.gather** %2, align 8
  %56 = getelementptr inbounds %struct.gather, %struct.gather* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %54
  %65 = load %struct.gather*, %struct.gather** %2, align 8
  %66 = getelementptr inbounds %struct.gather, %struct.gather* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.gather*, %struct.gather** %2, align 8
  %74 = getelementptr inbounds %struct.gather, %struct.gather* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @gather_heap_insert(i32 %72, i64 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %64
  %85 = load i32, i32* @received_bad_answers, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @received_bad_answers, align 4
  br label %87

87:                                               ; preds = %84, %64
  br label %104

88:                                               ; preds = %54
  %89 = load i32, i32* @verbosity, align 4
  %90 = icmp sge i32 %89, 4
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.gather*, %struct.gather** %2, align 8
  %95 = getelementptr inbounds %struct.gather, %struct.gather* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @fprintf(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %93, i64 %101)
  br label %103

103:                                              ; preds = %91, %88
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %48

108:                                              ; preds = %48
  %109 = load %struct.gather*, %struct.gather** %2, align 8
  %110 = call i32 @merge_init_response(%struct.gather* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = load %struct.gather*, %struct.gather** %2, align 8
  %114 = getelementptr inbounds %struct.gather, %struct.gather* %113, i32 0, i32 1
  %115 = load %struct.search_extra*, %struct.search_extra** %114, align 8
  %116 = call i32 @free(%struct.search_extra* %115)
  %117 = load %struct.gather*, %struct.gather** %2, align 8
  %118 = call i32 @merge_delete(%struct.gather* %117)
  br label %228

119:                                              ; preds = %108
  %120 = load i32, i32* @TL_SEARCH_RESULT, align 4
  %121 = call i32 @tl_store_int(i32 %120)
  %122 = load i32, i32* @GH_n, align 4
  %123 = call i32 @tl_store_int(i32 %122)
  %124 = load i32, i32* @GH_total, align 4
  %125 = call i32 @tl_store_int(i32 %124)
  %126 = call i32* @tl_store_get_ptr(i32 4)
  store i32* %126, i32** %8, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @FLAG_GROUP_HASH, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @hashset_init(i32 %132)
  br label %134

134:                                              ; preds = %131, %119
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %193, %156, %134
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %197

139:                                              ; preds = %135
  %140 = call %struct.TYPE_5__* (...) @get_gather_heap_head()
  store %struct.TYPE_5__* %140, %struct.TYPE_5__** %10, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = icmp ne %struct.TYPE_5__* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %197

144:                                              ; preds = %139
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @FLAG_GROUP_HASH, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @hashset_insert(i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  %159 = call i32 (...) @gather_heap_advance()
  br label %135

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160, %144
  %162 = load i32, i32* @GH_n, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @tl_store_int(i32 %167)
  br label %169

169:                                              ; preds = %164, %161
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @tl_store_int(i32 %172)
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @FLAG_SORT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @tl_store_int(i32 %181)
  br label %183

183:                                              ; preds = %178, %169
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @FLAG_GROUP_HASH, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @tl_store_long(i64 %191)
  br label %193

193:                                              ; preds = %188, %183
  %194 = call i32 (...) @gather_heap_advance()
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %135

197:                                              ; preds = %143, %135
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @FLAG_GROUP_HASH, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %197
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %206, %207
  %209 = sitofp i32 %208 to x86_fp80
  %210 = load i32, i32* %6, align 4
  %211 = sitofp i32 %210 to x86_fp80
  %212 = fdiv x86_fp80 %209, %211
  store x86_fp80 %212, x86_fp80* %12, align 16
  %213 = load x86_fp80, x86_fp80* %12, align 16
  %214 = load x86_fp80, x86_fp80* @cum_hash_ratio, align 16
  %215 = fadd x86_fp80 %214, %213
  store x86_fp80 %215, x86_fp80* @cum_hash_ratio, align 16
  %216 = load i32, i32* @tot_hash_ratio, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @tot_hash_ratio, align 4
  br label %218

218:                                              ; preds = %205, %202, %197
  %219 = load i32, i32* %6, align 4
  %220 = load i32*, i32** %8, align 8
  store i32 %219, i32* %220, align 4
  %221 = call i32 (...) @tl_store_end()
  %222 = load %struct.gather*, %struct.gather** %2, align 8
  %223 = getelementptr inbounds %struct.gather, %struct.gather* %222, i32 0, i32 1
  %224 = load %struct.search_extra*, %struct.search_extra** %223, align 8
  %225 = call i32 @free(%struct.search_extra* %224)
  %226 = load %struct.gather*, %struct.gather** %2, align 8
  %227 = call i32 @merge_delete(%struct.gather* %226)
  br label %228

228:                                              ; preds = %218, %112, %42
  ret void
}

declare dso_local i32 @clear_gather_heap(i32) #1

declare dso_local i64 @check_resend(%struct.gather*) #1

declare dso_local i32 @gather_heap_insert(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #1

declare dso_local i32 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @free(%struct.search_extra*) #1

declare dso_local i32 @merge_delete(%struct.gather*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32* @tl_store_get_ptr(i32) #1

declare dso_local i32 @hashset_init(i32) #1

declare dso_local %struct.TYPE_5__* @get_gather_heap_head(...) #1

declare dso_local i32 @hashset_insert(i64) #1

declare dso_local i32 @gather_heap_advance(...) #1

declare dso_local i32 @tl_store_long(i64) #1

declare dso_local i32 @tl_store_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
