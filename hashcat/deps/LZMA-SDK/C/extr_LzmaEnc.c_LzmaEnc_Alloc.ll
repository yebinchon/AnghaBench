; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_Alloc.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_11__, %struct.TYPE_11__*, i32, %struct.TYPE_11__, %struct.TYPE_9__, i32*, i32, i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i8* }
%struct.TYPE_9__ = type { i32* }

@kNumOpts = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@kBigHashDicLimit = common dso_local global i64 0, align 8
@LZMA_MATCH_LEN_MAX = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32)* @LzmaEnc_Alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_Alloc(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @kNumOpts, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 14
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @RangeEnc_Alloc(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %19, i32* %5, align 4
  br label %216

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %25, %20
  %37 = phi i1 [ false, %25 ], [ false, %20 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 11
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 10
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %108

64:                                               ; preds = %58, %52, %36
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @LzmaEnc_FreeLits(%struct.TYPE_10__* %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 768, %69
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i64 @ISzAlloc_Alloc(i32 %68, i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 11
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 768, %79
  %81 = zext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i64 @ISzAlloc_Alloc(i32 %78, i32 %83)
  %85 = inttoptr i64 %84 to i32*
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32* %85, i32** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 11
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %64
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %93, %64
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @LzmaEnc_FreeLits(%struct.TYPE_10__* %100, i32 %101)
  %103 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %103, i32* %5, align 4
  br label %216

104:                                              ; preds = %93
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %58
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @kBigHashDicLimit, align 8
  %113 = icmp sgt i64 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %108
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %132, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %130, %108
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %188

143:                                              ; preds = %138
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 9
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* @LZMA_MATCH_LEN_MAX, align 8
  %155 = add nsw i64 %154, 1
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @MatchFinderMt_Create(%struct.TYPE_11__* %145, i32 %149, i32 %150, i32 %153, i64 %155, i32 %156)
  %158 = call i32 @RINOK(i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 9
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 7
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %162, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @kBigHashDicLimit, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %143
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp sge i32 %172, 16777215
  br label %174

174:                                              ; preds = %168, %143
  %175 = phi i1 [ false, %143 ], [ %173, %168 ]
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  store i8* %179, i8** %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 9
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 5
  %187 = call i32 @MatchFinderMt_CreateVTable(%struct.TYPE_11__* %184, i32* %186)
  br label %214

188:                                              ; preds = %138
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load i64, i64* @LZMA_MATCH_LEN_MAX, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @MatchFinder_Create(%struct.TYPE_11__* %190, i64 %193, i32 %194, i32 %197, i64 %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %188
  %203 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %203, i32* %5, align 4
  br label %216

204:                                              ; preds = %188
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 7
  store %struct.TYPE_11__* %206, %struct.TYPE_11__** %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 6
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 5
  %213 = call i32 @MatchFinder_CreateVTable(%struct.TYPE_11__* %210, i32* %212)
  br label %214

214:                                              ; preds = %204, %174
  %215 = load i32, i32* @SZ_OK, align 4
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %214, %202, %99, %18
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @RangeEnc_Alloc(i32*, i32) #1

declare dso_local i32 @LzmaEnc_FreeLits(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ISzAlloc_Alloc(i32, i32) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @MatchFinderMt_Create(%struct.TYPE_11__*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @MatchFinderMt_CreateVTable(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @MatchFinder_Create(%struct.TYPE_11__*, i64, i32, i32, i64, i32) #1

declare dso_local i32 @MatchFinder_CreateVTable(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
