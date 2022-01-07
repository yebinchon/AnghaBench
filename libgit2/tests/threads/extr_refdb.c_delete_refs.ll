; ModuleID = '/home/carl/AnghaBench/libgit2/tests/threads/extr_refdb.c_delete_refs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/threads/extr_refdb.c_delete_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.th_data = type { i32, i32 }

@NREFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"refs/heads/thread-%03d-%02d\00", align 1
@GIT_ELOCKED = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@concurrent_compress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @delete_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @delete_refs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.th_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.th_data*
  store %struct.th_data* %11, %struct.th_data** %5, align 8
  %12 = load %struct.th_data*, %struct.th_data** %5, align 8
  %13 = load %struct.th_data*, %struct.th_data** %5, align 8
  %14 = getelementptr inbounds %struct.th_data, %struct.th_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @git_repository_open(i32** %8, i32 %15)
  %17 = call i32 @cl_git_thread_pass(%struct.th_data* %12, i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %80, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NREFS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %18
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %24 = load %struct.th_data*, %struct.th_data** %5, align 8
  %25 = getelementptr inbounds %struct.th_data, %struct.th_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @p_snprintf(i8* %23, i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %32 = call i32 @git_reference_lookup(i32** %6, i32* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %38, %34
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @git_reference_delete(i32* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @GIT_ELOCKED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %35, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @GIT_ENOTFOUND, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load %struct.th_data*, %struct.th_data** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @cl_git_thread_pass(%struct.th_data* %48, i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @git_reference_free(i32* %51)
  br label %53

53:                                               ; preds = %47, %22
  %54 = load i64, i64* @concurrent_compress, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @NREFS, align 4
  %59 = sdiv i32 %58, 2
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.th_data*, %struct.th_data** %5, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @git_repository_refdb(i32** %9, i32* %63)
  %65 = call i32 @cl_git_thread_pass(%struct.th_data* %62, i32 %64)
  br label %66

66:                                               ; preds = %69, %61
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @git_refdb_compress(i32* %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @GIT_ELOCKED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %66, label %73

73:                                               ; preds = %69
  %74 = load %struct.th_data*, %struct.th_data** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @cl_git_thread_pass(%struct.th_data* %74, i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @git_refdb_free(i32* %77)
  br label %79

79:                                               ; preds = %73, %56, %53
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %18

83:                                               ; preds = %18
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @git_repository_free(i32* %84)
  %86 = call i32 (...) @git_error_clear()
  %87 = load i8*, i8** %2, align 8
  ret i8* %87
}

declare dso_local i32 @cl_git_thread_pass(%struct.th_data*, i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @p_snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_delete(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_repository_refdb(i32**, i32*) #1

declare dso_local i32 @git_refdb_compress(i32*) #1

declare dso_local i32 @git_refdb_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
