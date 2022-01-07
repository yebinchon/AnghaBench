; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_parse_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_parse_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkif_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.pending_req = type { i32, %struct.TYPE_6__**, %struct.xen_blkif_ring*, %struct.grant_page** }
%struct.TYPE_6__ = type { i32 }
%struct.xen_blkif_ring = type { i32 }
%struct.grant_page = type { i32, i32 }
%struct.seg_buf = type { i32, i32 }
%struct.phys_req = type { i32 }
%struct.blkif_request_segment = type { i32, i32, i32 }

@BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST = common dso_local global i32 0, align 4
@SEGS_PER_INDIRECT_FRAME = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkif_request*, %struct.pending_req*, %struct.seg_buf*, %struct.phys_req*)* @xen_blkbk_parse_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_blkbk_parse_indirect(%struct.blkif_request* %0, %struct.pending_req* %1, %struct.seg_buf* %2, %struct.phys_req* %3) #0 {
  %5 = alloca %struct.blkif_request*, align 8
  %6 = alloca %struct.pending_req*, align 8
  %7 = alloca %struct.seg_buf*, align 8
  %8 = alloca %struct.phys_req*, align 8
  %9 = alloca %struct.grant_page**, align 8
  %10 = alloca %struct.xen_blkif_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.blkif_request_segment*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.blkif_request* %0, %struct.blkif_request** %5, align 8
  store %struct.pending_req* %1, %struct.pending_req** %6, align 8
  store %struct.seg_buf* %2, %struct.seg_buf** %7, align 8
  store %struct.phys_req* %3, %struct.phys_req** %8, align 8
  %19 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %20 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %19, i32 0, i32 3
  %21 = load %struct.grant_page**, %struct.grant_page*** %20, align 8
  store %struct.grant_page** %21, %struct.grant_page*** %9, align 8
  %22 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %23 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %22, i32 0, i32 2
  %24 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %23, align 8
  store %struct.xen_blkif_ring* %24, %struct.xen_blkif_ring** %10, align 8
  store %struct.blkif_request_segment* null, %struct.blkif_request_segment** %16, align 8
  %25 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %26 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @INDIRECT_PAGES(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @BLKIF_MAX_INDIRECT_PAGES_PER_REQUEST, align 4
  %32 = icmp sgt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %55, %4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.blkif_request*, %struct.blkif_request** %5, align 8
  %41 = getelementptr inbounds %struct.blkif_request, %struct.blkif_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.grant_page**, %struct.grant_page*** %9, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %49, i64 %51
  %53 = load %struct.grant_page*, %struct.grant_page** %52, align 8
  %54 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %53, i32 0, i32 1
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %35

58:                                               ; preds = %35
  %59 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %10, align 8
  %60 = load %struct.grant_page**, %struct.grant_page*** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @xen_blkbk_map(%struct.xen_blkif_ring* %59, %struct.grant_page** %60, i32 %61, i32 1)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %167

66:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %163, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %166

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @SEGS_PER_INDIRECT_FRAME, align 4
  %74 = srem i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.blkif_request_segment*, %struct.blkif_request_segment** %16, align 8
  %78 = icmp ne %struct.blkif_request_segment* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.blkif_request_segment*, %struct.blkif_request_segment** %16, align 8
  %81 = call i32 @kunmap_atomic(%struct.blkif_request_segment* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.grant_page**, %struct.grant_page*** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @SEGS_PER_INDIRECT_FRAME, align 4
  %86 = sdiv i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %83, i64 %87
  %89 = load %struct.grant_page*, %struct.grant_page** %88, align 8
  %90 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.blkif_request_segment* @kmap_atomic(i32 %91)
  store %struct.blkif_request_segment* %92, %struct.blkif_request_segment** %16, align 8
  br label %93

93:                                               ; preds = %82, %71
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @SEGS_PER_INDIRECT_FRAME, align 4
  %96 = srem i32 %94, %95
  store i32 %96, i32* %15, align 4
  %97 = load %struct.blkif_request_segment*, %struct.blkif_request_segment** %16, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.blkif_request_segment, %struct.blkif_request_segment* %97, i64 %99
  %101 = getelementptr inbounds %struct.blkif_request_segment, %struct.blkif_request_segment* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pending_req*, %struct.pending_req** %6, align 8
  %104 = getelementptr inbounds %struct.pending_req, %struct.pending_req* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %102, i32* %110, align 4
  %111 = load %struct.blkif_request_segment*, %struct.blkif_request_segment** %16, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.blkif_request_segment, %struct.blkif_request_segment* %111, i64 %113
  %115 = getelementptr inbounds %struct.blkif_request_segment, %struct.blkif_request_segment* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @READ_ONCE(i32 %116)
  store i32 %117, i32* %17, align 4
  %118 = load %struct.blkif_request_segment*, %struct.blkif_request_segment** %16, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.blkif_request_segment, %struct.blkif_request_segment* %118, i64 %120
  %122 = getelementptr inbounds %struct.blkif_request_segment, %struct.blkif_request_segment* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @READ_ONCE(i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %127 = ashr i32 %126, 9
  %128 = icmp sge i32 %125, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %93
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129, %93
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %12, align 4
  br label %167

136:                                              ; preds = %129
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %17, align 4
  %139 = sub nsw i32 %137, %138
  %140 = add nsw i32 %139, 1
  %141 = load %struct.seg_buf*, %struct.seg_buf** %7, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.seg_buf, %struct.seg_buf* %141, i64 %143
  %145 = getelementptr inbounds %struct.seg_buf, %struct.seg_buf* %144, i32 0, i32 0
  store i32 %140, i32* %145, align 4
  %146 = load i32, i32* %17, align 4
  %147 = shl i32 %146, 9
  %148 = load %struct.seg_buf*, %struct.seg_buf** %7, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.seg_buf, %struct.seg_buf* %148, i64 %150
  %152 = getelementptr inbounds %struct.seg_buf, %struct.seg_buf* %151, i32 0, i32 1
  store i32 %147, i32* %152, align 4
  %153 = load %struct.seg_buf*, %struct.seg_buf** %7, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.seg_buf, %struct.seg_buf* %153, i64 %155
  %157 = getelementptr inbounds %struct.seg_buf, %struct.seg_buf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.phys_req*, %struct.phys_req** %8, align 8
  %160 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %136
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %67

166:                                              ; preds = %67
  br label %167

167:                                              ; preds = %166, %133, %65
  %168 = load %struct.blkif_request_segment*, %struct.blkif_request_segment** %16, align 8
  %169 = icmp ne %struct.blkif_request_segment* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.blkif_request_segment*, %struct.blkif_request_segment** %16, align 8
  %172 = call i32 @kunmap_atomic(%struct.blkif_request_segment* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %10, align 8
  %175 = load %struct.grant_page**, %struct.grant_page*** %9, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @xen_blkbk_unmap(%struct.xen_blkif_ring* %174, %struct.grant_page** %175, i32 %176)
  %178 = load i32, i32* %12, align 4
  ret i32 %178
}

declare dso_local i32 @INDIRECT_PAGES(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xen_blkbk_map(%struct.xen_blkif_ring*, %struct.grant_page**, i32, i32) #1

declare dso_local i32 @kunmap_atomic(%struct.blkif_request_segment*) #1

declare dso_local %struct.blkif_request_segment* @kmap_atomic(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @xen_blkbk_unmap(%struct.xen_blkif_ring*, %struct.grant_page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
