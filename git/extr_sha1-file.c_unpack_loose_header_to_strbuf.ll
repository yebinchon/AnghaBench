; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_unpack_loose_header_to_strbuf.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_unpack_loose_header_to_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.strbuf = type { i32 }

@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i8*, i64, %struct.strbuf*)* @unpack_loose_header_to_strbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_loose_header_to_strbuf(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3, i64 %4, %struct.strbuf* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.strbuf*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.strbuf* %5, %struct.strbuf** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @unpack_loose_short_header(%struct.TYPE_5__* %15, i8* %16, i64 %17, i8* %18, i64 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @Z_OK, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %94

25:                                               ; preds = %6
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i64 @memchr(i8* %26, i8 signext 0, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %94

38:                                               ; preds = %25
  %39 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @strbuf_add(%struct.strbuf* %39, i8* %40, i32 %48)
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %89, %38
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = call i32 @git_inflate(%struct.TYPE_5__* %57, i32 0)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @strbuf_add(%struct.strbuf* %59, i8* %60, i32 %68)
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i64 @memchr(i8* %70, i8 signext 0, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %94

82:                                               ; preds = %56
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @Z_STREAM_END, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %56, label %93

93:                                               ; preds = %89
  store i32 -1, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %81, %37, %24
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @unpack_loose_short_header(%struct.TYPE_5__*, i8*, i64, i8*, i64) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @git_inflate(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
