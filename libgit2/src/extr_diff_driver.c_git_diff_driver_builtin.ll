; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_git_diff_driver_builtin.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_driver.c_git_diff_driver_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@builtin_defs = common dso_local global %struct.TYPE_13__* null, align 8
@DIFF_DRIVER_PATTERNLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__**, %struct.TYPE_12__*, i8*)* @git_diff_driver_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_diff_driver_builtin(%struct.TYPE_14__** %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__**, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i64, i64* %10, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** @builtin_defs, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.TYPE_13__* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @builtin_defs, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strcasecmp(i8* %17, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @builtin_defs, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %27
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %7, align 8
  br label %33

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %10, align 8
  br label %11

33:                                               ; preds = %25, %11
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %92

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @diff_driver_alloc(%struct.TYPE_14__** %8, i32* null, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %92

44:                                               ; preds = %37
  %45 = load i32, i32* @DIFF_DRIVER_PATTERNLIST, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @diff_driver_add_patterns(%struct.TYPE_14__* %53, i64 %56, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %92

63:                                               ; preds = %52, %44
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @git_regexp_compile(i32* %70, i64 %73, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %92

80:                                               ; preds = %68, %63
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = call i32 @git_strmap_set(i32 %83, i32 %86, %struct.TYPE_14__* %87)
  store i32 %88, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %90, %79, %62, %43, %36
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = icmp ne %struct.TYPE_14__* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = call i32 @git_diff_driver_free(%struct.TYPE_14__* %99)
  br label %104

101:                                              ; preds = %95, %92
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %103, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i32 @diff_driver_alloc(%struct.TYPE_14__**, i32*, i32) #1

declare dso_local i32 @diff_driver_add_patterns(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @git_regexp_compile(i32*, i64, i32) #1

declare dso_local i32 @git_strmap_set(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @git_diff_driver_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
