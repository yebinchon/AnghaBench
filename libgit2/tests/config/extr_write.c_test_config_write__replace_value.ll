; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__replace_value.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__replace_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"config9\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"core.dummy\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"core.verylong\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__replace_value() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 9223372036854775803, i64* %4, align 8
  %5 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_config_set_int32(i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_config_free(i32* %10)
  %12 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_config_get_int32(i32* %2, i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 5
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_config_free(i32* %21)
  %23 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_config_set_int32(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_config_free(i32* %28)
  %30 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = load i64, i64* %4, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @git_config_set_int64(i32* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @git_config_free(i32* %37)
  %39 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_config_get_int64(i64* %3, i32* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @cl_assert(i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @git_config_free(i32* %49)
  %51 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @git_config_get_int32(i32* %2, i32* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @cl_must_fail(i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @git_config_free(i32* %56)
  %58 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @git_config_set_int64(i32* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %62 = call i32 @cl_git_pass(i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @git_config_free(i32* %63)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_set_int32(i32*, i8*, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_config_get_int32(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_config_set_int64(i32*, i8*, i32) #1

declare dso_local i32 @git_config_get_int64(i64*, i32*, i8*) #1

declare dso_local i32 @cl_must_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
