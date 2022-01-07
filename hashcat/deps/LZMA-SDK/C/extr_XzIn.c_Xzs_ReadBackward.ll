; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzIn.c_Xzs_ReadBackward.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzIn.c_Xzs_ReadBackward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@SZ_SEEK_END = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_PROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Xzs_ReadBackward(%struct.TYPE_8__* %0, i32* %1, i64* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @SZ_SEEK_END, align 4
  %19 = call i64 @ILookInStream_Seek(i32* %17, i64* %12, i32 %18)
  %20 = call i32 @RINOK(i64 %19)
  %21 = load i64, i64* %12, align 8
  %22 = load i64*, i64** %9, align 8
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %123, %5
  %24 = call i32 @Xz_Construct(%struct.TYPE_9__* %13)
  %25 = load i32*, i32** %8, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @Xz_ReadBackward(%struct.TYPE_9__* %13, i32* %25, i64* %26, i32 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @RINOK(i64 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %23
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sdiv i64 %47, 4
  %49 = add nsw i64 %44, %48
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %15, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i64, i64* %15, align 8
  %53 = mul i64 %52, 8
  %54 = call i64 @ISzAlloc_Alloc(i32 %51, i64 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %16, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %41
  %59 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %59, i64* %6, align 8
  br label %126

60:                                               ; preds = %41
  %61 = load i64, i64* %15, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load i32*, i32** %16, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i32* %69, %struct.TYPE_9__* %72, i32 %77)
  br label %79

79:                                               ; preds = %68, %60
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = call i32 @ISzAlloc_Free(i32 %80, %struct.TYPE_9__* %83)
  %85 = load i32*, i32** %16, align 8
  %86 = bitcast i32* %85 to %struct.TYPE_9__*
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %88, align 8
  br label %89

89:                                               ; preds = %79, %23
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %95
  %98 = bitcast %struct.TYPE_9__* %97 to i8*
  %99 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 8, i1 false)
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %124

104:                                              ; preds = %89
  %105 = load i32*, i32** %8, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @LookInStream_SeekTo(i32* %105, i64 %107)
  %109 = call i32 @RINOK(i64 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %104
  %113 = load i32*, i32** %10, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %114, %116
  %118 = call i64 @ICompressProgress_Progress(i32* %113, i64 %117, i32 -1)
  %119 = load i64, i64* @SZ_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i64, i64* @SZ_ERROR_PROGRESS, align 8
  store i64 %122, i64* %6, align 8
  br label %126

123:                                              ; preds = %112, %104
  br label %23

124:                                              ; preds = %103
  %125 = load i64, i64* @SZ_OK, align 8
  store i64 %125, i64* %6, align 8
  br label %126

126:                                              ; preds = %124, %121, %58
  %127 = load i64, i64* %6, align 8
  ret i64 %127
}

declare dso_local i32 @RINOK(i64) #1

declare dso_local i64 @ILookInStream_Seek(i32*, i64*, i32) #1

declare dso_local i32 @Xz_Construct(%struct.TYPE_9__*) #1

declare dso_local i64 @Xz_ReadBackward(%struct.TYPE_9__*, i32*, i64*, i32) #1

declare dso_local i64 @ISzAlloc_Alloc(i32, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ISzAlloc_Free(i32, %struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @LookInStream_SeekTo(i32*, i64) #1

declare dso_local i64 @ICompressProgress_Progress(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
