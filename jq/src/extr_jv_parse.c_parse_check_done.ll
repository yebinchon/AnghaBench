; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parse_check_done.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parse_check_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jv_parser*, i32*)* @parse_check_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_check_done(%struct.jv_parser* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jv_parser*, align 8
  %5 = alloca i32*, align 8
  store %struct.jv_parser* %0, %struct.jv_parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %7 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %12 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @jv_is_valid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %18 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = call i32 (...) @jv_invalid()
  %22 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %23 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  store i32 1, i32* %3, align 4
  br label %25

24:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jv_invalid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
