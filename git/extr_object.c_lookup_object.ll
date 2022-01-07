; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_lookup_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_lookup_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.object** }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @lookup_object(%struct.repository* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = getelementptr inbounds %struct.repository, %struct.repository* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.object**, %struct.object*** %12, align 8
  %14 = icmp ne %struct.object** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.object* null, %struct.object** %3, align 8
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.object_id*, %struct.object_id** %5, align 8
  %18 = load %struct.repository*, %struct.repository** %4, align 8
  %19 = getelementptr inbounds %struct.repository, %struct.repository* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hash_obj(%struct.object_id* %17, i32 %22)
  store i32 %23, i32* %6, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %53, %16
  %25 = load %struct.repository*, %struct.repository** %4, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.object**, %struct.object*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.object*, %struct.object** %29, i64 %31
  %33 = load %struct.object*, %struct.object** %32, align 8
  store %struct.object* %33, %struct.object** %8, align 8
  %34 = icmp ne %struct.object* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %24
  %36 = load %struct.object_id*, %struct.object_id** %5, align 8
  %37 = load %struct.object*, %struct.object** %8, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 0
  %39 = call i64 @oideq(%struct.object_id* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %54

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.repository*, %struct.repository** %4, align 8
  %47 = getelementptr inbounds %struct.repository, %struct.repository* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %42
  br label %24

54:                                               ; preds = %41, %24
  %55 = load %struct.object*, %struct.object** %8, align 8
  %56 = icmp ne %struct.object* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load %struct.repository*, %struct.repository** %4, align 8
  %63 = getelementptr inbounds %struct.repository, %struct.repository* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.object**, %struct.object*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.object*, %struct.object** %66, i64 %68
  %70 = load %struct.object*, %struct.object** %69, align 8
  %71 = load %struct.repository*, %struct.repository** %4, align 8
  %72 = getelementptr inbounds %struct.repository, %struct.repository* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.object**, %struct.object*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.object*, %struct.object** %75, i64 %77
  %79 = load %struct.object*, %struct.object** %78, align 8
  %80 = call i32 @SWAP(%struct.object* %70, %struct.object* %79)
  br label %81

81:                                               ; preds = %61, %57, %54
  %82 = load %struct.object*, %struct.object** %8, align 8
  store %struct.object* %82, %struct.object** %3, align 8
  br label %83

83:                                               ; preds = %81, %15
  %84 = load %struct.object*, %struct.object** %3, align 8
  ret %struct.object* %84
}

declare dso_local i32 @hash_obj(%struct.object_id*, i32) #1

declare dso_local i64 @oideq(%struct.object_id*, i32*) #1

declare dso_local i32 @SWAP(%struct.object*, %struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
