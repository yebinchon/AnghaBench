; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv_cpu_info.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { i64, i8*, i32 }

@CVT_PTR = common dso_local global i64 0, align 8
@CSD_OFFSET = common dso_local global i64 0, align 8
@CVTOPCTP_OFFSET = common dso_local global i64 0, align 8
@RMCTRCT_OFFSET = common dso_local global i64 0, align 8
@CSD_NUMBER_ONLINE_CPUS = common dso_local global i64 0, align 8
@RCTLACS_OFFSET = common dso_local global i64 0, align 8
@UV_ENOMEM = common dso_local global i32 0, align 4
@CPCMODEL_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cpu_info(%struct.TYPE_11__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = bitcast %struct.TYPE_13__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = bitcast %struct.TYPE_13__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = bitcast %struct.TYPE_13__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load i64, i64* @CVT_PTR, align 8
  %19 = inttoptr i64 %18 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CSD_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = inttoptr i64 %25 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CVTOPCTP_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RMCTRCT_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = inttoptr i64 %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CSD_NUMBER_ONLINE_CPUS, align 8
  %46 = add nsw i64 %44, %45
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RCTLACS_OFFSET, align 8
  %53 = add nsw i64 %51, %52
  %54 = inttoptr i64 %53 to i16*
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 56
  %61 = trunc i64 %60 to i32
  %62 = call i8* @uv__malloc(i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_11__*
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %64, align 8
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %2
  %69 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %69, i32* %3, align 4
  br label %126

70:                                               ; preds = %2
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %78, %70
  %74 = load i32, i32* %7, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %125

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @CPCMODEL_LENGTH, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i8* @uv__malloc(i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @CPCMODEL_LENGTH, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @memset(i8* %93, i8 signext 0, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CPCMODEL_LENGTH, align 4
  %104 = call i32 @memcpy(i8* %99, i32 %102, i32 %103)
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 1
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %73

125:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %68
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @uv__malloc(i32) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
