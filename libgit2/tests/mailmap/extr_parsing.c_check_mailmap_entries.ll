; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_check_mailmap_entries.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_parsing.c_check_mailmap_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_9__*, i64)* @check_mailmap_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mailmap_entries(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = call i32 @git_vector_length(i32* %11)
  %13 = call i32 @cl_assert_equal_sz(i64 %9, i32 %12)
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %69, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_10__* @git_mailmap_entry_lookup(%struct.TYPE_11__* %19, i32 %24, i32 %29)
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %7, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = call i32 @cl_assert(%struct.TYPE_10__* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_s(i32 %35, i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cl_assert_equal_s(i32 %44, i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cl_assert_equal_s(i32 %53, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cl_assert_equal_s(i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %18
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %14

72:                                               ; preds = %14
  ret void
}

declare dso_local i32 @cl_assert_equal_sz(i64, i32) #1

declare dso_local i32 @git_vector_length(i32*) #1

declare dso_local %struct.TYPE_10__* @git_mailmap_entry_lookup(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_10__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
