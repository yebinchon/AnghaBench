; ModuleID = '/home/carl/AnghaBench/git/extr_streaming.c_istream_source.c'
source_filename = "/home/carl/AnghaBench/git/extr_streaming.c_istream_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object_info = type { i32*, i64*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@stream_error = common dso_local global i32 0, align 4
@loose = common dso_local global i32 0, align 4
@big_file_threshold = common dso_local global i64 0, align 8
@pack_non_delta = common dso_local global i32 0, align 4
@incore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32*, %struct.object_info*)* @istream_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @istream_source(%struct.object_id* %0, i32* %1, %struct.object_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.object_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.object_info* %2, %struct.object_info** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.object_info*, %struct.object_info** %7, align 8
  %12 = getelementptr inbounds %struct.object_info, %struct.object_info* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.object_info*, %struct.object_info** %7, align 8
  %14 = getelementptr inbounds %struct.object_info, %struct.object_info* %13, i32 0, i32 1
  store i64* %8, i64** %14, align 8
  %15 = load i32, i32* @the_repository, align 4
  %16 = load %struct.object_id*, %struct.object_id** %5, align 8
  %17 = load %struct.object_info*, %struct.object_info** %7, align 8
  %18 = call i32 @oid_object_info_extended(i32 %15, %struct.object_id* %16, %struct.object_info* %17, i32 0)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @stream_error, align 4
  store i32 %22, i32* %4, align 4
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.object_info*, %struct.object_info** %7, align 8
  %25 = getelementptr inbounds %struct.object_info, %struct.object_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %43 [
    i32 129, label %27
    i32 128, label %29
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @loose, align 4
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load %struct.object_info*, %struct.object_info** %7, align 8
  %31 = getelementptr inbounds %struct.object_info, %struct.object_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i64, i64* @big_file_threshold, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @pack_non_delta, align 4
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %36, %29
  br label %43

43:                                               ; preds = %23, %42
  %44 = load i32, i32* @incore, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %40, %27, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @oid_object_info_extended(i32, %struct.object_id*, %struct.object_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
