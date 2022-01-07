; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_next_commit_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_next_commit_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next_commit_index.MIN_COMMITS = internal constant i32 100, align 4
@next_commit_index.MAX_COMMITS = internal constant i32 5000, align 4
@next_commit_index.MUST_REGION = internal constant i32 100, align 4
@next_commit_index.MIN_REGION = internal constant i32 20000, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @next_commit_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_commit_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ule i32 %6, 100
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ule i32 %10, 20000
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sub i32 %13, 100
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 %15, 100
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  br label %20

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 100, %19 ]
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = sub i32 %23, 20000
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ult i32 %25, 5000
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 5000, %29 ]
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ugt i32 %32, 100
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 100, %36 ]
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %20, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
