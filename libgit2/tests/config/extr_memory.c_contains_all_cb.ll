; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_memory.c_contains_all_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_memory.c_contains_all_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.expected_entry = type { i32, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Entry seen more than once\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unexpected entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @contains_all_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_all_cb(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.expected_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.expected_entry*
  store %struct.expected_entry* %9, %struct.expected_entry** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load %struct.expected_entry*, %struct.expected_entry** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %11, i64 %13
  %15 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %10
  %19 = load %struct.expected_entry*, %struct.expected_entry** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strcmp(i64 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %18
  %31 = load %struct.expected_entry*, %struct.expected_entry** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %31, i64 %33
  %35 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i64 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30, %18
  br label %59

43:                                               ; preds = %30
  %44 = load %struct.expected_entry*, %struct.expected_entry** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %44, i64 %46
  %48 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 @cl_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %43
  %54 = load %struct.expected_entry*, %struct.expected_entry** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %54, i64 %56
  %58 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %64

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %10

62:                                               ; preds = %10
  %63 = call i32 @cl_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %53
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @cl_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
