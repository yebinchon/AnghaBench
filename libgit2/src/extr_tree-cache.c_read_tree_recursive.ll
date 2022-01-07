; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree-cache.c_read_tree_recursive.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree-cache.c_read_tree_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__**, i32 }

@GIT_FILEMODE_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @read_tree_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tree_recursive(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @git_tree_owner(i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @git_tree_id(i32* %22)
  %24 = call i32 @git_oid_cpy(i32* %21, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @git_tree_entrycount(i32* %25)
  store i64 %26, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %43, %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32* @git_tree_entry_byindex(i32* %32, i64 %33)
  store i32* %34, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = call i64 @git_tree_entry_filemode(i32* %35)
  %37 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %27

46:                                               ; preds = %27
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %13, i64 %47, i32 8)
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call %struct.TYPE_6__** @git_pool_mallocz(i32* %52, i64 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store %struct.TYPE_6__** %54, %struct.TYPE_6__*** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__** %59)
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %130, %46
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %133

65:                                               ; preds = %61
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32* @git_tree_entry_byindex(i32* %66, i64 %67)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i64 @git_tree_entry_filemode(i32* %69)
  %71 = load i64, i64* @GIT_FILEMODE_TREE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  br label %130

78:                                               ; preds = %65
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %82
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @git_tree_entry_name(i32* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @git_tree_cache_new(%struct.TYPE_6__** %83, i32 %85, i32* %86)
  store i32 %87, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %4, align 4
  br label %134

91:                                               ; preds = %78
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @git_tree_entry_id(i32* %93)
  %95 = call i32 @git_tree_lookup(i32** %17, i32* %92, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  br label %134

99:                                               ; preds = %91
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %102, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @read_tree_recursive(%struct.TYPE_6__* %105, i32* %106, i32* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @git_tree_free(i32* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %113, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %10, align 8
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %99
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %4, align 4
  br label %134

129:                                              ; preds = %99
  br label %130

130:                                              ; preds = %129, %73
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %9, align 8
  br label %61

133:                                              ; preds = %61
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %127, %97, %89
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32* @git_tree_owner(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_tree_id(i32*) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32* @git_tree_entry_byindex(i32*, i64) #1

declare dso_local i64 @git_tree_entry_filemode(i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64*, i64, i32) #1

declare dso_local %struct.TYPE_6__** @git_pool_mallocz(i32*, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__**) #1

declare dso_local i32 @git_tree_cache_new(%struct.TYPE_6__**, i32, i32*) #1

declare dso_local i32 @git_tree_entry_name(i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
