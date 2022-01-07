; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@GIT_ZSTREAM_DEFLATE = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_packbuilder_new(%struct.TYPE_7__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %8 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 56)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 10
  %13 = call i64 @git_oidmap_new(i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 9
  %19 = call i64 @git_oidmap_new(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 8
  %25 = call i32 @git_pool_init(i32* %24, i32 4)
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 7
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = call i64 @git_hash_ctx_init(i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i32, i32* @GIT_ZSTREAM_DEFLATE, align 4
  %39 = call i64 @git_zstream_init(i32* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @git_repository_odb(i32* %43, i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = call i64 @packbuilder_config(%struct.TYPE_7__* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %41, %35, %22
  br label %55

52:                                               ; preds = %47
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %54, align 8
  store i32 0, i32* %3, align 4
  br label %58

55:                                               ; preds = %51, %21, %15
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = call i32 @git_packbuilder_free(%struct.TYPE_7__* %56)
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i64 @git_oidmap_new(i32*) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i64 @git_hash_ctx_init(i32*) #1

declare dso_local i64 @git_zstream_init(i32*, i32) #1

declare dso_local i64 @git_repository_odb(i32*, i32*) #1

declare dso_local i64 @packbuilder_config(%struct.TYPE_7__*) #1

declare dso_local i32 @git_packbuilder_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
