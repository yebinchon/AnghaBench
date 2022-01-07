; ModuleID = '/home/carl/AnghaBench/libgit2/tests/threads/extr_refdb.c_create_refs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/threads/extr_refdb.c_create_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.th_data = type { i32, i32 }

@NREFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_ELOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"refs/heads/thread-%03d-%02d\00", align 1
@concurrent_compress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @create_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @create_refs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.th_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.th_data*
  store %struct.th_data* %13, %struct.th_data** %5, align 8
  %14 = load i32, i32* @NREFS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32*, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.th_data*, %struct.th_data** %5, align 8
  %19 = load %struct.th_data*, %struct.th_data** %5, align 8
  %20 = getelementptr inbounds %struct.th_data, %struct.th_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_repository_open(i32** %10, i32 %21)
  %23 = call i32 @cl_git_thread_pass(%struct.th_data* %18, i32 %22)
  br label %24

24:                                               ; preds = %27, %1
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @git_reference_name_to_id(i32* %6, i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GIT_ELOCKED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %24, label %31

31:                                               ; preds = %27
  %32 = load %struct.th_data*, %struct.th_data** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @cl_git_thread_pass(%struct.th_data* %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %87, %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @NREFS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %35
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %41 = load %struct.th_data*, %struct.th_data** %5, align 8
  %42 = getelementptr inbounds %struct.th_data, %struct.th_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @p_snprintf(i8* %40, i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %53, %39
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %17, i64 %48
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %52 = call i32 @git_reference_create(i32** %49, i32* %50, i8* %51, i32* %6, i32 0, i32* null)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @GIT_ELOCKED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %46, label %57

57:                                               ; preds = %53
  %58 = load %struct.th_data*, %struct.th_data** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @cl_git_thread_pass(%struct.th_data* %58, i32 %59)
  %61 = load i64, i64* @concurrent_compress, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @NREFS, align 4
  %66 = sdiv i32 %65, 2
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %63
  %69 = load %struct.th_data*, %struct.th_data** %5, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @git_repository_refdb(i32** %11, i32* %70)
  %72 = call i32 @cl_git_thread_pass(%struct.th_data* %69, i32 %71)
  br label %73

73:                                               ; preds = %76, %68
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @git_refdb_compress(i32* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @GIT_ELOCKED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %73, label %80

80:                                               ; preds = %76
  %81 = load %struct.th_data*, %struct.th_data** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @cl_git_thread_pass(%struct.th_data* %81, i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @git_refdb_free(i32* %84)
  br label %86

86:                                               ; preds = %80, %63, %57
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %35

90:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %101, %90
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @NREFS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %17, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @git_reference_free(i32* %99)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %91

104:                                              ; preds = %91
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @git_repository_free(i32* %105)
  %107 = call i32 (...) @git_error_clear()
  %108 = load i8*, i8** %2, align 8
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  ret i8* %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_git_thread_pass(%struct.th_data*, i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32*, i8*) #2

declare dso_local i32 @p_snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @git_repository_refdb(i32**, i32*) #2

declare dso_local i32 @git_refdb_compress(i32*) #2

declare dso_local i32 @git_refdb_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_error_clear(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
