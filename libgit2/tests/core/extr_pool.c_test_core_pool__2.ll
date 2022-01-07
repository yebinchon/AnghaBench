; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_pool.c_test_core_pool__2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_pool.c_test_core_pool__2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@to_hex = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_pool__2() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = trunc i64 %8 to i32
  %12 = call i32 @memset(i8* %10, i32 48, i32 %11)
  %13 = call i32 @git_pool_init(%struct.TYPE_6__* %1, i32 4)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 4000, i32* %14, align 4
  store i32 1000, i32* %5, align 4
  br label %15

15:                                               ; preds = %47, %0
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 10000
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = call i32* @git_pool_malloc(%struct.TYPE_6__* %1, i32 1)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %40, %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i8*, i8** @to_hex, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 4, %30
  %32 = ashr i32 %29, %31
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %28, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %10, i64 %38
  store i8 %36, i8* %39, align 1
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %24

43:                                               ; preds = %24
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @git_oid_fromstr(i32* %44, i8* %10)
  %46 = call i32 @cl_git_pass(i32 %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %15

50:                                               ; preds = %15
  %51 = call i32 @git_pool__open_pages(%struct.TYPE_6__* %1)
  %52 = call i32 @cl_assert_equal_i(i32 55, i32 %51)
  %53 = call i32 @git_pool_clear(%struct.TYPE_6__* %1)
  %54 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @git_pool_init(%struct.TYPE_6__*, i32) #2

declare dso_local i32* @git_pool_malloc(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_pool__open_pages(%struct.TYPE_6__*) #2

declare dso_local i32 @git_pool_clear(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
