; ModuleID = '/home/carl/AnghaBench/git/extr_versioncmp.c_swap_prereleases.c'
source_filename = "/home/carl/AnghaBench/git/extr_versioncmp.c_swap_prereleases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.suffix_match = type { i32, i32, i32, i32 }

@prereleases = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32*)* @swap_prereleases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_prereleases(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.suffix_match, align 4
  %12 = alloca %struct.suffix_match, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 2
  store i32 -1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 2
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 3
  store i32 0, i32* %25, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %64, %4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prereleases, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @prereleases, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %15, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %14, align 4
  br label %51

50:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @find_better_matching_suffix(i8* %52, i8* %53, i32 %54, i32 %55, i32 %56, %struct.suffix_match* %11)
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @find_better_matching_suffix(i8* %58, i8* %59, i32 %60, i32 %61, i32 %62, %struct.suffix_match* %12)
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %26

67:                                               ; preds = %26
  %68 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %108

76:                                               ; preds = %71, %67
  %77 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %108

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %12, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %93, %95
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %107

98:                                               ; preds = %87, %83
  %99 = getelementptr inbounds %struct.suffix_match, %struct.suffix_match* %11, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32*, i32** %9, align 8
  store i32 -1, i32* %103, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32*, i32** %9, align 8
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %104, %102
  br label %107

107:                                              ; preds = %106, %91
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %82, %75
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @find_better_matching_suffix(i8*, i8*, i32, i32, i32, %struct.suffix_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
