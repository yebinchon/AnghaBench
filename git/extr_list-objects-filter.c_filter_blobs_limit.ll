; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_blobs_limit.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_blobs_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32, i32, i32 }
%struct.oidset = type { i32 }
%struct.filter_blobs_limit_data = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"unknown filter_situation: %d\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_DO_SHOW = common dso_local global i32 0, align 4
@LOFR_ZERO = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, %struct.oidset*, i8*)* @filter_blobs_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_blobs_limit(%struct.repository* %0, i32 %1, %struct.object* %2, i8* %3, i8* %4, %struct.oidset* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.oidset*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.filter_blobs_limit_data*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.object* %2, %struct.object** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.oidset* %5, %struct.oidset** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = bitcast i8* %19 to %struct.filter_blobs_limit_data*
  store %struct.filter_blobs_limit_data* %20, %struct.filter_blobs_limit_data** %16, align 8
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %22 [
    i32 130, label %25
    i32 128, label %36
    i32 129, label %45
  ]

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %7, %22
  %26 = load %struct.object*, %struct.object** %11, align 8
  %27 = getelementptr inbounds %struct.object, %struct.object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OBJ_TREE, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %34 = load i32, i32* @LOFR_DO_SHOW, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %8, align 4
  br label %98

36:                                               ; preds = %7
  %37 = load %struct.object*, %struct.object** %11, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OBJ_TREE, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %44, i32* %8, align 4
  br label %98

45:                                               ; preds = %7
  %46 = load %struct.object*, %struct.object** %11, align 8
  %47 = getelementptr inbounds %struct.object, %struct.object* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OBJ_BLOB, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.object*, %struct.object** %11, align 8
  %54 = getelementptr inbounds %struct.object, %struct.object* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SEEN, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.repository*, %struct.repository** %9, align 8
  %62 = load %struct.object*, %struct.object** %11, align 8
  %63 = getelementptr inbounds %struct.object, %struct.object* %62, i32 0, i32 2
  %64 = call i32 @oid_object_info(%struct.repository* %61, i32* %63, i64* %17)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @OBJ_BLOB, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  br label %86

69:                                               ; preds = %45
  %70 = load i64, i64* %17, align 8
  %71 = load %struct.filter_blobs_limit_data*, %struct.filter_blobs_limit_data** %16, align 8
  %72 = getelementptr inbounds %struct.filter_blobs_limit_data, %struct.filter_blobs_limit_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %86

76:                                               ; preds = %69
  %77 = load %struct.oidset*, %struct.oidset** %14, align 8
  %78 = icmp ne %struct.oidset* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.oidset*, %struct.oidset** %14, align 8
  %81 = load %struct.object*, %struct.object** %11, align 8
  %82 = getelementptr inbounds %struct.object, %struct.object* %81, i32 0, i32 2
  %83 = call i32 @oidset_insert(%struct.oidset* %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32, i32* @LOFR_MARK_SEEN, align 4
  store i32 %85, i32* %8, align 4
  br label %98

86:                                               ; preds = %75, %68
  %87 = load %struct.oidset*, %struct.oidset** %14, align 8
  %88 = icmp ne %struct.oidset* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.oidset*, %struct.oidset** %14, align 8
  %91 = load %struct.object*, %struct.object** %11, align 8
  %92 = getelementptr inbounds %struct.object, %struct.object* %91, i32 0, i32 2
  %93 = call i32 @oidset_remove(%struct.oidset* %90, i32* %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %96 = load i32, i32* @LOFR_DO_SHOW, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %94, %84, %36, %25
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @oid_object_info(%struct.repository*, i32*, i64*) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

declare dso_local i32 @oidset_remove(%struct.oidset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
