; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_retrieve_peeled_tag_or_object_oid.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_retrieve_peeled_tag_or_object_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*)* @retrieve_peeled_tag_or_object_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_peeled_tag_or_object_oid(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @git_reference_lookup_resolved(i32** %10, i32* %13, i8* %14, i32 -1)
  store i32 %15, i32* %12, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %22 = call i32 @git_reference_peel(i32** %11, i32* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %41

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @git_reference_target(i32* %27)
  %29 = call i32 @git_oid_cpy(i32* %26, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @git_object_id(i32* %31)
  %33 = call i32 @git_oid_cpy(i32* %30, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @git_oid_cmp(i32* %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @git_reference_free(i32* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @git_object_free(i32* %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @git_reference_lookup_resolved(i32**, i32*, i8*, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
