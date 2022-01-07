; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_default_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_default_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@GIT_REFS_HEADS_MASTER_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_default_branch(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @git_remote_ls(%struct.TYPE_3__*** %6, i64* %9, i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %3, align 4
  br label %120

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %23, i32* %3, align 4
  br label %120

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @GIT_HEAD_FILE, align 4
  %31 = call i64 @strcmp(i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %34, i32* %3, align 4
  br label %120

35:                                               ; preds = %24
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @git_buf_sanitize(i32* %36)
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @git_buf_puts(i32* %45, i64 %50)
  store i32 %51, i32* %3, align 4
  br label %120

52:                                               ; preds = %35
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32* %56, i32** %8, align 8
  store i64 1, i64* %10, align 8
  br label %57

57:                                               ; preds = %106, %52
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %109

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i64 @git_oid_cmp(i32* %62, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %106

71:                                               ; preds = %61
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %73
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %79 = call i64 @git__prefixcmp(i64 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %106

82:                                               ; preds = %71
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = icmp ne %struct.TYPE_3__* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %7, align 8
  br label %106

90:                                               ; preds = %82
  %91 = load i32, i32* @GIT_REFS_HEADS_MASTER_FILE, align 4
  %92 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %92, i64 %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @git__strcmp(i32 %91, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %101, i64 %102
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  store %struct.TYPE_3__* %104, %struct.TYPE_3__** %7, align 8
  br label %109

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %85, %81, %70
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %57

109:                                              ; preds = %100, %57
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = icmp ne %struct.TYPE_3__* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %113, i32* %3, align 4
  br label %120

114:                                              ; preds = %109
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @git_buf_puts(i32* %115, i64 %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %114, %112, %44, %33, %22, %17
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @git_remote_ls(%struct.TYPE_3__***, i64*, i32*) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @git_buf_sanitize(i32*) #1

declare dso_local i32 @git_buf_puts(i32*, i64) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i64 @git__prefixcmp(i64, i32) #1

declare dso_local i32 @git__strcmp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
