; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_req_bio_endio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_req_bio_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.bio = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@RQF_QUIET = common dso_local global i32 0, align 4
@BIO_QUIET = common dso_local global i32 0, align 4
@RQF_FLUSH_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.bio*, i32, i64)* @req_bio_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_bio_endio(%struct.request* %0, %struct.bio* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.bio*, %struct.bio** %6, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %11, %4
  %16 = load %struct.request*, %struct.request** %5, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RQF_QUIET, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = load i32, i32* @BIO_QUIET, align 4
  %26 = call i32 @bio_set_flag(%struct.bio* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @bio_advance(%struct.bio* %28, i32 %29)
  %31 = load %struct.bio*, %struct.bio** %6, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RQF_FLUSH_SEQ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load %struct.bio*, %struct.bio** %6, align 8
  %45 = call i32 @bio_endio(%struct.bio* %44)
  br label %46

46:                                               ; preds = %43, %36, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
