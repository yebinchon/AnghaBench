; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_stream_check_done.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_stream_check_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i64, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jv_parser*, i8**)* @stream_check_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_check_done(%struct.jv_parser* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jv_parser*, align 8
  %5 = alloca i8**, align 8
  store %struct.jv_parser* %0, %struct.jv_parser** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %7 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %12 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @jv_is_valid(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %18 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @jv_copy(i8* %19)
  %21 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %22 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @JV_ARRAY(i8* %20, i8* %23)
  %25 = load i8**, i8*** %5, align 8
  store i8* %24, i8** %25, align 8
  %26 = call i8* (...) @jv_invalid()
  %27 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %28 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  store i32 1, i32* %3, align 4
  br label %65

29:                                               ; preds = %10, %2
  %30 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %31 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @jv_is_valid(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  %36 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %37 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @jv_copy(i8* %38)
  %40 = call i32 @jv_array_length(i8* %39)
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %44 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @jv_copy(i8* %45)
  %47 = call i8* @jv_array_slice(i8* %46, i32 0, i32 2)
  %48 = load i8**, i8*** %5, align 8
  store i8* %47, i8** %48, align 8
  %49 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %50 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @jv_array_slice(i8* %51, i32 0, i32 1)
  %53 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %54 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %57 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %5, align 8
  store i8* %58, i8** %59, align 8
  %60 = call i8* (...) @jv_invalid()
  %61 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %62 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %42
  store i32 1, i32* %3, align 4
  br label %65

64:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %63, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @jv_is_valid(i8*) #1

declare dso_local i8* @JV_ARRAY(i8*, i8*) #1

declare dso_local i8* @jv_copy(i8*) #1

declare dso_local i8* @jv_invalid(...) #1

declare dso_local i32 @jv_array_length(i8*) #1

declare dso_local i8* @jv_array_slice(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
