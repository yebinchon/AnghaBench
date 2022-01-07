; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_finalize_object_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_finalize_object_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@object_creation_mode = common dso_local global i64 0, align 8
@OBJECT_CREATION_USES_RENAMES = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to write file %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to set permission to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finalize_object_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @object_creation_mode, align 8
  %8 = load i64, i64* @OBJECT_CREATION_USES_RENAMES, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %27

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @link(i8* %12, i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @errno, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %11
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EEXIST, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %10
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @rename(i8* %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %50

33:                                               ; preds = %27
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %22, %19
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @unlink_or_warn(i8* %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @EEXIST, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @error_errno(i32 %45, i8* %46)
  store i32 %47, i32* %3, align 4
  br label %59

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @adjust_shared_perm(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @error(i32 %55, i8* %56)
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %54, %44
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @link(i8*, i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @adjust_shared_perm(i8*) #1

declare dso_local i32 @error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
