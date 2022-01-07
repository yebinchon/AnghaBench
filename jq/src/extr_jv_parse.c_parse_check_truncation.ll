; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parse_check_truncation.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parse_check_truncation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i32, i64, i64, i32, i32 }

@JV_PARSE_SEQ = common dso_local global i32 0, align 4
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jv_parser*)* @parse_check_truncation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_check_truncation(%struct.jv_parser* %0) #0 {
  %2 = alloca %struct.jv_parser*, align 8
  store %struct.jv_parser* %0, %struct.jv_parser** %2, align 8
  %3 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %4 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @JV_PARSE_SEQ, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %11 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %16 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %21 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %26 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @jv_get_kind(i32 %27)
  %29 = load i64, i64* @JV_KIND_NUMBER, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %24, %19, %14
  %32 = phi i1 [ true, %19 ], [ true, %14 ], [ %30, %24 ]
  br label %33

33:                                               ; preds = %31, %9, %1
  %34 = phi i1 [ false, %9 ], [ false, %1 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i64 @jv_get_kind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
