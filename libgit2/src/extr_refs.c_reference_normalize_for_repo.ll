; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_reference_normalize_for_repo.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_reference_normalize_for_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_PRECOMPOSE = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE = common dso_local global i32 0, align 4
@GIT_REFERENCE_FORMAT__VALIDATION_DISABLE = common dso_local global i32 0, align 4
@GIT_REFNAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @reference_normalize_for_repo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reference_normalize_for_repo(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @GIT_CONFIGMAP_PRECOMPOSE, align 4
  %14 = call i32 @git_repository__configmap_lookup(i32* %9, i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %16, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @GIT_REFERENCE_FORMAT__VALIDATION_DISABLE, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GIT_REFNAME_MAX, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @git_reference_normalize_name(i32 %31, i32 %32, i8* %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #1

declare dso_local i32 @git_reference_normalize_name(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
