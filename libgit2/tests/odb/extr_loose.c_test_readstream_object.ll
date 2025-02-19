; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_readstream_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_readstream_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"test-objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @test_readstream_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_readstream_object(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca [2048 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  store i8* %13, i8** %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @write_object_files(%struct.TYPE_7__* %14)
  %16 = call i32 @git_odb_open(i32** %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @git_oid_fromstr(i32* %5, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @git_odb_open_rstream(i32** %7, i64* %23, i32* %24, i32* %25, i32* %5)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %44, %2
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @git_odb_stream_read(i32* %34, i8* %35, i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = icmp sge i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %59

44:                                               ; preds = %33
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %10, align 8
  br label %30

59:                                               ; preds = %43, %30
  %60 = load i64, i64* %11, align 8
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  %64 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = call i32 @cmp_objects(%struct.TYPE_8__* %8, %struct.TYPE_7__* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @git_odb_stream_free(i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @git_odb_free(i32* %70)
  ret void
}

declare dso_local i32 @write_object_files(%struct.TYPE_7__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_open(i32**, i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_odb_open_rstream(i32**, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_odb_stream_read(i32*, i8*, i64) #1

declare dso_local i32 @cmp_objects(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @git_odb_stream_free(i32*) #1

declare dso_local i32 @git_odb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
