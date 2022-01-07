; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_combine__free.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_combine__free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.combine_filter_data = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"expected oidset to be cleared already\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @filter_combine__free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_combine__free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.combine_filter_data*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.combine_filter_data*
  store %struct.combine_filter_data* %6, %struct.combine_filter_data** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.combine_filter_data*, %struct.combine_filter_data** %3, align 8
  %10 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load %struct.combine_filter_data*, %struct.combine_filter_data** %3, align 8
  %15 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @list_objects_filter__free(i32 %20)
  %22 = load %struct.combine_filter_data*, %struct.combine_filter_data** %3, align 8
  %23 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = call i32 @oidset_clear(i32* %27)
  %29 = load %struct.combine_filter_data*, %struct.combine_filter_data** %3, align 8
  %30 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %13
  %40 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %13
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %7

45:                                               ; preds = %7
  %46 = load %struct.combine_filter_data*, %struct.combine_filter_data** %3, align 8
  %47 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i32 @free(%struct.TYPE_6__* %48)
  ret void
}

declare dso_local i32 @list_objects_filter__free(i32) #1

declare dso_local i32 @oidset_clear(i32*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
