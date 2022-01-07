; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_complete.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i64, i32 }
%struct.tag = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.object_id }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@COMPLETE = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @mark_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_complete(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.tag*, align 8
  %5 = alloca %struct.commit*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %6 = load i32, i32* @the_repository, align 4
  %7 = load %struct.object_id*, %struct.object_id** %2, align 8
  %8 = call %struct.object* @parse_object(i32 %6, %struct.object_id* %7)
  store %struct.object* %8, %struct.object** %3, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load %struct.object*, %struct.object** %3, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.object*, %struct.object** %3, align 8
  %14 = getelementptr inbounds %struct.object, %struct.object* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OBJ_TAG, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %40

20:                                               ; preds = %18
  %21 = load %struct.object*, %struct.object** %3, align 8
  %22 = bitcast %struct.object* %21 to %struct.tag*
  store %struct.tag* %22, %struct.tag** %4, align 8
  %23 = load %struct.tag*, %struct.tag** %4, align 8
  %24 = getelementptr inbounds %struct.tag, %struct.tag* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %40

28:                                               ; preds = %20
  %29 = load i32, i32* @COMPLETE, align 4
  %30 = load %struct.object*, %struct.object** %3, align 8
  %31 = getelementptr inbounds %struct.object, %struct.object* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @the_repository, align 4
  %35 = load %struct.tag*, %struct.tag** %4, align 8
  %36 = getelementptr inbounds %struct.tag, %struct.tag* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call %struct.object* @parse_object(i32 %34, %struct.object_id* %38)
  store %struct.object* %39, %struct.object** %3, align 8
  br label %9

40:                                               ; preds = %27, %18
  %41 = load %struct.object*, %struct.object** %3, align 8
  %42 = icmp ne %struct.object* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load %struct.object*, %struct.object** %3, align 8
  %45 = getelementptr inbounds %struct.object, %struct.object* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OBJ_COMMIT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.object*, %struct.object** %3, align 8
  %51 = bitcast %struct.object* %50 to %struct.commit*
  store %struct.commit* %51, %struct.commit** %5, align 8
  %52 = load %struct.commit*, %struct.commit** %5, align 8
  %53 = getelementptr inbounds %struct.commit, %struct.commit* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @COMPLETE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @COMPLETE, align 4
  %61 = load %struct.commit*, %struct.commit** %5, align 8
  %62 = getelementptr inbounds %struct.commit, %struct.commit* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load %struct.commit*, %struct.commit** %5, align 8
  %67 = call i32 @commit_list_insert(%struct.commit* %66, i32* @complete)
  br label %68

68:                                               ; preds = %59, %49
  br label %69

69:                                               ; preds = %68, %43, %40
  ret i32 0
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
