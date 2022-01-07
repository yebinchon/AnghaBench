; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__5.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@compare_structs = common dso_local global i32 0, align 4
@merge_structs = common dso_local global i32 0, align 4
@_struct_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_vector__5() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @git_vector_init(%struct.TYPE_8__* %1, i32 1, i32* @compare_structs)
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @alloc_struct(i32 %8)
  %10 = call i32 @git_vector_insert_sorted(%struct.TYPE_8__* %1, i32 %9, i32* @merge_structs)
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %2, align 4
  br label %4

14:                                               ; preds = %4
  store i32 9, i32* %2, align 4
  br label %15

15:                                               ; preds = %22, %14
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @alloc_struct(i32 %19)
  %21 = call i32 @git_vector_insert_sorted(%struct.TYPE_8__* %1, i32 %20, i32* @merge_structs)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 %23, 2
  store i32 %24, i32* %2, align 4
  br label %15

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 10
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32, i32* @_struct_count, align 4
  %32 = icmp eq i32 %31, 10
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %42, %25
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @alloc_struct(i32 %39)
  %41 = call i32 @git_vector_insert_sorted(%struct.TYPE_8__* %1, i32 %40, i32* @merge_structs)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %2, align 4
  br label %35

45:                                               ; preds = %35
  store i32 9, i32* %2, align 4
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i32, i32* %2, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @alloc_struct(i32 %50)
  %52 = call i32 @git_vector_insert_sorted(%struct.TYPE_8__* %1, i32 %51, i32* @merge_structs)
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = sub nsw i32 %54, 2
  store i32 %55, i32* %2, align 4
  br label %46

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 10
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = load i32, i32* @_struct_count, align 4
  %63 = icmp eq i32 %62, 10
  %64 = zext i1 %63 to i32
  %65 = call i32 @cl_assert(i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %84, %56
  %67 = load i32, i32* %2, align 4
  %68 = icmp slt i32 %67, 10
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = call i64 @git_vector_get(%struct.TYPE_8__* %1, i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_7__*
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @cl_assert(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = call i64 @git_vector_get(%struct.TYPE_8__* %1, i32 %79)
  %81 = call i32 @git__free(i64 %80)
  %82 = load i32, i32* @_struct_count, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @_struct_count, align 4
  br label %84

84:                                               ; preds = %69
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  br label %66

87:                                               ; preds = %66
  %88 = call i32 @git_vector_free(%struct.TYPE_8__* %1)
  ret void
}

declare dso_local i32 @git_vector_init(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @git_vector_insert_sorted(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @alloc_struct(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_vector_get(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @git__free(i64) #1

declare dso_local i32 @git_vector_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
