; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_checkout.c_perform_checkout_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_checkout.c_perform_checkout_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i8* }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@print_checkout_progress = common dso_local global i32 0, align 4
@print_perf_data = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to lookup commit: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to checkout tree: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to update HEAD reference: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*)* @perform_checkout_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perform_checkout_ref(i32* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %10 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 12, i1 false)
  store i32* null, i32** %8, align 8
  %11 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @print_checkout_progress, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @print_perf_data, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_annotated_commit_id(i32* %38)
  %40 = call i32 @git_commit_lookup(i32** %8, i32* %37, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @stderr, align 4
  %45 = call %struct.TYPE_9__* (...) @git_error_last()
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %84

49:                                               ; preds = %36
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @git_checkout_tree(i32* %50, i32* %51, %struct.TYPE_7__* %7)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = call %struct.TYPE_9__* (...) @git_error_last()
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  br label %84

61:                                               ; preds = %49
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @git_annotated_commit_ref(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @git_annotated_commit_ref(i32* %67)
  %69 = call i32 @git_repository_set_head(i32* %66, i64 %68)
  store i32 %69, i32* %9, align 4
  br label %74

70:                                               ; preds = %61
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @git_repository_set_head_detached_from_annotated(i32* %71, i32* %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = call %struct.TYPE_9__* (...) @git_error_last()
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %84

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %77, %55, %43
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @git_commit_free(i32* %85)
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_commit_lookup(i32**, i32*, i32) #2

declare dso_local i32 @git_annotated_commit_id(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local %struct.TYPE_9__* @git_error_last(...) #2

declare dso_local i32 @git_checkout_tree(i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i64 @git_annotated_commit_ref(i32*) #2

declare dso_local i32 @git_repository_set_head(i32*, i64) #2

declare dso_local i32 @git_repository_set_head_detached_from_annotated(i32*, i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
