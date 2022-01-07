; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_sha1.c_sha1_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_sha1.c_sha1_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @sha1_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2048 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i32 @p_open(i8* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = call i32 @git_hash_ctx_init(i32* %5)
  %18 = call i32 @cl_git_pass(i32 %17)
  br label %19

19:                                               ; preds = %24, %2
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %22 = call i64 @p_read(i32 %20, i8* %21, i32 2048)
  store i64 %22, i64* %9, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @git_hash_update(i32* %5, i8* %25, i64 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  br label %19

29:                                               ; preds = %19
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @cl_assert_equal_i(i32 0, i64 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @p_close(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_hash_final(i32* %34, i32* %5)
  store i32 %35, i32* %8, align 4
  %36 = call i32 @git_hash_ctx_cleanup(i32* %5)
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @p_open(i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_hash_ctx_init(i32*) #1

declare dso_local i64 @p_read(i32, i8*, i32) #1

declare dso_local i32 @git_hash_update(i32*, i8*, i64) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @git_hash_final(i32*, i32*) #1

declare dso_local i32 @git_hash_ctx_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
