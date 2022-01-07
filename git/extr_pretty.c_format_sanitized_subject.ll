; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_format_sanitized_subject.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_format_sanitized_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @format_sanitized_subject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_sanitized_subject(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  store i32 2, i32* %7, align 4
  br label %11

11:                                               ; preds = %59, %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 10
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ false, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %62

23:                                               ; preds = %21
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @istitlechar(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %33 = call i32 @strbuf_addch(%struct.strbuf* %32, i8 signext 45)
  br label %34

34:                                               ; preds = %31, %28
  store i32 0, i32* %7, align 4
  %35 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @strbuf_addch(%struct.strbuf* %35, i8 signext %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %50, %43
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  br label %44

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %34
  br label %58

55:                                               ; preds = %23
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %54
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  br label %11

62:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %103, %62
  %64 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %66, %67
  %69 = load i64, i64* %6, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %63
  %72 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, 1
  %79 = load i64, i64* %5, align 8
  %80 = sub i64 %78, %79
  %81 = getelementptr inbounds i8, i8* %74, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %99, label %85

85:                                               ; preds = %71
  %86 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 1
  %93 = load i64, i64* %5, align 8
  %94 = sub i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %88, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 45
  br label %99

99:                                               ; preds = %85, %71
  %100 = phi i1 [ true, %71 ], [ %98, %85 ]
  br label %101

101:                                              ; preds = %99, %63
  %102 = phi i1 [ false, %63 ], [ %100, %99 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %5, align 8
  br label %63

106:                                              ; preds = %101
  %107 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %108 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = sub i64 %110, %111
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @strbuf_remove(%struct.strbuf* %107, i64 %112, i64 %113)
  ret void
}

declare dso_local i64 @istitlechar(i8 signext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
