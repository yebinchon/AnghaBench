; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_reflog.c_git_reflog_append.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_reflog.c_git_reflog_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32, i32, i32 }

@GIT_OID_HEX_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reflog_append(%struct.TYPE_11__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %19, %16, %4
  %23 = phi i1 [ false, %16 ], [ false, %4 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call %struct.TYPE_10__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %11, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @git_signature_dup(i32* %30, i32* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %101

35:                                               ; preds = %22
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %73

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %13, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i8* @git__strndup(i8* %41, i64 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = icmp eq i8* %43, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %101

48:                                               ; preds = %38
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %69, %48
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 32, i8* %67, align 1
  br label %68

68:                                               ; preds = %62, %53
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %49

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = call %struct.TYPE_10__* @git_reflog_entry_byindex(%struct.TYPE_11__* %74, i32 0)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %10, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = icmp eq %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* @GIT_OID_HEX_ZERO, align 4
  %82 = call i32 @git_oid_fromstr(i32* %80, i32 %81)
  br label %89

83:                                               ; preds = %73
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = call i32 @git_oid_cpy(i32* %85, i32* %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @git_oid_cpy(i32* %91, i32* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = call i64 @git_vector_insert(i32* %95, %struct.TYPE_10__* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %101

100:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %104

101:                                              ; preds = %99, %47, %34
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %103 = call i32 @git_reflog_entry__free(%struct.TYPE_10__* %102)
  store i32 -1, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_10__*) #1

declare dso_local i64 @git_signature_dup(i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @git__strndup(i8*, i64) #1

declare dso_local %struct.TYPE_10__* @git_reflog_entry_byindex(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i64 @git_vector_insert(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @git_reflog_entry__free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
