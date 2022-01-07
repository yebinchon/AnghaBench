; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_file_read.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i64 }

@cmp = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32)* @ijkio_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijkio_file_read(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca [2 x %struct.TYPE_12__*], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %18 = bitcast [2 x %struct.TYPE_12__*]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %134

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* @cmp, align 4
  %33 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %10, i64 0, i64 0
  %34 = bitcast %struct.TYPE_12__** %33 to i8**
  %35 = call %struct.TYPE_12__* @ijk_av_tree_find(i32 %29, i64* %31, i32 %32, i8** %34)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %9, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds [2 x %struct.TYPE_12__*], [2 x %struct.TYPE_12__*]* %10, i64 0, i64 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 16
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %9, align 8
  br label %41

41:                                               ; preds = %38, %24
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %131

44:                                               ; preds = %41
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %130

57:                                               ; preds = %44
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %60, %63
  br i1 %64, label %65, label %130

65:                                               ; preds = %57
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add nsw i64 %68, %69
  store i64 %70, i64* %14, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %65
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i32, i32* @SEEK_SET, align 4
  %82 = call i64 @lseek(i32 %79, i64 %80, i32 %81)
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = call i32 @ijkio_cache_file_error(%struct.TYPE_10__* %90)
  br label %92

92:                                               ; preds = %85, %76
  br label %97

93:                                               ; preds = %65
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %11, align 8
  br label %97

97:                                               ; preds = %93, %92
  %98 = load i64, i64* %11, align 8
  %99 = icmp sge i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %13, align 8
  %106 = sub nsw i64 %104, %105
  %107 = call i64 @FFMIN(i32 %101, i64 %106)
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %12, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @wrapped_file_read(%struct.TYPE_10__* %109, i8* %110, i32 %111)
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %100
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = call i32 @ijkio_cache_file_error(%struct.TYPE_10__* %125)
  br label %127

127:                                              ; preds = %120, %115
  br label %128

128:                                              ; preds = %127, %100
  br label %129

129:                                              ; preds = %128, %97
  br label %130

130:                                              ; preds = %129, %57, %44
  br label %131

131:                                              ; preds = %130, %41
  %132 = load i64, i64* %11, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %23
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_12__* @ijk_av_tree_find(i32, i64*, i32, i8**) #2

declare dso_local i64 @lseek(i32, i64, i32) #2

declare dso_local i32 @ijkio_cache_file_error(%struct.TYPE_10__*) #2

declare dso_local i64 @FFMIN(i32, i64) #2

declare dso_local i64 @wrapped_file_read(%struct.TYPE_10__*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
