; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_commit_name_dup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_commit_name_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_name = type { %struct.commit_name*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_name**, %struct.commit_name*)* @commit_name_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_name_dup(%struct.commit_name** %0, %struct.commit_name* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit_name**, align 8
  %5 = alloca %struct.commit_name*, align 8
  %6 = alloca %struct.commit_name*, align 8
  store %struct.commit_name** %0, %struct.commit_name*** %4, align 8
  store %struct.commit_name* %1, %struct.commit_name** %5, align 8
  %7 = call %struct.commit_name* @git__malloc(i32 16)
  store %struct.commit_name* %7, %struct.commit_name** %6, align 8
  %8 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %9 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.commit_name* %8)
  %10 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %11 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %12 = call i32 @memcpy(%struct.commit_name* %10, %struct.commit_name* %11, i32 16)
  %13 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %14 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %16 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %15, i32 0, i32 0
  store %struct.commit_name* null, %struct.commit_name** %16, align 8
  %17 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %18 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %23 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %22, i32 0, i32 1
  %24 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %25 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @git_tag_dup(i32** %23, i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %43

30:                                               ; preds = %21, %2
  %31 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %32 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %31, i32 0, i32 0
  %33 = load %struct.commit_name*, %struct.commit_name** %32, align 8
  %34 = call %struct.commit_name* @git__strdup(%struct.commit_name* %33)
  %35 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %36 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %35, i32 0, i32 0
  store %struct.commit_name* %34, %struct.commit_name** %36, align 8
  %37 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %38 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %37, i32 0, i32 0
  %39 = load %struct.commit_name*, %struct.commit_name** %38, align 8
  %40 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.commit_name* %39)
  %41 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %42 = load %struct.commit_name**, %struct.commit_name*** %4, align 8
  store %struct.commit_name* %41, %struct.commit_name** %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %30, %29
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.commit_name* @git__malloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.commit_name*) #1

declare dso_local i32 @memcpy(%struct.commit_name*, %struct.commit_name*, i32) #1

declare dso_local i64 @git_tag_dup(i32**, i32*) #1

declare dso_local %struct.commit_name* @git__strdup(%struct.commit_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
