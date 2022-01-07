; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_checkout_notify.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_checkout_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seen_paths = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"when\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkout_notify(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.seen_paths*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = bitcast i8* %14 to %struct.seen_paths*
  store %struct.seen_paths* %15, %struct.seen_paths** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @GIT_UNUSED(i32* %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @GIT_UNUSED(i32* %18)
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @GIT_UNUSED(i32* %20)
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @GIT_UNUSED(i32* %22)
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load %struct.seen_paths*, %struct.seen_paths** %13, align 8
  %29 = getelementptr inbounds %struct.seen_paths, %struct.seen_paths* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %54

30:                                               ; preds = %6
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.seen_paths*, %struct.seen_paths** %13, align 8
  %36 = getelementptr inbounds %struct.seen_paths, %struct.seen_paths* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %53

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.seen_paths*, %struct.seen_paths** %13, align 8
  %43 = getelementptr inbounds %struct.seen_paths, %struct.seen_paths* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  br label %52

44:                                               ; preds = %37
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.seen_paths*, %struct.seen_paths** %13, align 8
  %50 = getelementptr inbounds %struct.seen_paths, %struct.seen_paths* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %27
  ret i32 0
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
