; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_combine.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32 }
%struct.oidset = type { i32 }
%struct.combine_filter_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LOFR_DO_SHOW = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_SKIP_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, %struct.oidset*, i8*)* @filter_combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_combine(%struct.repository* %0, i32 %1, %struct.object* %2, i8* %3, i8* %4, %struct.oidset* %5, i8* %6) #0 {
  %8 = alloca %struct.repository*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.oidset*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.combine_filter_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.object* %2, %struct.object** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.oidset* %5, %struct.oidset** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = bitcast i8* %19 to %struct.combine_filter_data*
  store %struct.combine_filter_data* %20, %struct.combine_filter_data** %15, align 8
  %21 = load i32, i32* @LOFR_DO_SHOW, align 4
  %22 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LOFR_SKIP_TREE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %26

26:                                               ; preds = %78, %7
  %27 = load i64, i64* %17, align 8
  %28 = load %struct.combine_filter_data*, %struct.combine_filter_data** %15, align 8
  %29 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %26
  %33 = load %struct.repository*, %struct.repository** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.object*, %struct.object** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.combine_filter_data*, %struct.combine_filter_data** %15, align 8
  %39 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = call i32 @process_subfilter(%struct.repository* %33, i32 %34, %struct.object* %35, i8* %36, i8* %37, %struct.TYPE_2__* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @LOFR_DO_SHOW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @LOFR_DO_SHOW, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %16, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %48, %32
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.combine_filter_data*, %struct.combine_filter_data** %15, align 8
  %65 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @LOFR_SKIP_TREE, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %16, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %72, %63
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %17, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %17, align 8
  br label %26

81:                                               ; preds = %26
  %82 = load i32, i32* %16, align 4
  ret i32 %82
}

declare dso_local i32 @process_subfilter(%struct.repository*, i32, %struct.object*, i8*, i8*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
