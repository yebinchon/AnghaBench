; ModuleID = '/home/carl/AnghaBench/git/extr_tag.c_deref_tag.c'
source_filename = "/home/carl/AnghaBench/git/extr_tag.c_deref_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i64 }
%struct.object_id = type { i32 }
%struct.tag = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object_id }

@OBJ_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"missing object referenced by '%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @deref_tag(%struct.repository* %0, %struct.object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.object*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.object* %1, %struct.object** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.object_id* null, %struct.object_id** %10, align 8
  br label %11

11:                                               ; preds = %38, %4
  %12 = load %struct.object*, %struct.object** %7, align 8
  %13 = icmp ne %struct.object* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.object*, %struct.object** %7, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OBJ_TAG, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  %23 = load %struct.object*, %struct.object** %7, align 8
  %24 = bitcast %struct.object* %23 to %struct.tag*
  %25 = getelementptr inbounds %struct.tag, %struct.tag* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.object*, %struct.object** %7, align 8
  %30 = bitcast %struct.object* %29 to %struct.tag*
  %31 = getelementptr inbounds %struct.tag, %struct.tag* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.object_id* %33, %struct.object_id** %10, align 8
  %34 = load %struct.repository*, %struct.repository** %6, align 8
  %35 = load %struct.object_id*, %struct.object_id** %10, align 8
  %36 = call %struct.object* @parse_object(%struct.repository* %34, %struct.object_id* %35)
  store %struct.object* %36, %struct.object** %7, align 8
  br label %38

37:                                               ; preds = %22
  store %struct.object_id* null, %struct.object_id** %10, align 8
  store %struct.object* null, %struct.object** %7, align 8
  br label %38

38:                                               ; preds = %37, %28
  br label %11

39:                                               ; preds = %20
  %40 = load %struct.object*, %struct.object** %7, align 8
  %41 = icmp ne %struct.object* %40, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.object_id*, %struct.object_id** %10, align 8
  %47 = icmp ne %struct.object_id* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.object_id*, %struct.object_id** %10, align 8
  %50 = call i64 @is_promisor_object(%struct.object_id* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store %struct.object* null, %struct.object** %5, align 8
  br label %65

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %59, %42, %39
  %64 = load %struct.object*, %struct.object** %7, align 8
  store %struct.object* %64, %struct.object** %5, align 8
  br label %65

65:                                               ; preds = %63, %52
  %66 = load %struct.object*, %struct.object** %5, align 8
  ret %struct.object* %66
}

declare dso_local %struct.object* @parse_object(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @is_promisor_object(%struct.object_id*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
