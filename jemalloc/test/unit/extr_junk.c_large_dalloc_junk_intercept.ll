; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_junk.c_large_dalloc_junk_intercept.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_junk.c_large_dalloc_junk_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JEMALLOC_FREE_JUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Missing junk fill for byte %zu/%zu of deallocated region\00", align 1
@watch_for_junking = common dso_local global i8* null, align 8
@saw_junking = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @large_dalloc_junk_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @large_dalloc_junk_intercept(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @large_dalloc_junk_orig(i8* %6, i64 %7)
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @JEMALLOC_FREE_JUNK, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @assert_u_eq(i32 %18, i32 %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %9

26:                                               ; preds = %9
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** @watch_for_junking, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* @saw_junking, align 4
  br label %31

31:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @large_dalloc_junk_orig(i8*, i64) #1

declare dso_local i32 @assert_u_eq(i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
