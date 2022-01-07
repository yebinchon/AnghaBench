; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_iterator.c_test_operations.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_iterator.c_test_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"da9c51a23d02d931a486f45ad18cda05cf5d2b94\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"8d1f13f93c4995760ac07d129246ac1ff64c0be9\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"3069cc907e6294623e5917ef6de663928c1febfb\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"588e5d2f04d49707fe4aab865e1deacaf7ef6787\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"b146bd7608eac53d9bf9e1a6963543588b555c64\00", align 1
@GIT_REBASE_OPERATION_PICK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_operations(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 5, i64* %6, align 8
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %10 = call i32 @git_oid_fromstr(i32* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %12 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %14 = call i32 @git_oid_fromstr(i32* %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %16 = call i32 @git_oid_fromstr(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %18 = call i32 @git_oid_fromstr(i32* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %19 = load i64, i64* %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_rebase_operation_entrycount(i32* %20)
  %22 = call i32 @cl_assert_equal_i(i64 %19, i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_rebase_operation_current(i32* %24)
  %26 = call i32 @cl_assert_equal_i(i64 %23, i32 %25)
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %49, %2
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.TYPE_3__* @git_rebase_operation_byindex(i32* %32, i64 %33)
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %8, align 8
  %35 = load i64, i64* @GIT_REBASE_OPERATION_PICK, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i64 %35, i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = call i32 @cl_assert_equal_oid(i32* %41, i32* %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_p(i32* null, i32 %47)
  br label %49

49:                                               ; preds = %31
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %27

52:                                               ; preds = %27
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i32) #1

declare dso_local i32 @git_rebase_operation_entrycount(i32*) #1

declare dso_local i32 @git_rebase_operation_current(i32*) #1

declare dso_local %struct.TYPE_3__* @git_rebase_operation_byindex(i32*, i64) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_p(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
