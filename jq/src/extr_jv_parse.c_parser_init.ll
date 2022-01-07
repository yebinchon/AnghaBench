; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parser_init.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i8*, i8*, i32, i64, i64, i64, i8* }

@JV_PARSE_STREAMING = common dso_local global i32 0, align 4
@JV_PARSE_STREAM_ERRORS = common dso_local global i32 0, align 4
@JV_LAST_NONE = common dso_local global i32 0, align 4
@JV_PARSE_SEQ = common dso_local global i32 0, align 4
@JV_PARSER_WAITING_FOR_RS = common dso_local global i32 0, align 4
@JV_PARSER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jv_parser*, i32)* @parser_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parser_init(%struct.jv_parser* %0, i32 %1) #0 {
  %3 = alloca %struct.jv_parser*, align 8
  %4 = alloca i32, align 4
  store %struct.jv_parser* %0, %struct.jv_parser** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %7 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %9 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @JV_PARSE_STREAMING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i8* (...) @jv_array()
  %16 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %17 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %16, i32 0, i32 21
  store i8* %15, i8** %17, align 8
  br label %28

18:                                               ; preds = %2
  %19 = call i8* (...) @jv_invalid()
  %20 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %21 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %20, i32 0, i32 21
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @JV_PARSE_STREAM_ERRORS, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %25 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %18, %14
  %29 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %30 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %29, i32 0, i32 20
  store i64 0, i64* %30, align 8
  %31 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %32 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %31, i32 0, i32 18
  store i64 0, i64* %32, align 8
  %33 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %34 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %33, i32 0, i32 19
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @JV_LAST_NONE, align 4
  %36 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %37 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %36, i32 0, i32 17
  store i32 %35, i32* %37, align 8
  %38 = call i8* (...) @jv_invalid()
  %39 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %40 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %39, i32 0, i32 16
  store i8* %38, i8** %40, align 8
  %41 = call i8* (...) @jv_invalid()
  %42 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %43 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %42, i32 0, i32 15
  store i8* %41, i8** %43, align 8
  %44 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %45 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %44, i32 0, i32 14
  store i64 0, i64* %45, align 8
  %46 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %47 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %49 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %48, i32 0, i32 13
  store i64 0, i64* %49, align 8
  %50 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %51 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @JV_PARSE_SEQ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %28
  %57 = load i32, i32* @JV_PARSER_WAITING_FOR_RS, align 4
  %58 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %59 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  br label %64

60:                                               ; preds = %28
  %61 = load i32, i32* @JV_PARSER_NORMAL, align 4
  %62 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %63 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %66 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %68 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %67, i32 0, i32 9
  store i64 0, i64* %68, align 8
  %69 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %70 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %72 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %74 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %73, i32 0, i32 8
  store i64 0, i64* %74, align 8
  %75 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %76 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %78 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %80 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %82 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %84 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %83, i32 0, i32 2
  %85 = call i32 @jvp_dtoa_context_init(i32* %84)
  ret void
}

declare dso_local i8* @jv_array(...) #1

declare dso_local i8* @jv_invalid(...) #1

declare dso_local i32 @jvp_dtoa_context_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
