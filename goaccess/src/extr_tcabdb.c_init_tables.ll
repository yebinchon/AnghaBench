; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_init_tables.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_init_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i8*, i8*, i32, i32*, i32*, i32 }

@MTRC_KEYMAP = common dso_local global i64 0, align 8
@DB_KEYMAP = common dso_local global i32 0, align 4
@MTRC_ROOTMAP = common dso_local global i64 0, align 8
@DB_ROOTMAP = common dso_local global i32 0, align 4
@MTRC_DATAMAP = common dso_local global i64 0, align 8
@DB_DATAMAP = common dso_local global i32 0, align 4
@MTRC_UNIQMAP = common dso_local global i64 0, align 8
@DB_UNIQMAP = common dso_local global i32 0, align 4
@MTRC_ROOT = common dso_local global i64 0, align 8
@DB_ROOT = common dso_local global i32 0, align 4
@MTRC_HITS = common dso_local global i64 0, align 8
@DB_HITS = common dso_local global i32 0, align 4
@MTRC_VISITORS = common dso_local global i64 0, align 8
@DB_VISITORS = common dso_local global i32 0, align 4
@MTRC_BW = common dso_local global i64 0, align 8
@DB_BW = common dso_local global i32 0, align 4
@MTRC_CUMTS = common dso_local global i64 0, align 8
@DB_CUMTS = common dso_local global i32 0, align 4
@MTRC_MAXTS = common dso_local global i64 0, align 8
@DB_MAXTS = common dso_local global i32 0, align 4
@MTRC_METHODS = common dso_local global i64 0, align 8
@DB_METHODS = common dso_local global i32 0, align 4
@MTRC_PROTOCOLS = common dso_local global i64 0, align 8
@DB_PROTOCOLS = common dso_local global i32 0, align 4
@MTRC_AGENTS = common dso_local global i64 0, align 8
@DB_AGENTS = common dso_local global i32 0, align 4
@MTRC_METADATA = common dso_local global i64 0, align 8
@DB_METADATA = common dso_local global i32 0, align 4
@tc_storage = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @init_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tables(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x %struct.TYPE_4__], align 16
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %7 = bitcast [14 x %struct.TYPE_4__]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 896, i1 false)
  %8 = getelementptr inbounds [14 x %struct.TYPE_4__], [14 x %struct.TYPE_4__]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* @MTRC_KEYMAP, align 8
  store i64 %10, i64* %9, align 16
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %12 = load i32, i32* @DB_KEYMAP, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %11, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* @MTRC_ROOTMAP, align 8
  store i64 %16, i64* %15, align 16
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %18 = load i32, i32* @DB_ROOTMAP, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* @MTRC_DATAMAP, align 8
  store i64 %22, i64* %21, align 16
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %24 = load i32, i32* @DB_DATAMAP, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* @MTRC_UNIQMAP, align 8
  store i64 %28, i64* %27, align 16
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %30 = load i32, i32* @DB_UNIQMAP, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* @MTRC_ROOT, align 8
  store i64 %34, i64* %33, align 16
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %36 = load i32, i32* @DB_ROOT, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* @MTRC_HITS, align 8
  store i64 %40, i64* %39, align 16
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %42 = load i32, i32* @DB_HITS, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* @MTRC_VISITORS, align 8
  store i64 %46, i64* %45, align 16
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %48 = load i32, i32* @DB_VISITORS, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* @MTRC_BW, align 8
  store i64 %52, i64* %51, align 16
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %54 = load i32, i32* @DB_BW, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %53, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* @MTRC_CUMTS, align 8
  store i64 %58, i64* %57, align 16
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %60 = load i32, i32* @DB_CUMTS, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %59, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* @MTRC_MAXTS, align 8
  store i64 %64, i64* %63, align 16
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %66 = load i32, i32* @DB_MAXTS, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* @MTRC_METHODS, align 8
  store i64 %70, i64* %69, align 16
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %72 = load i32, i32* @DB_METHODS, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %71, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* @MTRC_PROTOCOLS, align 8
  store i64 %76, i64* %75, align 16
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %78 = load i32, i32* @DB_PROTOCOLS, align 4
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* @MTRC_AGENTS, align 8
  store i64 %82, i64* %81, align 16
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %84 = load i32, i32* @DB_AGENTS, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* @MTRC_METADATA, align 8
  store i64 %88, i64* %87, align 16
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %90 = load i32, i32* @DB_METADATA, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds [14 x %struct.TYPE_4__], [14 x %struct.TYPE_4__]* %6, i64 0, i64 0
  %93 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %92)
  store i32 %93, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %114, %1
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [14 x %struct.TYPE_4__], [14 x %struct.TYPE_4__]* %6, i64 0, i64 %100
  %102 = bitcast %struct.TYPE_4__* %3 to i8*
  %103 = bitcast %struct.TYPE_4__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 16 %103, i64 64, i1 false)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tc_storage, align 8
  %105 = load i64, i64* %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = bitcast %struct.TYPE_4__* %111 to i8*
  %113 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 64, i1 false)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %94

117:                                              ; preds = %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
