; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_del.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (i32*, i32**)* }

@del = common dso_local global i32 0, align 4
@get_i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_del(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @data_get_local_id_by_id(%struct.TYPE_8__* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @data_get_pos_by_local_id(%struct.TYPE_8__* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32, i32* @del, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @PERM(i32 %23, i32* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %38

31:                                               ; preds = %22
  %32 = load i32, i32* @get_i, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @PERM(i32 %32, i32* %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %30
  %39 = phi i32 [ -1, %30 ], [ %37, %31 ]
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @data_restore_append(%struct.TYPE_8__* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %16
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @lookup_set(i32* %46, i32 %47, i32 -1)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @lookup_set(i32* %50, i32 %51, i32 0)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i64 @map_int_vptr_get(i32* %54, i32 %56)
  %58 = inttoptr i64 %57 to i32**
  store i32** %58, i32*** %9, align 8
  %59 = load i32**, i32*** %9, align 8
  %60 = icmp ne i32** %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %44
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = call %struct.TYPE_9__* @DATA_FUNC(%struct.TYPE_8__* %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32 (i32*, i32**)*, i32 (i32*, i32**)** %64, align 8
  %66 = load i32**, i32*** %9, align 8
  %67 = call i32 %65(i32* null, i32** %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @map_int_vptr_del(i32* %69, i32 %71)
  br label %73

73:                                               ; preds = %61, %44
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @data_get_local_id_by_id(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @data_get_pos_by_local_id(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @PERM(i32, i32*, i32) #1

declare dso_local i32 @data_restore_append(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @lookup_set(i32*, i32, i32) #1

declare dso_local i64 @map_int_vptr_get(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @DATA_FUNC(%struct.TYPE_8__*) #1

declare dso_local i32 @map_int_vptr_del(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
