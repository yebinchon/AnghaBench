; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_llrun_encoder_finish.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_llrun_encoder_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_encoder = type { i32, i32, i32*, i32, i32 }

@HUFFMAN_MAX_CODE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_encoder*)* @llrun_encoder_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llrun_encoder_finish(%struct.list_encoder* %0) #0 {
  %2 = alloca %struct.list_encoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [32 x i32], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.list_encoder* %0, %struct.list_encoder** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dyn_mark(i32 %19)
  %21 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %25 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %31 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %34 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @get_max_possible_gap(i32 %32, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @llrun_get_buckets_quantity(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @zmalloc0(i32 %42)
  store i32* %43, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %83, %1
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %47 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  %51 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %52 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp sle i32 %63, %64
  br label %66

66:                                               ; preds = %62, %50
  %67 = phi i1 [ false, %50 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @bsr(i32 %71)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %77 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %44

86:                                               ; preds = %44
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %90 = call i32* @get_huffman_codes_lengths(i32* %87, i32 %88, i32 %89, i32* %10)
  store i32* %90, i32** %11, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @llhuf_check_codes_lengths(i32* %91, i32 %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %98 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %97, i32 0, i32 3
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @bwrite_huffman_codes(i32* %98, i32* %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 2
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %106 = add nsw i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = call i8* @llvm.stacksave()
  store i8* %108, i8** %13, align 8
  %109 = alloca i32, i64 %107, align 16
  store i64 %107, i64* %14, align 8
  %110 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %111 = add nsw i32 %110, 1
  %112 = mul nsw i32 32, %111
  %113 = zext i32 %112 to i64
  %114 = alloca i32, i64 %113, align 16
  store i64 %113, i64* %16, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %118 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %119 = call i32 @canonical_huffman(i32* %115, i32 %116, i32 %117, i32* %109, i32* %118, i32* %114)
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %189, %86
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %123 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %192

126:                                              ; preds = %120
  %127 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %128 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %126
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp sle i32 %139, %140
  br label %142

142:                                              ; preds = %138, %126
  %143 = phi i1 [ false, %126 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i32, i32* %17, align 4
  %147 = call i64 @bsr(i32 %146)
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %152, %153
  br label %155

155:                                              ; preds = %151, %142
  %156 = phi i1 [ false, %142 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %155
  %162 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @list_encode_nbits(%struct.list_encoder* %162, i32 %166, i32 %171)
  br label %173

173:                                              ; preds = %161, %155
  %174 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %175 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %174, i32 0, i32 3
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %18, align 4
  %178 = shl i32 1, %177
  %179 = xor i32 %176, %178
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @bwrite_nbits(i32* %175, i32 %179, i32 %180)
  %182 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %183 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %173
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %120

192:                                              ; preds = %120
  %193 = load %struct.list_encoder*, %struct.list_encoder** %2, align 8
  %194 = getelementptr inbounds %struct.list_encoder, %struct.list_encoder* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @free(i32* %195)
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @dyn_release(i32 %197)
  %199 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %199)
  ret void
}

declare dso_local i32 @dyn_mark(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_max_possible_gap(i32, i32) #1

declare dso_local i32 @llrun_get_buckets_quantity(i32) #1

declare dso_local i32* @zmalloc0(i32) #1

declare dso_local i64 @bsr(i32) #1

declare dso_local i32* @get_huffman_codes_lengths(i32*, i32, i32, i32*) #1

declare dso_local i64 @llhuf_check_codes_lengths(i32*, i32) #1

declare dso_local i32 @bwrite_huffman_codes(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @canonical_huffman(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @list_encode_nbits(%struct.list_encoder*, i32, i32) #1

declare dso_local i32 @bwrite_nbits(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @dyn_release(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
