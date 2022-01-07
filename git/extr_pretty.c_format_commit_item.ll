; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_format_commit_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_format_commit_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }
%struct.format_commit_context = type { i64 }

@no_flush = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*, i8*, i8*)* @format_commit_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @format_commit_item(%struct.strbuf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %18 [
    i32 45, label %15
    i32 43, label %16
    i32 32, label %17
  ]

15:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %19

16:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %19

17:                                               ; preds = %3
  store i32 3, i32* %10, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %17, %16, %15
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.format_commit_context*
  %31 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @no_flush, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @format_and_pad_commit(%struct.strbuf* %36, i8* %37, i8* %38)
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %25
  %41 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @format_commit_one(%struct.strbuf* %41, i8* %42, i8* %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %4, align 8
  br label %116

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %80, %60
  %62 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %63 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br label %78

78:                                               ; preds = %66, %61
  %79 = phi i1 [ false, %61 ], [ %77, %66 ]
  br i1 %79, label %80, label %88

80:                                               ; preds = %78
  %81 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %82 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = call i32 @strbuf_setlen(%struct.strbuf* %81, i32 %86)
  br label %61

88:                                               ; preds = %78
  br label %112

89:                                               ; preds = %57, %51
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @strbuf_insert(%struct.strbuf* %99, i64 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %110

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @strbuf_insert(%struct.strbuf* %106, i64 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %109

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %98
  br label %111

111:                                              ; preds = %110, %89
  br label %112

112:                                              ; preds = %111, %88
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %112, %48
  %117 = load i64, i64* %4, align 8
  ret i64 %117
}

declare dso_local i32 @format_and_pad_commit(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @format_commit_one(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
