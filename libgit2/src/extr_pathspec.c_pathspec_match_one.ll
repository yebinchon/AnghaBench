; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_match_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_match_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.pathspec_match_context = type { i64, i64 (i8*, i32, i64)*, i64 (i32, i8*)* }

@GIT_ATTR_FNMATCH_MATCH_ALL = common dso_local global i32 0, align 4
@WM_NOMATCH = common dso_local global i32 0, align 4
@GIT_ATTR_FNMATCH_HASWILD = common dso_local global i32 0, align 4
@GIT_ATTR_FNMATCH_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pathspec_match_context*, i8*)* @pathspec_match_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pathspec_match_one(%struct.TYPE_3__* %0, %struct.pathspec_match_context* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.pathspec_match_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.pathspec_match_context* %1, %struct.pathspec_match_context** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GIT_ATTR_FNMATCH_MATCH_ALL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @WM_NOMATCH, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 0, %15 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @WM_NOMATCH, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %6, align 8
  %25 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %24, i32 0, i32 2
  %26 = load i64 (i32, i8*)*, i64 (i32, i8*)** %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 %26(i32 %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @WM_NOMATCH, align 4
  br label %36

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %18
  %39 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %6, align 8
  %40 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @WM_NOMATCH, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %6, align 8
  %53 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @wildmatch(i32 %50, i8* %51, i64 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %47, %43, %38
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @WM_NOMATCH, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GIT_ATTR_FNMATCH_HASWILD, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %6, align 8
  %69 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %68, i32 0, i32 1
  %70 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 %70(i8* %71, i32 %74, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %67
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 47
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %80, %67, %60, %56
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @WM_NOMATCH, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %140

94:                                               ; preds = %90
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GIT_ATTR_FNMATCH_NEGATIVE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %94
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 33
  br i1 %105, label %106, label %140

106:                                              ; preds = %101
  %107 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %6, align 8
  %108 = getelementptr inbounds %struct.pathspec_match_context, %struct.pathspec_match_context* %107, i32 0, i32 1
  %109 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %108, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 %109(i8* %111, i32 %114, i64 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %106
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %120
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 47
  br i1 %138, label %139, label %140

139:                                              ; preds = %129, %120
  store i32 1, i32* %4, align 4
  br label %153

140:                                              ; preds = %129, %106, %101, %94, %90
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @GIT_ATTR_FNMATCH_NEGATIVE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 0, i32 1
  store i32 %151, i32* %4, align 4
  br label %153

152:                                              ; preds = %140
  store i32 -1, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %143, %139
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @wildmatch(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
