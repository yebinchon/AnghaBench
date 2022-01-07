; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_list_objects_filter__filter_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_list_objects_filter__filter_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32 }
%struct.filter = type { i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, i32, i32)*, i32, i32 }

@NOT_USER_GIVEN = common dso_local global i32 0, align 4
@LOFS_END_TREE = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_DO_SHOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @list_objects_filter__filter_object(%struct.repository* %0, i32 %1, %struct.object* %2, i8* %3, i8* %4, %struct.filter* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.repository*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.filter*, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.object* %2, %struct.object** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.filter* %5, %struct.filter** %13, align 8
  %14 = load %struct.filter*, %struct.filter** %13, align 8
  %15 = icmp ne %struct.filter* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %6
  %17 = load %struct.object*, %struct.object** %10, align 8
  %18 = getelementptr inbounds %struct.object, %struct.object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NOT_USER_GIVEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.filter*, %struct.filter** %13, align 8
  %25 = getelementptr inbounds %struct.filter, %struct.filter* %24, i32 0, i32 0
  %26 = load i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, i32, i32)*, i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, i32, i32)** %25, align 8
  %27 = load %struct.repository*, %struct.repository** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.object*, %struct.object** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.filter*, %struct.filter** %13, align 8
  %33 = getelementptr inbounds %struct.filter, %struct.filter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.filter*, %struct.filter** %13, align 8
  %36 = getelementptr inbounds %struct.filter, %struct.filter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %26(%struct.repository* %27, i32 %28, %struct.object* %29, i8* %30, i8* %31, i32 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %48

39:                                               ; preds = %16, %6
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @LOFS_END_TREE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %46 = load i32, i32* @LOFR_DO_SHOW, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %43, %23
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
