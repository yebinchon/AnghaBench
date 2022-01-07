; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.files_ref_iterator = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ITER_OK = common dso_local global i32 0, align 4
@DO_FOR_EACH_PER_WORKTREE_ONLY = common dso_local global i32 0, align 4
@REF_TYPE_PER_WORKTREE = common dso_local global i64 0, align 8
@DO_FOR_EACH_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@ITER_DONE = common dso_local global i64 0, align 8
@ITER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*)* @files_ref_iterator_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_ref_iterator_advance(%struct.ref_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.files_ref_iterator*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %3, align 8
  %6 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %7 = bitcast %struct.ref_iterator* %6 to %struct.files_ref_iterator*
  store %struct.files_ref_iterator* %7, %struct.files_ref_iterator** %4, align 8
  br label %8

8:                                                ; preds = %57, %31, %1
  %9 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @ref_iterator_advance(%struct.TYPE_4__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @ITER_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %84

15:                                               ; preds = %8
  %16 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %17 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DO_FOR_EACH_PER_WORKTREE_ONLY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %24 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ref_type(i32 %27)
  %29 = load i64, i64* @REF_TYPE_PER_WORKTREE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %8

32:                                               ; preds = %22, %15
  %33 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %34 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DO_FOR_EACH_INCLUDE_BROKEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %32
  %40 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %41 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %46 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %51 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ref_resolves_to_object(i32 %44, i32 %49, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  br label %8

58:                                               ; preds = %39, %32
  %59 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %60 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %65 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %68 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %73 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %76 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %81 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @ITER_OK, align 4
  store i32 %83, i32* %2, align 4
  br label %95

84:                                               ; preds = %8
  %85 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %4, align 8
  %86 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %85, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %86, align 8
  %87 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %88 = call i64 @ref_iterator_abort(%struct.ref_iterator* %87)
  %89 = load i64, i64* @ITER_DONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @ITER_ERROR, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %84
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %58
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ref_iterator_advance(%struct.TYPE_4__*) #1

declare dso_local i64 @ref_type(i32) #1

declare dso_local i32 @ref_resolves_to_object(i32, i32, i32) #1

declare dso_local i64 @ref_iterator_abort(%struct.ref_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
