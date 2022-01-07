; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_new_window.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_new_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@mem_ctl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@git_mwindow__window_size = common dso_local global i32 0, align 4
@git_mwindow__mapped_limit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i32, i64, i64)* @new_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @new_window(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_8__* @mem_ctl, %struct.TYPE_8__** %10, align 8
  %14 = load i32, i32* @git_mwindow__window_size, align 4
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = call %struct.TYPE_9__* @git__malloc(i32 16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %13, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %130

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %23 = call i32 @memset(%struct.TYPE_9__* %22, i32 0, i32 16)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = udiv i64 %24, %25
  %27 = load i64, i64* %11, align 8
  %28 = mul i64 %26, %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* @git_mwindow__window_size, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @git_mwindow__window_size, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %40, %21
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %61, %43
  %50 = load i64, i64* @git_mwindow__mapped_limit, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @git_mwindow_close_lru(i32* %56)
  %58 = icmp eq i64 %57, 0
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ false, %49 ], [ %58, %55 ]
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %49

62:                                               ; preds = %59
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @git_futils_mmap_ro(i32* %64, i32 %65, i64 %68, i64 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %77, %72
  %74 = load i32*, i32** %6, align 8
  %75 = call i64 @git_mwindow_close_lru(i32* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %73

78:                                               ; preds = %73
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @git_futils_mmap_ro(i32* %80, i32 %81, i64 %84, i64 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %90 = call i32 @git__free(%struct.TYPE_9__* %89)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %130

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %62
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %92
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %92
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %122, %114
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %5, align 8
  br label %130

130:                                              ; preds = %128, %88, %20
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %131
}

declare dso_local %struct.TYPE_9__* @git__malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @git_mwindow_close_lru(i32*) #1

declare dso_local i64 @git_futils_mmap_ro(i32*, i32, i64, i64) #1

declare dso_local i32 @git__free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
