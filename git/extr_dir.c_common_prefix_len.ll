; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_common_prefix_len.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_common_prefix_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i8* }

@PATHSPEC_FROMTOP = common dso_local global i32 0, align 4
@PATHSPEC_MAXDEPTH = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_GLOB = common dso_local global i32 0, align 4
@PATHSPEC_ICASE = common dso_local global i32 0, align 4
@PATHSPEC_EXCLUDE = common dso_local global i32 0, align 4
@PATHSPEC_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pathspec*)* @common_prefix_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @common_prefix_len(%struct.pathspec* %0) #0 {
  %2 = alloca %struct.pathspec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store %struct.pathspec* %0, %struct.pathspec** %2, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %10 = load i32, i32* @PATHSPEC_FROMTOP, align 4
  %11 = load i32, i32* @PATHSPEC_MAXDEPTH, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PATHSPEC_GLOB, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PATHSPEC_ICASE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PATHSPEC_ATTR, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @GUARD_PATHSPEC(%struct.pathspec* %9, i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %139, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %27 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %142

30:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %31 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %32 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PATHSPEC_EXCLUDE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %139

43:                                               ; preds = %30
  %44 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %45 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PATHSPEC_ICASE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %57 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  br label %73

64:                                               ; preds = %43
  %65 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %66 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %64, %55
  br label %74

74:                                               ; preds = %122, %73
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ult i64 %82, %83
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ true, %78 ], [ %84, %81 ]
  br label %87

87:                                               ; preds = %85, %74
  %88 = phi i1 [ false, %74 ], [ %86, %85 ]
  br i1 %88, label %89, label %125

89:                                               ; preds = %87
  %90 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %91 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  store i8 %100, i8* %8, align 1
  %101 = load i8, i8* %8, align 1
  %102 = sext i8 %101 to i32
  %103 = load %struct.pathspec*, %struct.pathspec** %2, align 8
  %104 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %102, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %89
  br label %125

115:                                              ; preds = %89
  %116 = load i8, i8* %8, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 47
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64, i64* %5, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i64, i64* %5, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %5, align 8
  br label %74

125:                                              ; preds = %114, %87
  %126 = load i32, i32* %3, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %4, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128, %125
  %133 = load i64, i64* %6, align 8
  store i64 %133, i64* %4, align 8
  %134 = load i64, i64* %4, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  br label %142

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %128
  br label %139

139:                                              ; preds = %138, %42
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %24

142:                                              ; preds = %136, %24
  %143 = load i64, i64* %4, align 8
  ret i64 %143
}

declare dso_local i32 @GUARD_PATHSPEC(%struct.pathspec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
