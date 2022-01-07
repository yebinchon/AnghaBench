; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_common.h_blkif_get_x86_64_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_common.h_blkif_get_x86_64_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkif_request = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32*, i32, i32, i32 }
%struct.blkif_x86_64_request = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i32 }

@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@MAX_INDIRECT_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkif_request*, %struct.blkif_x86_64_request*)* @blkif_get_x86_64_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkif_get_x86_64_req(%struct.blkif_request* %0, %struct.blkif_x86_64_request* %1) #0 {
  %3 = alloca %struct.blkif_request*, align 8
  %4 = alloca %struct.blkif_x86_64_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.blkif_request* %0, %struct.blkif_request** %3, align 8
  store %struct.blkif_x86_64_request* %1, %struct.blkif_x86_64_request** %4, align 8
  %8 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %10 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %14 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %16 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %214 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
    i32 132, label %18
    i32 133, label %96
    i32 131, label %133
  ]

18:                                               ; preds = %2, %2, %2, %2
  %19 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %20 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %25 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %29 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %34 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 8
  %37 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %38 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %43 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  store i32 %41, i32* %45, align 4
  %46 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %47 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %52 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  %55 = call i32 (...) @barrier()
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %58 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %56, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %18
  %64 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %65 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %63, %18
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %76 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %85 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %83, i32* %91, align 4
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %70

95:                                               ; preds = %70
  br label %224

96:                                               ; preds = %2
  %97 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %98 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %103 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  store i32 %101, i32* %105, align 4
  %106 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %107 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %112 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  store i32 %110, i32* %114, align 8
  %115 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %116 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %121 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  %124 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %125 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %130 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 8
  br label %224

133:                                              ; preds = %2
  %134 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %135 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %140 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 5
  store i32 %138, i32* %142, align 8
  %143 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %144 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %149 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 8
  %152 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %153 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %158 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 4
  store i32 %156, i32* %160, align 4
  %161 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %162 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %167 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  store i32 %165, i32* %169, align 8
  %170 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %171 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %176 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 4
  %179 = call i32 (...) @barrier()
  %180 = load i32, i32* @MAX_INDIRECT_PAGES, align 4
  %181 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %182 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @INDIRECT_PAGES(i32 %185)
  %187 = call i32 @min(i32 %180, i32 %186)
  store i32 %187, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %210, %133
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %188
  %193 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %194 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %203 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %201, i32* %209, align 4
  br label %210

210:                                              ; preds = %192
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %5, align 4
  br label %188

213:                                              ; preds = %188
  br label %224

214:                                              ; preds = %2
  %215 = load %struct.blkif_x86_64_request*, %struct.blkif_x86_64_request** %4, align 8
  %216 = getelementptr inbounds %struct.blkif_x86_64_request, %struct.blkif_x86_64_request* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.blkif_request*, %struct.blkif_request** %3, align 8
  %221 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 0
  store i32 %219, i32* %223, align 8
  br label %224

224:                                              ; preds = %214, %213, %96, %95
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @INDIRECT_PAGES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
