; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_merge.c_perform_fastforward.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_merge.c_perform_fastforward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to lookup HEAD ref\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create master reference\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to get HEAD reference\0A\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to lookup OID %s\0A\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to checkout HEAD reference\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to move HEAD reference\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @perform_fastforward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_fastforward(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @git_reference_lookup(i32** %14, i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

26:                                               ; preds = %18
  %27 = load i32*, i32** %14, align 8
  %28 = call i8* @git_reference_symbolic_target(i32* %27)
  store i8* %28, i8** %13, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @git_reference_create(i32** %9, i32* %29, i8* %30, i32* %31, i32 0, i32* null)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

38:                                               ; preds = %26
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @git_reference_free(i32* %39)
  br label %50

41:                                               ; preds = %3
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_repository_head(i32** %9, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %54 = call i32 @git_object_lookup(i32** %11, i32* %51, i32* %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i8* @git_oid_tostr_s(i32* %59)
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  store i32 -1, i32* %4, align 4
  br label %89

62:                                               ; preds = %50
  %63 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @git_checkout_tree(i32* %65, i32* %66, %struct.TYPE_4__* %8)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

73:                                               ; preds = %62
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @git_reference_set_target(i32** %10, i32* %74, i32* %75, i32* null)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %89

82:                                               ; preds = %73
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @git_reference_free(i32* %83)
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @git_reference_free(i32* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @git_object_free(i32* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %82, %79, %70, %57, %46, %35, %23
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @git_reference_symbolic_target(i32*) #2

declare dso_local i32 @git_reference_create(i32**, i32*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_repository_head(i32**, i32*) #2

declare dso_local i32 @git_object_lookup(i32**, i32*, i32*, i32) #2

declare dso_local i8* @git_oid_tostr_s(i32*) #2

declare dso_local i32 @git_checkout_tree(i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_reference_set_target(i32**, i32*, i32*, i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
