; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_BucketForAddress.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_BucketForAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@bucketHashes = common dso_local global %struct.TYPE_12__** null, align 8
@MAX_BUCKETS = common dso_local global i32 0, align 4
@buckets = common dso_local global %struct.TYPE_12__* null, align 8
@NA_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i64, i32, i32, i32)* @SVC_BucketForAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @SVC_BucketForAddress(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %17, align 4
  %18 = bitcast %struct.TYPE_11__* %6 to i8*
  %19 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %20 = bitcast { i64, i32 }* %13 to i8*
  %21 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @SVC_HashForAddress(i64 %23, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = call i32 (...) @Sys_Milliseconds()
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @bucketHashes, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %28, i64 %29
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %10, align 8
  br label %32

32:                                               ; preds = %65, %4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %63 [
    i32 129, label %39
    i32 128, label %51
  ]

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcmp(i32 %43, i32 %45, i32 4)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %5, align 8
  br label %205

50:                                               ; preds = %39
  br label %64

51:                                               ; preds = %35
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcmp(i32 %55, i32 %57, i32 16)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %5, align 8
  br label %205

62:                                               ; preds = %51
  br label %64

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %62, %50
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %10, align 8
  br label %32

69:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %201, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @MAX_BUCKETS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %204

74:                                               ; preds = %70
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @buckets, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %10, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %135

88:                                               ; preds = %74
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %90, %91
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %135

97:                                               ; preds = %94, %88
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = icmp ne %struct.TYPE_12__* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %109, align 8
  br label %119

110:                                              ; preds = %97
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @bucketHashes, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %114, i64 %117
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %118, align 8
  br label %119

119:                                              ; preds = %110, %102
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %131, align 8
  br label %132

132:                                              ; preds = %124, %119
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = call i32 @Com_Memset(%struct.TYPE_12__* %133, i32 0, i32 48)
  br label %135

135:                                              ; preds = %132, %94, %74
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @NA_BAD, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %200

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %164 [
    i32 129, label %148
    i32 128, label %156
  ]

148:                                              ; preds = %141
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @Com_Memcpy(i32 %152, i32 %154, i32 4)
  br label %165

156:                                              ; preds = %141
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @Com_Memcpy(i32 %160, i32 %162, i32 16)
  br label %165

164:                                              ; preds = %141
  br label %165

165:                                              ; preds = %164, %156, %148
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 5
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @bucketHashes, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %174, i64 %175
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 4
  store %struct.TYPE_12__* %177, %struct.TYPE_12__** %179, align 8
  %180 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @bucketHashes, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %180, i64 %181
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = icmp ne %struct.TYPE_12__* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %165
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %187 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @bucketHashes, align 8
  %188 = load i64, i64* %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %187, i64 %188
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 3
  store %struct.TYPE_12__* %186, %struct.TYPE_12__** %191, align 8
  br label %192

192:                                              ; preds = %185, %165
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %194, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %196 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @bucketHashes, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %196, i64 %197
  store %struct.TYPE_12__* %195, %struct.TYPE_12__** %198, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %5, align 8
  br label %205

200:                                              ; preds = %135
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %70

204:                                              ; preds = %70
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %205

205:                                              ; preds = %204, %192, %60, %48
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SVC_HashForAddress(i64, i32) #2

declare dso_local i32 @Sys_Milliseconds(...) #2

declare dso_local i32 @memcmp(i32, i32, i32) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @Com_Memcpy(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
