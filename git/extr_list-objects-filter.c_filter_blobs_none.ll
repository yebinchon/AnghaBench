; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_blobs_none.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_blobs_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32, i32, i32 }
%struct.oidset = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unknown filter_situation: %d\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_DO_SHOW = common dso_local global i32 0, align 4
@LOFR_ZERO = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, %struct.oidset*, i8*)* @filter_blobs_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_blobs_none(%struct.repository* %0, i32 %1, %struct.object* %2, i8* %3, i8* %4, %struct.oidset* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.oidset*, align 8
  %15 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.object* %2, %struct.object** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.oidset* %5, %struct.oidset** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %17 [
    i32 130, label %20
    i32 128, label %31
    i32 129, label %40
  ]

17:                                               ; preds = %7
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %7, %17
  %21 = load %struct.object*, %struct.object** %11, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OBJ_TREE, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %29 = load i32, i32* @LOFR_DO_SHOW, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %8, align 4
  br label %65

31:                                               ; preds = %7
  %32 = load %struct.object*, %struct.object** %11, align 8
  %33 = getelementptr inbounds %struct.object, %struct.object* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OBJ_TREE, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %39, i32* %8, align 4
  br label %65

40:                                               ; preds = %7
  %41 = load %struct.object*, %struct.object** %11, align 8
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OBJ_BLOB, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.object*, %struct.object** %11, align 8
  %49 = getelementptr inbounds %struct.object, %struct.object* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SEEN, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.oidset*, %struct.oidset** %14, align 8
  %57 = icmp ne %struct.oidset* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load %struct.oidset*, %struct.oidset** %14, align 8
  %60 = load %struct.object*, %struct.object** %11, align 8
  %61 = getelementptr inbounds %struct.object, %struct.object* %60, i32 0, i32 1
  %62 = call i32 @oidset_insert(%struct.oidset* %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %40
  %64 = load i32, i32* @LOFR_MARK_SEEN, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %63, %31, %20
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
