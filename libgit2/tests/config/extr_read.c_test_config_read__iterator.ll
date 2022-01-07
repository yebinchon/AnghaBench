; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__iterator.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"core.dummy2\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core.verylong\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"core.dummy\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"remote.ab.url\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"remote.abba.url\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"core.global\00", align 1
@__const.test_config_read__iterator.keys = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"config/config9\00", align 1
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"config/config15\00", align 1
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__iterator() #0 {
  %1 = alloca [7 x i8*], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [7 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([7 x i8*]* @__const.test_config_read__iterator.keys to i8*), i64 56, i1 false)
  %8 = call i32 @git_config_new(i32** %2)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @cl_fixture(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %12 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %13 = call i32 @git_config_add_file_ondisk(i32* %10, i32 %11, i32 %12, i32* null, i32 0)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %18 = call i32 @git_config_add_file_ondisk(i32* %15, i32 %16, i32 %17, i32* null, i32 0)
  %19 = call i32 @cl_git_pass(i32 %18)
  store i32 0, i32* %5, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_config_iterator_new(i32** %3, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  br label %23

23:                                               ; preds = %27, %0
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_config_next(%struct.TYPE_3__** %4, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [7 x i8*], [7 x i8*]* %1, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @cl_assert_equal_s(i32 %30, i8* %34)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @git_config_iterator_free(i32* %39)
  %41 = load i32, i32* @GIT_ITEROVER, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @cl_assert_equal_i(i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @cl_assert_equal_i(i32 7, i32 %44)
  store i32 3, i32* %5, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @git_config_iterator_new(i32** %3, i32* %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_config_iterator_free(i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @git_config_free(i32* %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_config_new(i32**) #2

declare dso_local i32 @git_config_add_file_ondisk(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_config_iterator_new(i32**, i32*) #2

declare dso_local i32 @git_config_next(%struct.TYPE_3__**, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_config_iterator_free(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
