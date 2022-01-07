; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_tail_call_analyze.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_tail_call_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CALL_JQ = common dso_local global i64 0, align 8
@TAIL_CALL_JQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @tail_call_analyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tail_call_analyze(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CALL_JQ, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %12, i64** %3, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %14, i64** %3, align 8
  %15 = load i64, i64* %13, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %28, %1
  %18 = load i64, i64* %4, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %3, align 8
  %23 = load i64, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @CALL_JQ, align 8
  store i64 %26, i64* %2, align 8
  br label %41

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %4, align 8
  br label %17

33:                                               ; preds = %17
  %34 = load i64*, i64** %3, align 8
  %35 = call i64 @ret_follows(i64* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @TAIL_CALL_JQ, align 8
  store i64 %38, i64* %2, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @CALL_JQ, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %39, %37, %25
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ret_follows(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
