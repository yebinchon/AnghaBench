; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_split_blame.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame_git.c_split_blame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @split_blame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_blame(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %23 = call i32 @dup_entry(%struct.TYPE_11__* %20, %struct.TYPE_11__* %22)
  %24 = call %struct.TYPE_11__* @git__malloc(i32 8)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %7, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 2
  %30 = call i32 @memcpy(%struct.TYPE_11__* %27, %struct.TYPE_11__* %29, i32 8)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = call i32 @add_blame_entry(i32* %31, %struct.TYPE_11__* %32)
  %34 = call %struct.TYPE_11__* @git__malloc(i32 8)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %7, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 1
  %40 = call i32 @memcpy(%struct.TYPE_11__* %37, %struct.TYPE_11__* %39, i32 8)
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = call i32 @add_blame_entry(i32* %41, %struct.TYPE_11__* %42)
  br label %99

44:                                               ; preds = %13, %3
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 1
  %60 = call i32 @dup_entry(%struct.TYPE_11__* %57, %struct.TYPE_11__* %59)
  br label %98

61:                                               ; preds = %50, %44
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 0
  %71 = call i32 @dup_entry(%struct.TYPE_11__* %68, %struct.TYPE_11__* %70)
  %72 = call %struct.TYPE_11__* @git__malloc(i32 8)
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %7, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 1
  %78 = call i32 @memcpy(%struct.TYPE_11__* %75, %struct.TYPE_11__* %77, i32 8)
  %79 = load i32*, i32** %4, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = call i32 @add_blame_entry(i32* %79, %struct.TYPE_11__* %80)
  br label %97

82:                                               ; preds = %61
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 1
  %86 = call i32 @dup_entry(%struct.TYPE_11__* %83, %struct.TYPE_11__* %85)
  %87 = call %struct.TYPE_11__* @git__malloc(i32 8)
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %7, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__* %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 2
  %93 = call i32 @memcpy(%struct.TYPE_11__* %90, %struct.TYPE_11__* %92, i32 8)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = call i32 @add_blame_entry(i32* %94, %struct.TYPE_11__* %95)
  br label %97

97:                                               ; preds = %82, %67
  br label %98

98:                                               ; preds = %97, %56
  br label %99

99:                                               ; preds = %98, %19
  ret i32 0
}

declare dso_local i32 @dup_entry(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @add_blame_entry(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
