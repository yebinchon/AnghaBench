; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_binary_union_iterator_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_binary_union_iterator_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binary_operation_iterator = type { i32, i8*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)* }

@INFTY = common dso_local global i32 0, align 4
@dummy_iterator_jump_to = common dso_local global i8* null, align 8
@empty_iterator_jump_to = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binary_union_iterator_jump_to(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.binary_operation_iterator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.binary_operation_iterator*
  store %struct.binary_operation_iterator* %10, %struct.binary_operation_iterator** %6, align 8
  %11 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %12 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %17 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %26 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %28, align 8
  %30 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %31 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %29(%struct.TYPE_3__* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %24, %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %41 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %43, align 8
  %45 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %46 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 %44(%struct.TYPE_3__* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %35
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @INFTY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** @dummy_iterator_jump_to, align 8
  %60 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %61 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %65 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 %63, i32* %3, align 4
  br label %99

66:                                               ; preds = %50
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @INFTY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i8*, i8** @dummy_iterator_jump_to, align 8
  %76 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %77 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %79 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %82 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %81, i32 0, i32 3
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %82, align 8
  br label %83

83:                                               ; preds = %74, %70
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %86 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  store i32 %84, i32* %3, align 4
  br label %99

87:                                               ; preds = %66
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @INFTY, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8*, i8** @empty_iterator_jump_to, align 8
  %93 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %94 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.binary_operation_iterator*, %struct.binary_operation_iterator** %6, align 8
  %98 = getelementptr inbounds %struct.binary_operation_iterator, %struct.binary_operation_iterator* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  store i32 %96, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %83, %62
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
