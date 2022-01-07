; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_blkcg_iolatency_done_bio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_blkcg_iolatency_done_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { i32 }
%struct.bio = type { i64, i32, %struct.blkcg_gq* }
%struct.blkcg_gq = type { %struct.blkcg_gq* }
%struct.rq_wait = type { i32, i32 }
%struct.iolatency_grp = type { i64, i32, i64, %struct.rq_wait, i32 }

@BIO_TRACKED = common dso_local global i32 0, align 4
@BLK_STS_AGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*, %struct.bio*)* @blkcg_iolatency_done_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkcg_iolatency_done_bio(%struct.rq_qos* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.rq_qos*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.blkcg_gq*, align 8
  %6 = alloca %struct.rq_wait*, align 8
  %7 = alloca %struct.iolatency_grp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rq_qos* %0, %struct.rq_qos** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %13 = call i32 (...) @ktime_get()
  %14 = call i64 @ktime_to_ns(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = call i32 @bio_issue_as_root_blkg(%struct.bio* %15)
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 2
  %19 = load %struct.blkcg_gq*, %struct.blkcg_gq** %18, align 8
  store %struct.blkcg_gq* %19, %struct.blkcg_gq** %5, align 8
  %20 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %21 = icmp ne %struct.blkcg_gq* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = load i32, i32* @BIO_TRACKED, align 4
  %25 = call i32 @bio_flagged(%struct.bio* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %2
  br label %126

28:                                               ; preds = %22
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  %31 = load %struct.blkcg_gq*, %struct.blkcg_gq** %30, align 8
  %32 = call %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq* %31)
  store %struct.iolatency_grp* %32, %struct.iolatency_grp** %7, align 8
  %33 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %34 = icmp ne %struct.iolatency_grp* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %126

36:                                               ; preds = %28
  %37 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %38 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @blk_iolatency_enabled(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %126

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %119, %60, %44
  %46 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %47 = icmp ne %struct.blkcg_gq* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %50 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %49, i32 0, i32 0
  %51 = load %struct.blkcg_gq*, %struct.blkcg_gq** %50, align 8
  %52 = icmp ne %struct.blkcg_gq* %51, null
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i1 [ false, %45 ], [ %52, %48 ]
  br i1 %54, label %55, label %126

55:                                               ; preds = %53
  %56 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %57 = call %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq* %56)
  store %struct.iolatency_grp* %57, %struct.iolatency_grp** %7, align 8
  %58 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %59 = icmp ne %struct.iolatency_grp* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %62 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %61, i32 0, i32 0
  %63 = load %struct.blkcg_gq*, %struct.blkcg_gq** %62, align 8
  store %struct.blkcg_gq* %63, %struct.blkcg_gq** %5, align 8
  br label %45

64:                                               ; preds = %55
  %65 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %66 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %65, i32 0, i32 3
  store %struct.rq_wait* %66, %struct.rq_wait** %6, align 8
  %67 = load %struct.rq_wait*, %struct.rq_wait** %6, align 8
  %68 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %67, i32 0, i32 1
  %69 = call i32 @atomic_dec_return(i32* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON_ONCE(i32 %72)
  %74 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %75 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %64
  %79 = load %struct.bio*, %struct.bio** %4, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BLK_STS_AGAIN, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %78
  %85 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 1
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @iolatency_record_time(%struct.iolatency_grp* %85, i32* %87, i64 %88, i32 %89)
  %91 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %92 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %91, i32 0, i32 1
  %93 = call i64 @atomic64_read(i32* %92)
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %84
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub nsw i64 %98, %99
  %101 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %102 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %100, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %107 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %106, i32 0, i32 1
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i64 @atomic64_cmpxchg(i32* %107, i64 %108, i64 %109)
  %111 = load i64, i64* %8, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.iolatency_grp*, %struct.iolatency_grp** %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @iolatency_check_latencies(%struct.iolatency_grp* %114, i64 %115)
  br label %117

117:                                              ; preds = %113, %105
  br label %118

118:                                              ; preds = %117, %97, %84
  br label %119

119:                                              ; preds = %118, %78, %64
  %120 = load %struct.rq_wait*, %struct.rq_wait** %6, align 8
  %121 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %120, i32 0, i32 0
  %122 = call i32 @wake_up(i32* %121)
  %123 = load %struct.blkcg_gq*, %struct.blkcg_gq** %5, align 8
  %124 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %123, i32 0, i32 0
  %125 = load %struct.blkcg_gq*, %struct.blkcg_gq** %124, align 8
  store %struct.blkcg_gq* %125, %struct.blkcg_gq** %5, align 8
  br label %45

126:                                              ; preds = %27, %35, %43, %53
  ret void
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @bio_issue_as_root_blkg(%struct.bio*) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq*) #1

declare dso_local i32 @blk_iolatency_enabled(i32) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iolatency_record_time(%struct.iolatency_grp*, i32*, i64, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @atomic64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @iolatency_check_latencies(%struct.iolatency_grp*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
