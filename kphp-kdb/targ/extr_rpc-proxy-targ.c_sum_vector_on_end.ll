; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_vector_on_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_vector_on_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32, %struct.TYPE_4__*, %struct.targ_extra* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.targ_extra = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@received_bad_answers = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Dropping result %d (num = %d)\0A\00", align 1
@TL_VECTOR_TOTAL = common dso_local global i32 0, align 4
@GH_total = common dso_local global i32 0, align 4
@R = common dso_local global i64* null, align 8
@MAX_RES = common dso_local global i32 0, align 4
@cmp = common dso_local global i32 0, align 4
@cmpd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_vector_on_end(%struct.gather* %0) #0 {
  %2 = alloca %struct.gather*, align 8
  %3 = alloca %struct.targ_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.gather* %0, %struct.gather** %2, align 8
  %9 = load %struct.gather*, %struct.gather** %2, align 8
  %10 = getelementptr inbounds %struct.gather, %struct.gather* %9, i32 0, i32 2
  %11 = load %struct.targ_extra*, %struct.targ_extra** %10, align 8
  store %struct.targ_extra* %11, %struct.targ_extra** %3, align 8
  %12 = load %struct.gather*, %struct.gather** %2, align 8
  %13 = call i64 @merge_init_response(%struct.gather* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %17 = call i32 @zfree(%struct.targ_extra* %16, i32 8)
  %18 = load %struct.gather*, %struct.gather** %2, align 8
  %19 = call i32 @merge_delete(%struct.gather* %18)
  br label %200

20:                                               ; preds = %1
  %21 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %22 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @clear_gather_heap(i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %84, %20
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.gather*, %struct.gather** %2, align 8
  %30 = getelementptr inbounds %struct.gather, %struct.gather* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  %34 = load %struct.gather*, %struct.gather** %2, align 8
  %35 = getelementptr inbounds %struct.gather, %struct.gather* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %33
  %44 = load %struct.gather*, %struct.gather** %2, align 8
  %45 = getelementptr inbounds %struct.gather, %struct.gather* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.gather*, %struct.gather** %2, align 8
  %53 = getelementptr inbounds %struct.gather, %struct.gather* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @gather_heap_insert(i32 %51, i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load i32, i32* @received_bad_answers, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @received_bad_answers, align 4
  br label %66

66:                                               ; preds = %63, %43
  br label %83

67:                                               ; preds = %33
  %68 = load i32, i32* @verbosity, align 4
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.gather*, %struct.gather** %2, align 8
  %74 = getelementptr inbounds %struct.gather, %struct.gather* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %80)
  br label %82

82:                                               ; preds = %70, %67
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %27

87:                                               ; preds = %27
  %88 = load i32, i32* @TL_VECTOR_TOTAL, align 4
  %89 = call i32 @tl_store_int(i32 %88)
  %90 = load i32, i32* @GH_total, align 4
  %91 = call i32 @tl_store_int(i32 %90)
  store i32 -2, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %144
  %93 = call %struct.TYPE_5__* (...) @get_gather_heap_head()
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %8, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %146

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** @R, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %100
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** @R, align 8
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, %113
  store i64 %120, i64* %118, align 8
  br label %144

121:                                              ; preds = %100, %97
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 2
  store i32 %123, i32* %7, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** @R, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %126, i64* %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** @R, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  store i64 %133, i64* %138, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @MAX_RES, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %121
  br label %146

143:                                              ; preds = %121
  br label %144

144:                                              ; preds = %143, %110
  %145 = call i32 (...) @gather_heap_advance()
  br label %92

146:                                              ; preds = %142, %96
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 @tl_store_int(i32 0)
  br label %194

151:                                              ; preds = %146
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %7, align 4
  %154 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %155 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 1
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %151
  %160 = load i64*, i64** @R, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sdiv i32 %161, 2
  %163 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %164 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = load i32, i32* @cmp, align 4
  br label %172

170:                                              ; preds = %159
  %171 = load i32, i32* @cmpd, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %174 = call i32 @qsort(i64* %160, i32 %162, i32 8, i32 %173)
  br label %175

175:                                              ; preds = %172, %151
  %176 = load i32, i32* %7, align 4
  %177 = sdiv i32 %176, 2
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %180 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %185 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %183, %175
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @tl_store_int(i32 %188)
  %190 = load i64*, i64** @R, align 8
  %191 = load i32, i32* %7, align 4
  %192 = mul nsw i32 %191, 8
  %193 = call i32 @tl_store_raw_data(i64* %190, i32 %192)
  br label %194

194:                                              ; preds = %187, %149
  %195 = call i32 (...) @tl_store_end()
  %196 = load %struct.targ_extra*, %struct.targ_extra** %3, align 8
  %197 = call i32 @zfree(%struct.targ_extra* %196, i32 8)
  %198 = load %struct.gather*, %struct.gather** %2, align 8
  %199 = call i32 @merge_delete(%struct.gather* %198)
  br label %200

200:                                              ; preds = %194, %15
  ret void
}

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @zfree(%struct.targ_extra*, i32) #1

declare dso_local i32 @merge_delete(%struct.gather*) #1

declare dso_local i32 @clear_gather_heap(i32) #1

declare dso_local i32 @gather_heap_insert(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i64) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local %struct.TYPE_5__* @get_gather_heap_head(...) #1

declare dso_local i32 @gather_heap_advance(...) #1

declare dso_local i32 @qsort(i64*, i32, i32, i32) #1

declare dso_local i32 @tl_store_raw_data(i64*, i32) #1

declare dso_local i32 @tl_store_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
