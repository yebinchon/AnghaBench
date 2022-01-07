; ModuleID = '/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_stripspace.c'
source_filename = "/home/carl/AnghaBench/git/extr_strbuf.c_strbuf_stripspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

@comment_line_char = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_stripspace(%struct.strbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %12 = call i32 @strbuf_grow(%struct.strbuf* %11, i32 1)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %117, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %124

19:                                               ; preds = %13
  %20 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %27, %28
  %30 = call i8* @memchr(i8* %24, i8 signext 10, i64 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = ptrtoint i8* %34 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = add nsw i64 %42, 1
  br label %50

44:                                               ; preds = %19
  %45 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %47, %48
  br label %50

50:                                               ; preds = %44, %33
  %51 = phi i64 [ %43, %33 ], [ %49, %44 ]
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @comment_line_char, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i64 0, i64* %9, align 8
  br label %117

69:                                               ; preds = %57, %54, %50
  %70 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @cleanup(i8* %74, i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %69
  %80 = load i64, i64* %5, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i64, i64* %7, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  %91 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 10, i8* %91, align 1
  br label %92

92:                                               ; preds = %85, %82, %79
  store i64 0, i64* %5, align 8
  %93 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @memmove(i8* %97, i8* %102, i64 %103)
  %105 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %106 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %7, align 8
  %111 = add i64 %108, %109
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  store i8 10, i8* %112, align 1
  br label %116

113:                                              ; preds = %69
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %113, %92
  br label %117

117:                                              ; preds = %116, %68
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %7, align 8
  br label %13

124:                                              ; preds = %13
  %125 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @strbuf_setlen(%struct.strbuf* %125, i64 %126)
  ret void
}

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @cleanup(i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
