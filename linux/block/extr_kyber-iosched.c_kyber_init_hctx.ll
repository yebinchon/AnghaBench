; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_init_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_init_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, %struct.TYPE_9__*, %struct.kyber_hctx_data*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.kyber_hctx_data = type { %struct.kyber_hctx_data*, i64, i64, i32*, %struct.TYPE_8__*, i32*, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32, %struct.blk_mq_hw_ctx* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.kyber_queue_data* }
%struct.kyber_queue_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KYBER_NUM_DOMAINS = common dso_local global i32 0, align 4
@kyber_domain_wake = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, i32)* @kyber_init_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyber_init_hctx(%struct.blk_mq_hw_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kyber_queue_data*, align 8
  %7 = alloca %struct.kyber_hctx_data*, align 8
  %8 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %14, align 8
  store %struct.kyber_queue_data* %15, %struct.kyber_queue_data** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.kyber_hctx_data* @kmalloc_node(i32 64, i32 %16, i32 %19)
  store %struct.kyber_hctx_data* %20, %struct.kyber_hctx_data** %7, align 8
  %21 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %22 = icmp ne %struct.kyber_hctx_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %186

26:                                               ; preds = %2
  %27 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.kyber_hctx_data* @kmalloc_array_node(i32 %29, i32 4, i32 %30, i32 %33)
  %35 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %36 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %35, i32 0, i32 0
  store %struct.kyber_hctx_data* %34, %struct.kyber_hctx_data** %36, align 8
  %37 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %38 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %37, i32 0, i32 0
  %39 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %38, align 8
  %40 = icmp ne %struct.kyber_hctx_data* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  br label %181

42:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %51 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %50, i32 0, i32 0
  %52 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %52, i64 %54
  %56 = call i32 @kyber_ctx_queue_init(%struct.kyber_hctx_data* %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %43

60:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %97, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @KYBER_NUM_DOMAINS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %67 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ilog2(i32 8)
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @sbitmap_init_node(i32* %71, i32 %74, i32 %75, i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %87, %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %89 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %88, i32 0, i32 7
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @sbitmap_free(i32* %93)
  br label %83

95:                                               ; preds = %83
  br label %176

96:                                               ; preds = %65
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %61

100:                                              ; preds = %61
  %101 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %102 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %101, i32 0, i32 6
  %103 = call i32 @spin_lock_init(i32* %102)
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %157, %100
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @KYBER_NUM_DOMAINS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %160

108:                                              ; preds = %104
  %109 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %110 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %117 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %116, i32 0, i32 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32* null, i32** %122, align 8
  %123 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %124 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %123, i32 0, i32 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* @kyber_domain_wake, align 4
  %131 = call i32 @init_waitqueue_func_entry(%struct.TYPE_10__* %129, i32 %130)
  %132 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %133 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %134 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %133, i32 0, i32 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  store %struct.blk_mq_hw_ctx* %132, %struct.blk_mq_hw_ctx** %140, align 8
  %141 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %142 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %141, i32 0, i32 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = call i32 @INIT_LIST_HEAD(i32* %148)
  %150 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %151 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = call i32 @atomic_set(i32* %155, i32 0)
  br label %157

157:                                              ; preds = %108
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %104

160:                                              ; preds = %104
  %161 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %162 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  %163 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %164 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %166 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %167 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %166, i32 0, i32 2
  store %struct.kyber_hctx_data* %165, %struct.kyber_hctx_data** %167, align 8
  %168 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %169 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %168, i32 0, i32 1
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %173 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @sbitmap_queue_min_shallow_depth(i32* %171, i32 %174)
  store i32 0, i32* %3, align 4
  br label %186

176:                                              ; preds = %95
  %177 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %178 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %177, i32 0, i32 0
  %179 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %178, align 8
  %180 = call i32 @kfree(%struct.kyber_hctx_data* %179)
  br label %181

181:                                              ; preds = %176, %41
  %182 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %7, align 8
  %183 = call i32 @kfree(%struct.kyber_hctx_data* %182)
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %181, %160, %23
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.kyber_hctx_data* @kmalloc_node(i32, i32, i32) #1

declare dso_local %struct.kyber_hctx_data* @kmalloc_array_node(i32, i32, i32, i32) #1

declare dso_local i32 @kyber_ctx_queue_init(%struct.kyber_hctx_data*) #1

declare dso_local i64 @sbitmap_init_node(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @sbitmap_free(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_func_entry(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sbitmap_queue_min_shallow_depth(i32*, i32) #1

declare dso_local i32 @kfree(%struct.kyber_hctx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
