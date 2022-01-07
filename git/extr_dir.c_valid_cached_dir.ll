; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_valid_cached_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_valid_cached_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.untracked_cache_dir = type { i32, i32, i32 }
%struct.index_state = type { i32 }
%struct.strbuf = type { i8*, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.index_state*, %struct.strbuf*, i32)* @valid_cached_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_cached_dir(%struct.dir_struct* %0, %struct.untracked_cache_dir* %1, %struct.index_state* %2, %struct.strbuf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dir_struct*, align 8
  %8 = alloca %struct.untracked_cache_dir*, align 8
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %7, align 8
  store %struct.untracked_cache_dir* %1, %struct.untracked_cache_dir** %8, align 8
  store %struct.index_state* %2, %struct.index_state** %9, align 8
  store %struct.strbuf* %3, %struct.strbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %14 = icmp ne %struct.untracked_cache_dir* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %125

16:                                               ; preds = %5
  %17 = load %struct.index_state*, %struct.index_state** %9, align 8
  %18 = call i32 @refresh_fsmonitor(%struct.index_state* %17)
  %19 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %20 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %27 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %25, %16
  %31 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %39 ]
  %42 = call i64 @lstat(i8* %41, %struct.stat* %12)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %46 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %45, i32 0, i32 2
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %125

48:                                               ; preds = %40
  %49 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %50 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.index_state*, %struct.index_state** %9, align 8
  %55 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %56 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %55, i32 0, i32 2
  %57 = call i64 @match_stat_data_racy(%struct.index_state* %54, i32* %56, %struct.stat* %12)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %48
  %60 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %61 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %60, i32 0, i32 2
  %62 = call i32 @fill_stat_data(i32* %61, %struct.stat* %12)
  store i32 0, i32* %6, align 4
  br label %125

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %25
  %65 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %66 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = icmp ne i32 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %125

75:                                               ; preds = %64
  %76 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 47
  br i1 %92, label %93, label %111

93:                                               ; preds = %80
  %94 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %95 = call i32 @strbuf_addch(%struct.strbuf* %94, i8 signext 47)
  %96 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %97 = load %struct.index_state*, %struct.index_state** %9, align 8
  %98 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @prep_exclude(%struct.dir_struct* %96, %struct.index_state* %97, i8* %100, i32 %103)
  %105 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %106 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = call i32 @strbuf_setlen(%struct.strbuf* %105, i32 %109)
  br label %121

111:                                              ; preds = %80, %75
  %112 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %113 = load %struct.index_state*, %struct.index_state** %9, align 8
  %114 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %118 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @prep_exclude(%struct.dir_struct* %112, %struct.index_state* %113, i8* %116, i32 %119)
  br label %121

121:                                              ; preds = %111, %93
  %122 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %8, align 8
  %123 = getelementptr inbounds %struct.untracked_cache_dir, %struct.untracked_cache_dir* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %74, %59, %44, %15
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @refresh_fsmonitor(%struct.index_state*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @match_stat_data_racy(%struct.index_state*, i32*, %struct.stat*) #1

declare dso_local i32 @fill_stat_data(i32*, %struct.stat*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @prep_exclude(%struct.dir_struct*, %struct.index_state*, i8*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
