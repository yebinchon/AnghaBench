; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_repo_commit_from_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_repo_commit_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@CL_COMMIT_NAME = common dso_local global i32 0, align 4
@CL_COMMIT_EMAIL = common dso_local global i32 0, align 4
@CL_COMMIT_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_repo_commit_from_index(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [128 x i8], align 16
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %18, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @git_revparse_ext(i32** %14, i32** %15, i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @git_repository_index(i32** %11, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @git_index_write_tree(i32* %13, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @git_index_write(i32* %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @git_index_free(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @git_tree_lookup(i32** %16, i32* %35, i32* %13)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %5
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ false, %40 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @cl_assert(i32 %52)
  br label %69

54:                                               ; preds = %5
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @CL_COMMIT_NAME, align 4
  %59 = load i32, i32* @CL_COMMIT_EMAIL, align 4
  %60 = call i32 @git_signature_now(%struct.TYPE_8__** %8, i32 %58, i32 %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  br label %68

62:                                               ; preds = %54
  %63 = load i32, i32* @CL_COMMIT_NAME, align 4
  %64 = load i32, i32* @CL_COMMIT_EMAIL, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @git_signature_new(%struct.TYPE_8__** %8, i32 %63, i32 %64, i32 %65, i32 0)
  %67 = call i32 @cl_git_pass(i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %74 = load i32, i32* @CL_COMMIT_MSG, align 4
  %75 = call i32 @strcpy(i8* %73, i32 %74)
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %77 = load i32, i32* @CL_COMMIT_MSG, align 4
  %78 = call i32 @strlen(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i32, i32* @CL_COMMIT_MSG, align 4
  %82 = call i32 @strlen(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = sub i64 128, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @git_oid_tostr(i8* %80, i32 %85, i32* %13)
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %72, %69
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32*, i32** %15, align 8
  %94 = call i8* @git_reference_name(i32* %93)
  br label %96

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %92
  %97 = phi i8* [ %94, %92 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %95 ]
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = icmp ne i32* %102, null
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @git_commit_create_v(i32* %12, i32* %89, i8* %97, %struct.TYPE_8__* %98, %struct.TYPE_8__* %99, i32* null, i8* %100, i32* %101, i32 %105, i32* %106)
  %108 = call i32 @cl_git_pass(i32 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %96
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @git_oid_cpy(i32* %112, i32* %12)
  br label %114

114:                                              ; preds = %111, %96
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @git_object_free(i32* %115)
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @git_reference_free(i32* %117)
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %123 = call i32 @git_signature_free(%struct.TYPE_8__* %122)
  br label %124

124:                                              ; preds = %121, %114
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @git_tree_free(i32* %125)
  ret void
}

declare dso_local i32 @git_revparse_ext(i32**, i32**, i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_signature_now(%struct.TYPE_8__**, i32, i32) #1

declare dso_local i32 @git_signature_new(%struct.TYPE_8__**, i32, i32, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @git_oid_tostr(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @git_commit_create_v(i32*, i32*, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i8* @git_reference_name(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_signature_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
