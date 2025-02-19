; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_read_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"test-objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @test_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_header(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = call i32 @write_object_files(%struct.TYPE_4__* %7)
  %9 = call i32 @git_odb_open(i32** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @git_oid_fromstr(i32* %3, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @git_odb_read_header(i64* %5, i32* %6, i32* %16, i32* %3)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @cl_assert_equal_sz(i32 %21, i64 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_object_string2type(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @git_odb_free(i32* %30)
  ret void
}

declare dso_local i32 @write_object_files(%struct.TYPE_4__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_open(i32**, i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @git_odb_read_header(i64*, i32*, i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_object_string2type(i32) #1

declare dso_local i32 @git_odb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
