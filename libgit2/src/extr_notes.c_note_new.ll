; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_note_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_note_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**, i32*, i32*, i32*)* @note_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_new(%struct.TYPE_6__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %12 = call %struct.TYPE_6__* @git__malloc(i32 24)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %14 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @git_oid_cpy(i32* %16, i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @git_commit_author(i32* %21)
  %23 = call i64 @git_signature_dup(i32* %20, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @git_commit_committer(i32* %28)
  %30 = call i64 @git_signature_dup(i32* %27, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %4
  store i32 -1, i32* %5, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @git_blob_rawsize(i32* %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @GIT_ERROR_CHECK_BLOBSIZE(i64 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @git_blob_rawcontent(i32* %38)
  %40 = load i64, i64* %11, align 8
  %41 = call %struct.TYPE_6__* @git__strndup(i32 %39, i64 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %33, %32
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_6__* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_6__*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i64 @git_signature_dup(i32*, i32) #1

declare dso_local i32 @git_commit_author(i32*) #1

declare dso_local i32 @git_commit_committer(i32*) #1

declare dso_local i64 @git_blob_rawsize(i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_BLOBSIZE(i64) #1

declare dso_local %struct.TYPE_6__* @git__strndup(i32, i64) #1

declare dso_local i32 @git_blob_rawcontent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
