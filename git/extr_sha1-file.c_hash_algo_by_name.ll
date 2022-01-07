; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_hash_algo_by_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_hash_algo_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GIT_HASH_UNKNOWN = common dso_local global i32 0, align 4
@GIT_HASH_NALGOS = common dso_local global i32 0, align 4
@hash_algos = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_algo_by_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @GIT_HASH_UNKNOWN, align 4
  store i32 %8, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GIT_HASH_NALGOS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hash_algos, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i8* %15, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i32, i32* @GIT_HASH_UNKNOWN, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %24, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
