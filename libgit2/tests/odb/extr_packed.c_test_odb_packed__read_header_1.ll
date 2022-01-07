; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_packed.c_test_odb_packed__read_header_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_packed.c_test_odb_packed__read_header_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@loose_objects = common dso_local global i32* null, align 8
@_odb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_packed__read_header_1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %48, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32*, i32** @loose_objects, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %6
  %12 = load i32*, i32** @loose_objects, align 8
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @git_oid_fromstr(i32* %2, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @_odb, align 4
  %20 = call i32 @git_odb_exists(i32 %19, i32* %2)
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  %24 = load i32, i32* @_odb, align 4
  %25 = call i32 @git_odb_read(%struct.TYPE_6__** %3, i32 %24, i32* %2)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @_odb, align 4
  %28 = call i32 @git_odb_read_header(i64* %4, i64* %5, i32 %27, i32* %2)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @cl_assert(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @git_odb_object_free(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %11
  %49 = load i32, i32* %1, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %6

51:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_odb_exists(i32, i32*) #1

declare dso_local i32 @git_odb_read(%struct.TYPE_6__**, i32, i32*) #1

declare dso_local i32 @git_odb_read_header(i64*, i64*, i32, i32*) #1

declare dso_local i32 @git_odb_object_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
