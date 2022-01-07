; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_lg2_cat_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_lg2_cat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i8*, i32, i64, i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Could not resolve\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s %s\0A--\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Could not open ODB\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Could not find obj\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"unknown %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_cat_file(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.opts, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %15 = bitcast %struct.opts* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 48, i1 false)
  %16 = bitcast i8* %15 to %struct.opts*
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %17, align 8
  store i32* null, i32** %8, align 8
  %18 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i8**, i8*** %6, align 8
  %25 = call i32 @parse_opts(%struct.opts* %7, i32 %23, i8** %24)
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @git_revparse_single(i32** %8, i32* %26, i32* %28)
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @check_lg2(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %3
  %37 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %11, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %42 = trunc i64 %39 to i32
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @git_object_id(i32* %43)
  %45 = call i32 @git_oid_tostr(i8* %41, i32 %42, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @git_object_type(i32* %46)
  %48 = call i8* @git_object_type2string(i32 %47)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %41)
  %50 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %50)
  br label %51

51:                                               ; preds = %36, %3
  %52 = getelementptr inbounds %struct.opts, %struct.opts* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %94 [
    i32 128, label %54
    i32 129, label %59
    i32 131, label %75
    i32 130, label %76
  ]

54:                                               ; preds = %51
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @git_object_type(i32* %55)
  %57 = call i8* @git_object_type2string(i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %94

59:                                               ; preds = %51
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @git_repository_odb(i32** %13, i32* %60)
  %62 = call i32 @check_lg2(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @git_object_id(i32* %64)
  %66 = call i32 @git_odb_read(i32** %14, i32* %63, i32 %65)
  %67 = call i32 @check_lg2(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %68 = load i32*, i32** %14, align 8
  %69 = call i64 @git_odb_object_size(i32* %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @git_odb_object_free(i32* %71)
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @git_odb_free(i32* %73)
  br label %94

75:                                               ; preds = %51
  br label %94

76:                                               ; preds = %51
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @git_object_type(i32* %77)
  switch i32 %78, label %91 [
    i32 135, label %79
    i32 134, label %82
    i32 132, label %85
    i32 133, label %88
  ]

79:                                               ; preds = %76
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @show_blob(i32* %80)
  br label %93

82:                                               ; preds = %76
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @show_commit(i32* %83)
  br label %93

85:                                               ; preds = %76
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @show_tree(i32* %86)
  br label %93

88:                                               ; preds = %76
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @show_tag(i32* %89)
  br label %93

91:                                               ; preds = %76
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %22)
  br label %93

93:                                               ; preds = %91, %88, %85, %82, %79
  br label %94

94:                                               ; preds = %51, %93, %75, %59, %54
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @git_object_free(i32* %95)
  %97 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %97)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @parse_opts(%struct.opts*, i32, i8**) #3

declare dso_local i32 @check_lg2(i32, i8*, i32*) #3

declare dso_local i32 @git_revparse_single(i32**, i32*, i32*) #3

declare dso_local i32 @git_oid_tostr(i8*, i32, i32) #3

declare dso_local i32 @git_object_id(i32*) #3

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i8* @git_object_type2string(i32) #3

declare dso_local i32 @git_object_type(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @git_repository_odb(i32**, i32*) #3

declare dso_local i32 @git_odb_read(i32**, i32*, i32) #3

declare dso_local i64 @git_odb_object_size(i32*) #3

declare dso_local i32 @git_odb_object_free(i32*) #3

declare dso_local i32 @git_odb_free(i32*) #3

declare dso_local i32 @show_blob(i32*) #3

declare dso_local i32 @show_commit(i32*) #3

declare dso_local i32 @show_tree(i32*) #3

declare dso_local i32 @show_tag(i32*) #3

declare dso_local i32 @git_object_free(i32*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
