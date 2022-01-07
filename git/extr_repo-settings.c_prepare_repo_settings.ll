; ModuleID = '/home/carl/AnghaBench/git/extr_repo-settings.c_prepare_repo_settings.c'
source_filename = "/home/carl/AnghaBench/git/extr_repo-settings.c_prepare_repo_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"core.commitgraph\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gc.writecommitgraph\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index.version\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"core.untrackedcache\00", align 1
@UNTRACKED_CACHE_REMOVE = common dso_local global i32 0, align 4
@UNTRACKED_CACHE_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@UNTRACKED_CACHE_KEEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"fetch.negotiationalgorithm\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"skipping\00", align 1
@FETCH_NEGOTIATION_SKIPPING = common dso_local global i32 0, align 4
@FETCH_NEGOTIATION_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"pack.usesparse\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"feature.manyfiles\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"fetch.writecommitgraph\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"feature.experimental\00", align 1
@ignore_untracked_cache_config = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_repo_settings(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %5 = load %struct.repository*, %struct.repository** %2, align 8
  %6 = getelementptr inbounds %struct.repository, %struct.repository* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %193

11:                                               ; preds = %1
  %12 = load %struct.repository*, %struct.repository** %2, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 0
  %14 = call i32 @memset(%struct.TYPE_2__* %13, i32 -1, i32 40)
  %15 = load %struct.repository*, %struct.repository** %2, align 8
  %16 = call i32 @repo_config_get_bool(%struct.repository* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.repository*, %struct.repository** %2, align 8
  %21 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %18, %11
  %24 = load %struct.repository*, %struct.repository** %2, align 8
  %25 = call i32 @repo_config_get_bool(%struct.repository* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.repository*, %struct.repository** %2, align 8
  %30 = getelementptr inbounds %struct.repository, %struct.repository* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.repository*, %struct.repository** %2, align 8
  %34 = getelementptr inbounds %struct.repository, %struct.repository* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @UPDATE_DEFAULT_BOOL(i32 %36, i32 1)
  %38 = load %struct.repository*, %struct.repository** %2, align 8
  %39 = getelementptr inbounds %struct.repository, %struct.repository* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @UPDATE_DEFAULT_BOOL(i32 %41, i32 1)
  %43 = load %struct.repository*, %struct.repository** %2, align 8
  %44 = call i32 @repo_config_get_int(%struct.repository* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.repository*, %struct.repository** %2, align 8
  %49 = getelementptr inbounds %struct.repository, %struct.repository* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %32
  %52 = load %struct.repository*, %struct.repository** %2, align 8
  %53 = call i32 @repo_config_get_maybe_bool(%struct.repository* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %3)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @UNTRACKED_CACHE_REMOVE, align 4
  %60 = load %struct.repository*, %struct.repository** %2, align 8
  %61 = getelementptr inbounds %struct.repository, %struct.repository* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  br label %68

63:                                               ; preds = %55
  %64 = load i32, i32* @UNTRACKED_CACHE_WRITE, align 4
  %65 = load %struct.repository*, %struct.repository** %2, align 8
  %66 = getelementptr inbounds %struct.repository, %struct.repository* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %58
  br label %86

69:                                               ; preds = %51
  %70 = load %struct.repository*, %struct.repository** %2, align 8
  %71 = call i32 @repo_config_get_string(%struct.repository* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @strcasecmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @UNTRACKED_CACHE_KEEP, align 4
  %79 = load %struct.repository*, %struct.repository** %2, align 8
  %80 = getelementptr inbounds %struct.repository, %struct.repository* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %69
  br label %86

86:                                               ; preds = %85, %68
  %87 = load %struct.repository*, %struct.repository** %2, align 8
  %88 = call i32 @repo_config_get_string(%struct.repository* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %4)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @strcasecmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @FETCH_NEGOTIATION_SKIPPING, align 4
  %96 = load %struct.repository*, %struct.repository** %2, align 8
  %97 = getelementptr inbounds %struct.repository, %struct.repository* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 8
  br label %104

99:                                               ; preds = %90
  %100 = load i32, i32* @FETCH_NEGOTIATION_DEFAULT, align 4
  %101 = load %struct.repository*, %struct.repository** %2, align 8
  %102 = getelementptr inbounds %struct.repository, %struct.repository* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  store i32 %100, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %86
  %106 = load %struct.repository*, %struct.repository** %2, align 8
  %107 = call i32 @repo_config_get_bool(%struct.repository* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %3)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.repository*, %struct.repository** %2, align 8
  %112 = getelementptr inbounds %struct.repository, %struct.repository* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 5
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %105
  %115 = load %struct.repository*, %struct.repository** %2, align 8
  %116 = call i32 @repo_config_get_bool(%struct.repository* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %3)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %3, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load %struct.repository*, %struct.repository** %2, align 8
  %123 = getelementptr inbounds %struct.repository, %struct.repository* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @UPDATE_DEFAULT_BOOL(i32 %125, i32 4)
  %127 = load %struct.repository*, %struct.repository** %2, align 8
  %128 = getelementptr inbounds %struct.repository, %struct.repository* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @UNTRACKED_CACHE_WRITE, align 4
  %132 = call i32 @UPDATE_DEFAULT_BOOL(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %121, %118, %114
  %134 = load %struct.repository*, %struct.repository** %2, align 8
  %135 = call i32 @repo_config_get_bool(%struct.repository* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* %3)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %3, align 4
  %139 = load %struct.repository*, %struct.repository** %2, align 8
  %140 = getelementptr inbounds %struct.repository, %struct.repository* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 6
  store i32 %138, i32* %141, align 8
  br label %142

142:                                              ; preds = %137, %133
  %143 = load %struct.repository*, %struct.repository** %2, align 8
  %144 = call i32 @repo_config_get_bool(%struct.repository* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* %3)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %166, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load %struct.repository*, %struct.repository** %2, align 8
  %151 = getelementptr inbounds %struct.repository, %struct.repository* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @UPDATE_DEFAULT_BOOL(i32 %153, i32 1)
  %155 = load %struct.repository*, %struct.repository** %2, align 8
  %156 = getelementptr inbounds %struct.repository, %struct.repository* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @FETCH_NEGOTIATION_SKIPPING, align 4
  %160 = call i32 @UPDATE_DEFAULT_BOOL(i32 %158, i32 %159)
  %161 = load %struct.repository*, %struct.repository** %2, align 8
  %162 = getelementptr inbounds %struct.repository, %struct.repository* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @UPDATE_DEFAULT_BOOL(i32 %164, i32 1)
  br label %166

166:                                              ; preds = %149, %146, %142
  %167 = load %struct.repository*, %struct.repository** %2, align 8
  %168 = getelementptr inbounds %struct.repository, %struct.repository* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @UPDATE_DEFAULT_BOOL(i32 %170, i32 0)
  %172 = load i64, i64* @ignore_untracked_cache_config, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load i32, i32* @UNTRACKED_CACHE_KEEP, align 4
  %176 = load %struct.repository*, %struct.repository** %2, align 8
  %177 = getelementptr inbounds %struct.repository, %struct.repository* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 3
  store i32 %175, i32* %178, align 4
  br label %186

179:                                              ; preds = %166
  %180 = load %struct.repository*, %struct.repository** %2, align 8
  %181 = getelementptr inbounds %struct.repository, %struct.repository* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @UNTRACKED_CACHE_KEEP, align 4
  %185 = call i32 @UPDATE_DEFAULT_BOOL(i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %179, %174
  %187 = load %struct.repository*, %struct.repository** %2, align 8
  %188 = getelementptr inbounds %struct.repository, %struct.repository* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @FETCH_NEGOTIATION_DEFAULT, align 4
  %192 = call i32 @UPDATE_DEFAULT_BOOL(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %186, %10
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @repo_config_get_bool(%struct.repository*, i8*, i32*) #1

declare dso_local i32 @UPDATE_DEFAULT_BOOL(i32, i32) #1

declare dso_local i32 @repo_config_get_int(%struct.repository*, i8*, i32*) #1

declare dso_local i32 @repo_config_get_maybe_bool(%struct.repository*, i8*, i32*) #1

declare dso_local i32 @repo_config_get_string(%struct.repository*, i8*, i8**) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
