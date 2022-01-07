; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_last_matching_pattern_from_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_last_matching_pattern_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_pattern = type { i8*, i32, i32, i32, i8*, i32 }
%struct.pattern_list = type { i32, %struct.path_pattern** }
%struct.index_state = type { i32 }

@PATTERN_FLAG_MUSTBEDIR = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@PATTERN_FLAG_NODIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.path_pattern* (i8*, i32, i8*, i32*, %struct.pattern_list*, %struct.index_state*)* @last_matching_pattern_from_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.path_pattern* @last_matching_pattern_from_list(i8* %0, i32 %1, i8* %2, i32* %3, %struct.pattern_list* %4, %struct.index_state* %5) #0 {
  %7 = alloca %struct.path_pattern*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pattern_list*, align 8
  %13 = alloca %struct.index_state*, align 8
  %14 = alloca %struct.path_pattern*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.path_pattern*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.pattern_list* %4, %struct.pattern_list** %12, align 8
  store %struct.index_state* %5, %struct.index_state** %13, align 8
  store %struct.path_pattern* null, %struct.path_pattern** %14, align 8
  %19 = load %struct.pattern_list*, %struct.pattern_list** %12, align 8
  %20 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store %struct.path_pattern* null, %struct.path_pattern** %7, align 8
  br label %158

24:                                               ; preds = %6
  %25 = load %struct.pattern_list*, %struct.pattern_list** %12, align 8
  %26 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %153, %24
  %30 = load i32, i32* %15, align 4
  %31 = icmp sle i32 0, %30
  br i1 %31, label %32, label %156

32:                                               ; preds = %29
  %33 = load %struct.pattern_list*, %struct.pattern_list** %12, align 8
  %34 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %33, i32 0, i32 1
  %35 = load %struct.path_pattern**, %struct.path_pattern*** %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.path_pattern*, %struct.path_pattern** %35, i64 %37
  %39 = load %struct.path_pattern*, %struct.path_pattern** %38, align 8
  store %struct.path_pattern* %39, %struct.path_pattern** %16, align 8
  %40 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %41 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %17, align 8
  %43 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %44 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %18, align 4
  %46 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %47 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PATTERN_FLAG_MUSTBEDIR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %32
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DT_UNKNOWN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.index_state*, %struct.index_state** %13, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @get_dtype(i32* null, %struct.index_state* %58, i8* %59, i32 %60)
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DT_DIR, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %153

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %32
  %71 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %72 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PATTERN_FLAG_NODIR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = load i8*, i8** %10, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sub nsw i64 %80, %85
  %87 = trunc i64 %86 to i32
  %88 = load i8*, i8** %17, align 8
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %91 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %94 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @match_basename(i8* %78, i32 %87, i8* %88, i32 %89, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %77
  %99 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  store %struct.path_pattern* %99, %struct.path_pattern** %14, align 8
  br label %156

100:                                              ; preds = %77
  br label %153

101:                                              ; preds = %70
  %102 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %103 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %108 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %111 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 47
  br label %119

119:                                              ; preds = %106, %101
  %120 = phi i1 [ true, %101 ], [ %118, %106 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %126 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %125, i32 0, i32 4
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %129 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %134 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  br label %138

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %132
  %139 = phi i32 [ %136, %132 ], [ 0, %137 ]
  %140 = load i8*, i8** %17, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %143 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  %146 = getelementptr inbounds %struct.path_pattern, %struct.path_pattern* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @match_pathname(i8* %123, i32 %124, i8* %127, i32 %139, i8* %140, i32 %141, i32 %144, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load %struct.path_pattern*, %struct.path_pattern** %16, align 8
  store %struct.path_pattern* %151, %struct.path_pattern** %14, align 8
  br label %156

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %100, %68
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %15, align 4
  br label %29

156:                                              ; preds = %150, %98, %29
  %157 = load %struct.path_pattern*, %struct.path_pattern** %14, align 8
  store %struct.path_pattern* %157, %struct.path_pattern** %7, align 8
  br label %158

158:                                              ; preds = %156, %23
  %159 = load %struct.path_pattern*, %struct.path_pattern** %7, align 8
  ret %struct.path_pattern* %159
}

declare dso_local i32 @get_dtype(i32*, %struct.index_state*, i8*, i32) #1

declare dso_local i64 @match_basename(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @match_pathname(i8*, i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
