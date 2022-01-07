; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__4.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@compare_them = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_vector__4() #0 {
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
  store i64 0, i64* %2, align 8
  br label %28

28:                                               ; preds = %36, %27
  %29 = load i64, i64* %2, align 8
  %30 = icmp slt i64 %29, 10
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i64, i64* %2, align 8
  %33 = add nsw i64 %32, 1
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @git_vector_insert_sorted(%struct.TYPE_6__* %1, i8* %34, i32* null)
  br label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %2, align 8
  %38 = add nsw i64 %37, 2
  store i64 %38, i64* %2, align 8
  br label %28

39:                                               ; preds = %28
  store i64 9, i64* %2, align 8
  br label %40

40:                                               ; preds = %48, %39
  %41 = load i64, i64* %2, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i64, i64* %2, align 8
  %45 = add nsw i64 %44, 1
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @git_vector_insert_sorted(%struct.TYPE_6__* %1, i8* %46, i32* null)
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %2, align 8
  %50 = sub nsw i64 %49, 2
  store i64 %50, i64* %2, align 8
  br label %40

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 20
  %55 = zext i1 %54 to i32
  %56 = call i32 @cl_assert(i32 %55)
  store i64 0, i64* %2, align 8
  br label %57

57:                                               ; preds = %70, %51
  %58 = load i64, i64* %2, align 8
  %59 = icmp slt i64 %58, 20
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i64, i64* %2, align 8
  %62 = call i8* @git_vector_get(%struct.TYPE_6__* %1, i64 %61)
  %63 = load i64, i64* %2, align 8
  %64 = sdiv i64 %63, 2
  %65 = add nsw i64 %64, 1
  %66 = inttoptr i64 %65 to i8*
  %67 = icmp eq i8* %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  br label %70

70:                                               ; preds = %60
  %71 = load i64, i64* %2, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %2, align 8
  br label %57

73:                                               ; preds = %57
  %74 = call i32 @git_vector_free(%struct.TYPE_6__* %1)
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
