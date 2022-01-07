; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_conflicts_load_byname_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_conflicts_load_byname_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i64, i64, i64 }

@GIT_ERROR_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"a NAME entry exists without an ancestor\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"a NAME entry exists without an ours or theirs\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"a NAME entry referenced ancestor entry '%s' which does not exist in the main index\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"a NAME entry referenced our entry '%s' which does not exist in the main index\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"a NAME entry referenced their entry '%s' which does not exist in the main index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_10__**, i32*, %struct.TYPE_9__*)* @checkout_conflicts_load_byname_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_conflicts_load_byname_entry(%struct.TYPE_10__** %0, %struct.TYPE_10__** %1, %struct.TYPE_10__** %2, i32* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %24 = call i32 (i32, i8*, ...) @git_error_set(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %147

25:                                               ; preds = %5
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %37 = call i32 (i32, i8*, ...) @git_error_set(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %147

38:                                               ; preds = %30, %25
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.TYPE_10__* @checkout_conflicts_search_ancestor(i32* %39, i64 %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %11, align 8
  %44 = icmp eq %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @git_error_set(i32 %46, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  store i32 -1, i32* %14, align 4
  br label %147

51:                                               ; preds = %38
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @strcmp(i64 %59, i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %12, align 8
  br label %86

67:                                               ; preds = %56
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.TYPE_10__* @checkout_conflicts_search_branch(i32* %68, i64 %71)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %12, align 8
  %73 = icmp eq %struct.TYPE_10__* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74, %67
  %80 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i32, i8*, ...) @git_error_set(i32 %80, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  store i32 -1, i32* %14, align 4
  br label %147

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %65
  br label %87

87:                                               ; preds = %86, %51
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @strcmp(i64 %95, i64 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %13, align 8
  br label %139

103:                                              ; preds = %92
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @strcmp(i64 %111, i64 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %13, align 8
  br label %138

119:                                              ; preds = %108, %103
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call %struct.TYPE_10__* @checkout_conflicts_search_branch(i32* %120, i64 %123)
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %13, align 8
  %125 = icmp eq %struct.TYPE_10__* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %119
  %132 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i32, i8*, ...) @git_error_set(i32 %132, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i64 %135)
  store i32 -1, i32* %14, align 4
  br label %147

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %117
  br label %139

139:                                              ; preds = %138, %101
  br label %140

140:                                              ; preds = %139, %87
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %142 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %144 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %144, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %146, align 8
  br label %147

147:                                              ; preds = %140, %131, %79, %45, %35, %22
  %148 = load i32, i32* %14, align 4
  ret i32 %148
}

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @checkout_conflicts_search_ancestor(i32*, i64) #1

declare dso_local i64 @strcmp(i64, i64) #1

declare dso_local %struct.TYPE_10__* @checkout_conflicts_search_branch(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
