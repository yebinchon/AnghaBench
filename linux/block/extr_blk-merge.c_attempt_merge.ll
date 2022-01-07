; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_attempt_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_attempt_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i64, i64, i64, i32, i32, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@REQ_OP_WRITE_SAME = common dso_local global i64 0, align 8
@RQF_MIXED_MERGE = common dso_local global i32 0, align 4
@REQ_FAILFAST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*, %struct.request*, %struct.request*)* @attempt_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @attempt_merge(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %8 = load %struct.request*, %struct.request** %6, align 8
  %9 = call i32 @rq_mergeable(%struct.request* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.request*, %struct.request** %7, align 8
  %13 = call i32 @rq_mergeable(%struct.request* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

16:                                               ; preds = %11
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = call i64 @req_op(%struct.request* %17)
  %19 = load %struct.request*, %struct.request** %7, align 8
  %20 = call i64 @req_op(%struct.request* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

23:                                               ; preds = %16
  %24 = load %struct.request*, %struct.request** %6, align 8
  %25 = call i64 @rq_data_dir(%struct.request* %24)
  %26 = load %struct.request*, %struct.request** %7, align 8
  %27 = call i64 @rq_data_dir(%struct.request* %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.request*, %struct.request** %7, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %23
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

38:                                               ; preds = %29
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = call i64 @req_op(%struct.request* %39)
  %41 = load i64, i64* @REQ_OP_WRITE_SAME, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.request*, %struct.request** %6, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.request*, %struct.request** %7, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @blk_write_same_mergeable(i32* %46, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

53:                                               ; preds = %43, %38
  %54 = load %struct.request*, %struct.request** %6, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.request*, %struct.request** %7, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

62:                                               ; preds = %53
  %63 = load %struct.request*, %struct.request** %6, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.request*, %struct.request** %7, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

71:                                               ; preds = %62
  %72 = load %struct.request*, %struct.request** %6, align 8
  %73 = load %struct.request*, %struct.request** %7, align 8
  %74 = call i32 @blk_try_req_merge(%struct.request* %72, %struct.request* %73)
  switch i32 %74, label %91 [
    i32 128, label %75
    i32 129, label %83
  ]

75:                                               ; preds = %71
  %76 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %77 = load %struct.request*, %struct.request** %6, align 8
  %78 = load %struct.request*, %struct.request** %7, align 8
  %79 = call i32 @req_attempt_discard_merge(%struct.request_queue* %76, %struct.request* %77, %struct.request* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

82:                                               ; preds = %75
  br label %92

83:                                               ; preds = %71
  %84 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %85 = load %struct.request*, %struct.request** %6, align 8
  %86 = load %struct.request*, %struct.request** %7, align 8
  %87 = call i32 @ll_merge_requests_fn(%struct.request_queue* %84, %struct.request* %85, %struct.request* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

90:                                               ; preds = %83
  br label %92

91:                                               ; preds = %71
  store %struct.request* null, %struct.request** %4, align 8
  br label %169

92:                                               ; preds = %90, %82
  %93 = load %struct.request*, %struct.request** %6, align 8
  %94 = getelementptr inbounds %struct.request, %struct.request* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.request*, %struct.request** %7, align 8
  %97 = getelementptr inbounds %struct.request, %struct.request* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %95, %98
  %100 = load i32, i32* @RQF_MIXED_MERGE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %92
  %104 = load %struct.request*, %struct.request** %6, align 8
  %105 = getelementptr inbounds %struct.request, %struct.request* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load %struct.request*, %struct.request** %7, align 8
  %110 = getelementptr inbounds %struct.request, %struct.request* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %108, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %103, %92
  %116 = load %struct.request*, %struct.request** %6, align 8
  %117 = call i32 @blk_rq_set_mixed_merge(%struct.request* %116)
  %118 = load %struct.request*, %struct.request** %7, align 8
  %119 = call i32 @blk_rq_set_mixed_merge(%struct.request* %118)
  br label %120

120:                                              ; preds = %115, %103
  %121 = load %struct.request*, %struct.request** %7, align 8
  %122 = getelementptr inbounds %struct.request, %struct.request* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.request*, %struct.request** %6, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.request*, %struct.request** %7, align 8
  %130 = getelementptr inbounds %struct.request, %struct.request* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.request*, %struct.request** %6, align 8
  %133 = getelementptr inbounds %struct.request, %struct.request* %132, i32 0, i32 5
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %120
  %135 = load %struct.request*, %struct.request** %7, align 8
  %136 = getelementptr inbounds %struct.request, %struct.request* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.request*, %struct.request** %6, align 8
  %139 = getelementptr inbounds %struct.request, %struct.request* %138, i32 0, i32 8
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i32* %137, i32** %141, align 8
  %142 = load %struct.request*, %struct.request** %7, align 8
  %143 = getelementptr inbounds %struct.request, %struct.request* %142, i32 0, i32 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load %struct.request*, %struct.request** %6, align 8
  %146 = getelementptr inbounds %struct.request, %struct.request* %145, i32 0, i32 8
  store %struct.TYPE_2__* %144, %struct.TYPE_2__** %146, align 8
  %147 = load %struct.request*, %struct.request** %7, align 8
  %148 = call i64 @blk_rq_bytes(%struct.request* %147)
  %149 = load %struct.request*, %struct.request** %6, align 8
  %150 = getelementptr inbounds %struct.request, %struct.request* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 8
  %155 = load %struct.request*, %struct.request** %6, align 8
  %156 = call i32 @blk_discard_mergable(%struct.request* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %134
  %159 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %160 = load %struct.request*, %struct.request** %6, align 8
  %161 = load %struct.request*, %struct.request** %7, align 8
  %162 = call i32 @elv_merge_requests(%struct.request_queue* %159, %struct.request* %160, %struct.request* %161)
  br label %163

163:                                              ; preds = %158, %134
  %164 = load %struct.request*, %struct.request** %7, align 8
  %165 = call i32 @blk_account_io_merge(%struct.request* %164)
  %166 = load %struct.request*, %struct.request** %7, align 8
  %167 = getelementptr inbounds %struct.request, %struct.request* %166, i32 0, i32 6
  store i32* null, i32** %167, align 8
  %168 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %168, %struct.request** %4, align 8
  br label %169

169:                                              ; preds = %163, %91, %89, %81, %70, %61, %52, %37, %22, %15
  %170 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %170
}

declare dso_local i32 @rq_mergeable(%struct.request*) #1

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_write_same_mergeable(i32*, i32*) #1

declare dso_local i32 @blk_try_req_merge(%struct.request*, %struct.request*) #1

declare dso_local i32 @req_attempt_discard_merge(%struct.request_queue*, %struct.request*, %struct.request*) #1

declare dso_local i32 @ll_merge_requests_fn(%struct.request_queue*, %struct.request*, %struct.request*) #1

declare dso_local i32 @blk_rq_set_mixed_merge(%struct.request*) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @blk_discard_mergable(%struct.request*) #1

declare dso_local i32 @elv_merge_requests(%struct.request_queue*, %struct.request*, %struct.request*) #1

declare dso_local i32 @blk_account_io_merge(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
