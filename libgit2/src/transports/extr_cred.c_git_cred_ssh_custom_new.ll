; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_ssh_custom_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_ssh_custom_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__, i8*, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }

@GIT_CREDTYPE_SSH_CUSTOM = common dso_local global i32 0, align 4
@ssh_custom_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_cred_ssh_custom_new(%struct.TYPE_10__** %0, i8* %1, i8* %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %18 = icmp ne %struct.TYPE_10__** %17, null
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi i1 [ false, %6 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call %struct.TYPE_9__* @git__calloc(i32 1, i32 48)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %13, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %25 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %24)
  %26 = load i32, i32* @GIT_CREDTYPE_SSH_CUSTOM, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @ssh_custom_free, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call %struct.TYPE_9__* @git__strdup(i8* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %40)
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %19
  %45 = load i64, i64* %10, align 8
  %46 = call %struct.TYPE_9__* @git__malloc(i64 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @memcpy(%struct.TYPE_9__* %55, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %44, %19
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %71, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @git__strdup(i8*) #1

declare dso_local %struct.TYPE_9__* @git__malloc(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
