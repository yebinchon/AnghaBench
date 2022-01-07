; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_ref_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_ref_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.packed_ref_iterator = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ITER_OK = common dso_local global i32 0, align 4
@DO_FOR_EACH_PER_WORKTREE_ONLY = common dso_local global i32 0, align 4
@REF_TYPE_PER_WORKTREE = common dso_local global i64 0, align 8
@DO_FOR_EACH_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@ITER_DONE = common dso_local global i64 0, align 8
@ITER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*)* @packed_ref_iterator_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_ref_iterator_advance(%struct.ref_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.packed_ref_iterator*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %3, align 8
  %6 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %7 = bitcast %struct.ref_iterator* %6 to %struct.packed_ref_iterator*
  store %struct.packed_ref_iterator* %7, %struct.packed_ref_iterator** %4, align 8
  br label %8

8:                                                ; preds = %48, %28, %1
  %9 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %4, align 8
  %10 = call i32 @next_record(%struct.packed_ref_iterator* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @ITER_OK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %8
  %14 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %4, align 8
  %15 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DO_FOR_EACH_PER_WORKTREE_ONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %4, align 8
  %22 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ref_type(i32 %24)
  %26 = load i64, i64* @REF_TYPE_PER_WORKTREE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %8

29:                                               ; preds = %20, %13
  %30 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %4, align 8
  %31 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DO_FOR_EACH_INCLUDE_BROKEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %4, align 8
  %42 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %41, i32 0, i32 1
  %43 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %4, align 8
  %44 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ref_resolves_to_object(i32 %40, i32* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %8

49:                                               ; preds = %36, %29
  %50 = load i32, i32* @ITER_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %8
  %52 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %53 = call i64 @ref_iterator_abort(%struct.ref_iterator* %52)
  %54 = load i64, i64* @ITER_DONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @ITER_ERROR, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %49
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @next_record(%struct.packed_ref_iterator*) #1

declare dso_local i64 @ref_type(i32) #1

declare dso_local i32 @ref_resolves_to_object(i32, i32*, i32) #1

declare dso_local i64 @ref_iterator_abort(%struct.ref_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
