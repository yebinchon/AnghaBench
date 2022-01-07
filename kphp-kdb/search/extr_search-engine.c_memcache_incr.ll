; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_memcache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_memcache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ate\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error in incr query (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_incr(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = icmp sge i32 %12, 4
  br i1 %13, label %14, label %36

14:                                               ; preds = %5
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load %struct.connection*, %struct.connection** %7, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %11, align 8
  br label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %11, align 8
  %29 = sub nsw i64 0, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i64 [ %26, %25 ], [ %29, %27 ]
  %32 = call i64 @increment_rate(%struct.connection* %20, i8* %21, i32 %22, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %44

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %14, %5
  %37 = load i32, i32* @verbosity, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @increment_rate(%struct.connection*, i8*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
