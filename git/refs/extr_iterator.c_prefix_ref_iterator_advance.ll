; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_prefix_ref_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_prefix_ref_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i64, i32, i32, i64 }
%struct.prefix_ref_iterator = type { i64, %struct.ref_iterator*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@ITER_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"attempt to trim too many characters\00", align 1
@ITER_DONE = common dso_local global i32 0, align 4
@ITER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*)* @prefix_ref_iterator_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_ref_iterator_advance(%struct.ref_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.prefix_ref_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ref_iterator* %0, %struct.ref_iterator** %3, align 8
  %7 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %8 = bitcast %struct.ref_iterator* %7 to %struct.prefix_ref_iterator*
  store %struct.prefix_ref_iterator* %8, %struct.prefix_ref_iterator** %4, align 8
  br label %9

9:                                                ; preds = %44, %28, %1
  %10 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %10, i32 0, i32 1
  %12 = load %struct.ref_iterator*, %struct.ref_iterator** %11, align 8
  %13 = call i32 @ref_iterator_advance(%struct.ref_iterator* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ITER_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %103

16:                                               ; preds = %9
  %17 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %18 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %17, i32 0, i32 1
  %19 = load %struct.ref_iterator*, %struct.ref_iterator** %18, align 8
  %20 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @compare_prefix(i64 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %9

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %34 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %33, i32 0, i32 1
  %35 = load %struct.ref_iterator*, %struct.ref_iterator** %34, align 8
  %36 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %41 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %40, i32 0, i32 1
  %42 = load %struct.ref_iterator*, %struct.ref_iterator** %41, align 8
  %43 = call i32 @ref_iterator_abort(%struct.ref_iterator* %42)
  store i32 %43, i32* %5, align 4
  br label %103

44:                                               ; preds = %32
  br label %9

45:                                               ; preds = %29
  %46 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %47 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %52 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %51, i32 0, i32 1
  %53 = load %struct.ref_iterator*, %struct.ref_iterator** %52, align 8
  %54 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @strlen(i64 %55)
  %57 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %58 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %50
  %64 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %65 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %64, i32 0, i32 1
  %66 = load %struct.ref_iterator*, %struct.ref_iterator** %65, align 8
  %67 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %70 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %74 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %85

76:                                               ; preds = %45
  %77 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %78 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %77, i32 0, i32 1
  %79 = load %struct.ref_iterator*, %struct.ref_iterator** %78, align 8
  %80 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %83 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %76, %63
  %86 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %87 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %86, i32 0, i32 1
  %88 = load %struct.ref_iterator*, %struct.ref_iterator** %87, align 8
  %89 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %92 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %95 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %94, i32 0, i32 1
  %96 = load %struct.ref_iterator*, %struct.ref_iterator** %95, align 8
  %97 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %100 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @ITER_OK, align 4
  store i32 %102, i32* %2, align 4
  br label %114

103:                                              ; preds = %39, %9
  %104 = load %struct.prefix_ref_iterator*, %struct.prefix_ref_iterator** %4, align 8
  %105 = getelementptr inbounds %struct.prefix_ref_iterator, %struct.prefix_ref_iterator* %104, i32 0, i32 1
  store %struct.ref_iterator* null, %struct.ref_iterator** %105, align 8
  %106 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %107 = call i32 @ref_iterator_abort(%struct.ref_iterator* %106)
  %108 = load i32, i32* @ITER_DONE, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @ITER_ERROR, align 4
  store i32 %111, i32* %2, align 4
  br label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %110, %85
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @ref_iterator_advance(%struct.ref_iterator*) #1

declare dso_local i32 @compare_prefix(i64, i32) #1

declare dso_local i32 @ref_iterator_abort(%struct.ref_iterator*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
