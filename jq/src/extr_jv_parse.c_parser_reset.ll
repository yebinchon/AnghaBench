; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parser_reset.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parser_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i32, i32, i32, i64, i8**, i8*, i8*, i32, i64, i8* }

@JV_PARSE_STREAMING = common dso_local global i32 0, align 4
@JV_LAST_NONE = common dso_local global i32 0, align 4
@JV_PARSER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jv_parser*)* @parser_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parser_reset(%struct.jv_parser* %0) #0 {
  %2 = alloca %struct.jv_parser*, align 8
  %3 = alloca i32, align 4
  store %struct.jv_parser* %0, %struct.jv_parser** %2, align 8
  %4 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %5 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @JV_PARSE_STREAMING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %12 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %11, i32 0, i32 9
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @jv_free(i8* %13)
  %15 = call i8* (...) @jv_array()
  %16 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %17 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %16, i32 0, i32 9
  store i8* %15, i8** %17, align 8
  %18 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %19 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %10, %1
  %21 = load i32, i32* @JV_LAST_NONE, align 4
  %22 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %23 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %25 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %24, i32 0, i32 6
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @jv_free(i8* %26)
  %28 = call i8* (...) @jv_invalid()
  %29 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %30 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %32 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @jv_free(i8* %33)
  %35 = call i8* (...) @jv_invalid()
  %36 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %37 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %53, %20
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %41 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %46 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %45, i32 0, i32 4
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @jv_free(i8* %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %58 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %60 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @JV_PARSER_NORMAL, align 4
  %62 = load %struct.jv_parser*, %struct.jv_parser** %2, align 8
  %63 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  ret void
}

declare dso_local i32 @jv_free(i8*) #1

declare dso_local i8* @jv_array(...) #1

declare dso_local i8* @jv_invalid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
