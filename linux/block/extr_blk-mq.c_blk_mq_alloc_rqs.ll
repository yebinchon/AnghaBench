; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_rqs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_rqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i64, i32* }
%struct.blk_mq_tags = type { %struct.request**, i32 }
%struct.request = type { i32 }
%struct.page = type { i32, i32 }

@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* %0, %struct.blk_mq_tags* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.blk_mq_tags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.request*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store %struct.blk_mq_tags* %1, %struct.blk_mq_tags** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 4, i32* %13, align 4
  %22 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %23 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @blk_mq_hw_queue_to_node(i32* %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @NUMA_NO_NODE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %34 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %32, %4
  %37 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %7, align 8
  %38 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %41 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 4, %42
  %44 = call i32 (...) @cache_line_size()
  %45 = call i64 @round_up(i64 %43, i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %46, %48
  store i64 %49, i64* %15, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %170, %36
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %171

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %67, %54
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i64, i64* %15, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i64 @order_to_size(i32 %62)
  %64 = icmp ult i64 %60, %63
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ false, %56 ], [ %64, %59 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %17, align 4
  br label %56

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %97, %70
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @GFP_NOIO, align 4
  %74 = load i32, i32* @__GFP_NOWARN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @__GFP_NORETRY, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @__GFP_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %17, align 4
  %81 = call %struct.page* @alloc_pages_node(i32 %72, i32 %79, i32 %80)
  store %struct.page* %81, %struct.page** %18, align 8
  %82 = load %struct.page*, %struct.page** %18, align 8
  %83 = icmp ne %struct.page* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %98

85:                                               ; preds = %71
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %17, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %98

90:                                               ; preds = %85
  %91 = load i32, i32* %17, align 4
  %92 = call i64 @order_to_size(i32 %91)
  %93 = load i64, i64* %14, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %98

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  br i1 true, label %71, label %98

98:                                               ; preds = %97, %95, %89, %84
  %99 = load %struct.page*, %struct.page** %18, align 8
  %100 = icmp ne %struct.page* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  br label %172

102:                                              ; preds = %98
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.page*, %struct.page** %18, align 8
  %105 = getelementptr inbounds %struct.page, %struct.page* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.page*, %struct.page** %18, align 8
  %107 = getelementptr inbounds %struct.page, %struct.page* %106, i32 0, i32 1
  %108 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %7, align 8
  %109 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %108, i32 0, i32 1
  %110 = call i32 @list_add_tail(i32* %107, i32* %109)
  %111 = load %struct.page*, %struct.page** %18, align 8
  %112 = call i8* @page_address(%struct.page* %111)
  store i8* %112, i8** %20, align 8
  %113 = load i8*, i8** %20, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i64 @order_to_size(i32 %114)
  %116 = load i32, i32* @GFP_NOIO, align 4
  %117 = call i32 @kmemleak_alloc(i8* %113, i64 %115, i32 1, i32 %116)
  %118 = load i32, i32* %17, align 4
  %119 = call i64 @order_to_size(i32 %118)
  %120 = load i64, i64* %14, align 8
  %121 = udiv i64 %119, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = sub i32 %124, %125
  %127 = call i32 @min(i32 %123, i32 %126)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %14, align 8
  %131 = mul i64 %129, %130
  %132 = load i64, i64* %15, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %15, align 8
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %167, %102
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %19, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %170

138:                                              ; preds = %134
  %139 = load i8*, i8** %20, align 8
  %140 = bitcast i8* %139 to %struct.request*
  store %struct.request* %140, %struct.request** %21, align 8
  %141 = load %struct.request*, %struct.request** %21, align 8
  %142 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %7, align 8
  %143 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %142, i32 0, i32 0
  %144 = load %struct.request**, %struct.request*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.request*, %struct.request** %144, i64 %146
  store %struct.request* %141, %struct.request** %147, align 8
  %148 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %149 = load %struct.request*, %struct.request** %21, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i64 @blk_mq_init_request(%struct.blk_mq_tag_set* %148, %struct.request* %149, i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %138
  %155 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %7, align 8
  %156 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %155, i32 0, i32 0
  %157 = load %struct.request**, %struct.request*** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.request*, %struct.request** %157, i64 %159
  store %struct.request* null, %struct.request** %160, align 8
  br label %172

161:                                              ; preds = %138
  %162 = load i64, i64* %14, align 8
  %163 = load i8*, i8** %20, align 8
  %164 = getelementptr i8, i8* %163, i64 %162
  store i8* %164, i8** %20, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %11, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %134

170:                                              ; preds = %134
  br label %50

171:                                              ; preds = %50
  store i32 0, i32* %5, align 4
  br label %179

172:                                              ; preds = %154, %101
  %173 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %174 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %7, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @blk_mq_free_rqs(%struct.blk_mq_tag_set* %173, %struct.blk_mq_tags* %174, i32 %175)
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %172, %171
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @blk_mq_hw_queue_to_node(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @cache_line_size(...) #1

declare dso_local i64 @order_to_size(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @kmemleak_alloc(i8*, i64, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @blk_mq_init_request(%struct.blk_mq_tag_set*, %struct.request*, i32, i32) #1

declare dso_local i32 @blk_mq_free_rqs(%struct.blk_mq_tag_set*, %struct.blk_mq_tags*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
