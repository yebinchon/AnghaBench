; ModuleID = '/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_write_pack_permission.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/pack/extr_packbuilder.c_test_write_pack_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@_packbuilder = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"pack-7f5fa362c664d68ba7221259be1cbd187434b2f0.idx\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"pack-7f5fa362c664d68ba7221259be1cbd187434b2f0.pack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_write_pack_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_write_pack_permission(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @seed_packbuilder()
  %9 = load i32, i32* @_packbuilder, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @git_packbuilder_write(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %10, i32* null, i32* null)
  store i32 511, i32* %7, align 4
  %12 = call i32 @p_umask(i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @p_umask(i32 %13)
  %15 = call i32 @p_stat(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %5)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @cl_assert_equal_i(i32 %20, i32 %26)
  %28 = call i32 @p_stat(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %5)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @cl_assert_equal_i(i32 %33, i32 %39)
  ret void
}

declare dso_local i32 @seed_packbuilder(...) #1

declare dso_local i32 @git_packbuilder_write(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @p_umask(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_stat(i8*, %struct.stat*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
