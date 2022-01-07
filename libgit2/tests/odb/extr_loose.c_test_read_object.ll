; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_read_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"test-objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @test_read_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_object(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = call i32 @write_object_files(%struct.TYPE_12__* %7)
  %9 = call i32 @git_odb_open(i32** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @git_oid_fromstr(i32* %3, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @git_odb_read(%struct.TYPE_14__** %4, i32* %16, i32* %3)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = call i32 @cmp_objects(%struct.TYPE_13__* %6, %struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = call i32 @git_odb_object_free(%struct.TYPE_14__* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @git_odb_free(i32* %37)
  ret void
}

declare dso_local i32 @write_object_files(%struct.TYPE_12__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_open(i32**, i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_odb_read(%struct.TYPE_14__**, i32*, i32*) #1

declare dso_local i32 @cmp_objects(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @git_odb_object_free(%struct.TYPE_14__*) #1

declare dso_local i32 @git_odb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
