; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_process_subfilter.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_process_subfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32 }
%struct.subfilter = type { i32, i32, i32, i32 }

@LOFS_END_TREE = common dso_local global i32 0, align 4
@LOFR_ZERO = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_SKIP_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, %struct.subfilter*)* @process_subfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_subfilter(%struct.repository* %0, i32 %1, %struct.object* %2, i8* %3, i8* %4, %struct.subfilter* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.subfilter*, align 8
  %14 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.object* %2, %struct.object** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.subfilter* %5, %struct.subfilter** %13, align 8
  %15 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %16 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @LOFS_END_TREE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.object*, %struct.object** %10, align 8
  %25 = getelementptr inbounds %struct.object, %struct.object* %24, i32 0, i32 0
  %26 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %27 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %26, i32 0, i32 1
  %28 = call i64 @oideq(i32* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %32 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %35

33:                                               ; preds = %23, %19
  %34 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %34, i32* %7, align 4
  br label %80

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %6
  %37 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %38 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %37, i32 0, i32 2
  %39 = load %struct.object*, %struct.object** %10, align 8
  %40 = getelementptr inbounds %struct.object, %struct.object* %39, i32 0, i32 0
  %41 = call i64 @oidset_contains(i32* %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %44, i32* %7, align 4
  br label %80

45:                                               ; preds = %36
  %46 = load %struct.repository*, %struct.repository** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.object*, %struct.object** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %52 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @list_objects_filter__filter_object(%struct.repository* %46, i32 %47, %struct.object* %48, i8* %49, i8* %50, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %61 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %60, i32 0, i32 2
  %62 = load %struct.object*, %struct.object** %10, align 8
  %63 = getelementptr inbounds %struct.object, %struct.object* %62, i32 0, i32 0
  %64 = call i32 @oidset_insert(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %59, %45
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @LOFR_SKIP_TREE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %72 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.object*, %struct.object** %10, align 8
  %74 = getelementptr inbounds %struct.object, %struct.object* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.subfilter*, %struct.subfilter** %13, align 8
  %77 = getelementptr inbounds %struct.subfilter, %struct.subfilter* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %43, %33
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @oidset_contains(i32*, i32*) #1

declare dso_local i32 @list_objects_filter__filter_object(%struct.repository*, i32, %struct.object*, i8*, i8*, i32) #1

declare dso_local i32 @oidset_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
