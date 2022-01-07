; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_add_to_known_names.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_add_to_known_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_name = type { i32, i32, i32*, i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i32, i32*)* @add_to_known_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_known_names(i32* %0, i32* %1, i8* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.commit_name*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.commit_name* @find_commit_name(i32* %17, i32* %18)
  store %struct.commit_name* %19, %struct.commit_name** %14, align 8
  %20 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %21 = icmp ne %struct.commit_name* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i64 @replace_name(i32** %16, i32* %23, %struct.commit_name* %24, i32 %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = call %struct.commit_name* @git__malloc(i32 40)
  store %struct.commit_name* %33, %struct.commit_name** %14, align 8
  %34 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %35 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.commit_name* %34)
  %36 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %37 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %39 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %32, %29
  %41 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %42 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %47 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @git_tag_free(i32* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %53 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %52, i32 0, i32 5
  store i32* %51, i32** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %56 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %58 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %60 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %59, i32 0, i32 3
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @git_oid_cpy(i32* %60, i32* %61)
  %63 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %64 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @git__free(i32* %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i32* @git__strdup(i8* %67)
  %69 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %70 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %72 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %71, i32 0, i32 1
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @git_oid_cpy(i32* %72, i32* %73)
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %50
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %80 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %79, i32 0, i32 1
  %81 = load %struct.commit_name*, %struct.commit_name** %14, align 8
  %82 = call i64 @git_oidmap_set(i32* %78, i32* %80, %struct.commit_name* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %7, align 4
  br label %90

85:                                               ; preds = %77, %50
  br label %89

86:                                               ; preds = %6
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @git_tag_free(i32* %87)
  br label %89

89:                                               ; preds = %86, %85
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.commit_name* @find_commit_name(i32*, i32*) #1

declare dso_local i64 @replace_name(i32**, i32*, %struct.commit_name*, i32, i32*) #1

declare dso_local %struct.commit_name* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.commit_name*) #1

declare dso_local i32 @git_tag_free(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git__free(i32*) #1

declare dso_local i32* @git__strdup(i8*) #1

declare dso_local i64 @git_oidmap_set(i32*, i32*, %struct.commit_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
