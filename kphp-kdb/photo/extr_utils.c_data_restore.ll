; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_data_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"data_restore_del failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @data_restore(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @data_get_hidden_state(%struct.TYPE_8__* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @data_get_local_id_by_id(%struct.TYPE_8__* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %61

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @data_restore_del(%struct.TYPE_8__* %23, i32 %24, i32* %7)
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @data_get_pos_by_local_id(%struct.TYPE_8__* %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %49

40:                                               ; preds = %29
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @data_get_pos_by_local_id(%struct.TYPE_8__* %41, i32 %42)
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %40, %39
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @data_move_and_create(%struct.TYPE_8__* %50, i32 %51, i32 %52)
  %54 = icmp sgt i32 %53, -1
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @lookup_set(i32* %58, i32 %59, i32 0)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %49, %27, %21, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @data_get_hidden_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @data_get_local_id_by_id(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @data_restore_del(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @data_get_pos_by_local_id(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @data_move_and_create(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @lookup_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
