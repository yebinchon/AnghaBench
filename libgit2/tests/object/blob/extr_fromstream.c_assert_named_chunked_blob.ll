; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/blob/extr_fromstream.c_assert_named_chunked_blob.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/blob/extr_fromstream.c_assert_named_chunked_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32)* }

@repo = common dso_local global i32 0, align 4
@textual_content = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @assert_named_chunked_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_named_chunked_blob(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 6, i32* %9, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @git_oid_fromstr(i32* %5, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @git_blob_create_from_stream(%struct.TYPE_5__** %7, i32 %13, i8* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = load i32, i32* @textual_content, align 4
  %27 = load i32, i32* @textual_content, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = call i32 %24(%struct.TYPE_5__* %25, i32 %26, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = call i32 @git_blob_create_from_stream_commit(i32* %6, %struct.TYPE_5__* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = call i32 @cl_assert_equal_oid(i32* %5, i32* %6)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_blob_create_from_stream(%struct.TYPE_5__**, i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @git_blob_create_from_stream_commit(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
