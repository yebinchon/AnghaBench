; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_parse_commit_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_parse_commit_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_commit_context = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"author \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"committer \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_commit_context*)* @parse_commit_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_commit_header(%struct.format_commit_context* %0) #0 {
  %2 = alloca %struct.format_commit_context*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.format_commit_context* %0, %struct.format_commit_context** %2, align 8
  %7 = load %struct.format_commit_context*, %struct.format_commit_context** %2, align 8
  %8 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %108, %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %111

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %38, %17
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 10
  br label %35

35:                                               ; preds = %27, %19
  %36 = phi i1 [ false, %19 ], [ %34, %27 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %19

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %111

46:                                               ; preds = %41
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i64 @skip_prefix(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load %struct.format_commit_context*, %struct.format_commit_context** %2, align 8
  %61 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8*, i8** %5, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = load %struct.format_commit_context*, %struct.format_commit_context** %2, align 8
  %73 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  br label %105

75:                                               ; preds = %46
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = call i64 @skip_prefix(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %75
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.format_commit_context*, %struct.format_commit_context** %2, align 8
  %90 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8*, i8** %5, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = load %struct.format_commit_context*, %struct.format_commit_context** %2, align 8
  %102 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %82, %75
  br label %105

105:                                              ; preds = %104, %53
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %10

111:                                              ; preds = %45, %10
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.format_commit_context*, %struct.format_commit_context** %2, align 8
  %114 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.format_commit_context*, %struct.format_commit_context** %2, align 8
  %116 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  ret void
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
