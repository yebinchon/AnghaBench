; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile__object_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile__object_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_OBJECT_REF_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @git_packfile__object_header(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GIT_OBJECT_REF_DELTA, align 4
  %15 = icmp sle i32 %13, %14
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i1 [ false, %3 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 15
  %25 = or i64 %22, %24
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i64, i64* %5, align 8
  %28 = lshr i64 %27, 4
  store i64 %28, i64* %5, align 8
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %33, %16
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, 128
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i64, i64* %5, align 8
  %41 = and i64 %40, 127
  %42 = trunc i64 %41 to i8
  store i8 %42, i8* %8, align 1
  %43 = load i64, i64* %5, align 8
  %44 = lshr i64 %43, 7
  store i64 %44, i64* %5, align 8
  br label %30

45:                                               ; preds = %30
  %46 = load i8, i8* %8, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  ret i64 %53
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
