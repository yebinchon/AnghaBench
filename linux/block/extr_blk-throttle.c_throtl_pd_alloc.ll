; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.request_queue = type { i32 }
%struct.blkcg = type { i32 }
%struct.throtl_grp = type { %struct.blkg_policy_data, i8*, i8*, i8*, i8*, i8***, i8***, i8***, i8***, i32, i32*, i32*, i32 }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i8* null, align 8
@LIMIT_MAX = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i8* null, align 8
@DFL_LATENCY_TARGET = common dso_local global i8* null, align 8
@DFL_IDLE_THRESHOLD = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blkg_policy_data* (i32, %struct.request_queue*, %struct.blkcg*)* @throtl_pd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blkg_policy_data* @throtl_pd_alloc(i32 %0, %struct.request_queue* %1, %struct.blkcg* %2) #0 {
  %4 = alloca %struct.blkg_policy_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.blkcg*, align 8
  %8 = alloca %struct.throtl_grp*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.request_queue* %1, %struct.request_queue** %6, align 8
  store %struct.blkcg* %2, %struct.blkcg** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.throtl_grp* @kzalloc_node(i32 104, i32 %10, i32 %13)
  store %struct.throtl_grp* %14, %struct.throtl_grp** %8, align 8
  %15 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %16 = icmp ne %struct.throtl_grp* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.blkg_policy_data* null, %struct.blkg_policy_data** %4, align 8
  br label %142

18:                                               ; preds = %3
  %19 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %20 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %19, i32 0, i32 12
  %21 = call i32 @throtl_service_queue_init(i32* %20)
  %22 = load i64, i64* @READ, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %45, %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @WRITE, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %30 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %29, i32 0, i32 11
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %36 = call i32 @throtl_qnode_init(i32* %34, %struct.throtl_grp* %35)
  %37 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %38 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %37, i32 0, i32 10
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %44 = call i32 @throtl_qnode_init(i32* %42, %struct.throtl_grp* %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %50 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %49, i32 0, i32 9
  %51 = call i32 @RB_CLEAR_NODE(i32* %50)
  %52 = load i8*, i8** @U64_MAX, align 8
  %53 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %54 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %53, i32 0, i32 8
  %55 = load i8***, i8**** %54, align 8
  %56 = load i64, i64* @READ, align 8
  %57 = getelementptr inbounds i8**, i8*** %55, i64 %56
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* @LIMIT_MAX, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %52, i8** %60, align 8
  %61 = load i8*, i8** @U64_MAX, align 8
  %62 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %63 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %62, i32 0, i32 8
  %64 = load i8***, i8**** %63, align 8
  %65 = load i32, i32* @WRITE, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8**, i8*** %64, i64 %66
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* @LIMIT_MAX, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %61, i8** %70, align 8
  %71 = load i8*, i8** @UINT_MAX, align 8
  %72 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %73 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %72, i32 0, i32 7
  %74 = load i8***, i8**** %73, align 8
  %75 = load i64, i64* @READ, align 8
  %76 = getelementptr inbounds i8**, i8*** %74, i64 %75
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* @LIMIT_MAX, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %71, i8** %79, align 8
  %80 = load i8*, i8** @UINT_MAX, align 8
  %81 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %82 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %81, i32 0, i32 7
  %83 = load i8***, i8**** %82, align 8
  %84 = load i32, i32* @WRITE, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8**, i8*** %83, i64 %85
  %87 = load i8**, i8*** %86, align 8
  %88 = load i64, i64* @LIMIT_MAX, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  store i8* %80, i8** %89, align 8
  %90 = load i8*, i8** @U64_MAX, align 8
  %91 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %92 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %91, i32 0, i32 6
  %93 = load i8***, i8**** %92, align 8
  %94 = load i64, i64* @READ, align 8
  %95 = getelementptr inbounds i8**, i8*** %93, i64 %94
  %96 = load i8**, i8*** %95, align 8
  %97 = load i64, i64* @LIMIT_MAX, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  store i8* %90, i8** %98, align 8
  %99 = load i8*, i8** @U64_MAX, align 8
  %100 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %101 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %100, i32 0, i32 6
  %102 = load i8***, i8**** %101, align 8
  %103 = load i32, i32* @WRITE, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8**, i8*** %102, i64 %104
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* @LIMIT_MAX, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  store i8* %99, i8** %108, align 8
  %109 = load i8*, i8** @UINT_MAX, align 8
  %110 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %111 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %110, i32 0, i32 5
  %112 = load i8***, i8**** %111, align 8
  %113 = load i64, i64* @READ, align 8
  %114 = getelementptr inbounds i8**, i8*** %112, i64 %113
  %115 = load i8**, i8*** %114, align 8
  %116 = load i64, i64* @LIMIT_MAX, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  store i8* %109, i8** %117, align 8
  %118 = load i8*, i8** @UINT_MAX, align 8
  %119 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %120 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %119, i32 0, i32 5
  %121 = load i8***, i8**** %120, align 8
  %122 = load i32, i32* @WRITE, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8**, i8*** %121, i64 %123
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* @LIMIT_MAX, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  store i8* %118, i8** %127, align 8
  %128 = load i8*, i8** @DFL_LATENCY_TARGET, align 8
  %129 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %130 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @DFL_LATENCY_TARGET, align 8
  %132 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %133 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @DFL_IDLE_THRESHOLD, align 8
  %135 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %136 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @DFL_IDLE_THRESHOLD, align 8
  %138 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %139 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %141 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %140, i32 0, i32 0
  store %struct.blkg_policy_data* %141, %struct.blkg_policy_data** %4, align 8
  br label %142

142:                                              ; preds = %48, %17
  %143 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %4, align 8
  ret %struct.blkg_policy_data* %143
}

declare dso_local %struct.throtl_grp* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @throtl_service_queue_init(i32*) #1

declare dso_local i32 @throtl_qnode_init(i32*, %struct.throtl_grp*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
