; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__3.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@compare_them = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_vector__3() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @git_vector_init(%struct.TYPE_6__* %1, i32 1, i32* @compare_them)
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %12, %0
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %5, 10
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = add nsw i64 %8, 1
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @git_vector_insert_sorted(%struct.TYPE_6__* %1, i8* %10, i32* null)
  br label %12

12:                                               ; preds = %7
  %13 = load i64, i64* %2, align 8
  %14 = add nsw i64 %13, 2
  store i64 %14, i64* %2, align 8
  br label %4

15:                                               ; preds = %4
  store i64 9, i64* %2, align 8
  br label %16

16:                                               ; preds = %24, %15
  %17 = load i64, i64* %2, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i64, i64* %2, align 8
  %21 = add nsw i64 %20, 1
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @git_vector_insert_sorted(%struct.TYPE_6__* %1, i8* %22, i32* null)
  br label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %2, align 8
  %26 = sub nsw i64 %25, 2
  store i64 %26, i64* %2, align 8
  br label %16

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 10
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %45, %27
  %34 = load i64, i64* %2, align 8
  %35 = icmp slt i64 %34, 10
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i64, i64* %2, align 8
  %38 = call i8* @git_vector_get(%struct.TYPE_6__* %1, i64 %37)
  %39 = load i64, i64* %2, align 8
  %40 = add nsw i64 %39, 1
  %41 = inttoptr i64 %40 to i8*
  %42 = icmp eq i8* %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %2, align 8
  br label %33

48:                                               ; preds = %33
  %49 = call i32 @git_vector_free(%struct.TYPE_6__* %1)
  ret void
}

declare dso_local i32 @git_vector_init(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @git_vector_insert_sorted(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i8* @git_vector_get(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @git_vector_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
