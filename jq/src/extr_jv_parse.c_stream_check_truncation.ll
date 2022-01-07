; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_stream_check_truncation.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_stream_check_truncation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i64, i32 }

@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@JV_KIND_TRUE = common dso_local global i64 0, align 8
@JV_KIND_FALSE = common dso_local global i64 0, align 8
@JV_KIND_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jv_parser*)* @stream_check_truncation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_check_truncation(%struct.jv_parser* %0) #0 {
  %2 = alloca %struct.jv_parser*, align 8
  %3 = alloca i64, align 8
  store %struct.jv_parser* %0, %struct.jv_parser** %2, align 8
  %4 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %5 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @jv_get_kind(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %9 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @JV_KIND_NUMBER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @JV_KIND_TRUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @JV_KIND_FALSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @JV_KIND_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %16, %12, %1
  %29 = phi i1 [ true, %20 ], [ true, %16 ], [ true, %12 ], [ true, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i64 @jv_get_kind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
