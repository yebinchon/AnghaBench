; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_get_tree_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_get_tree_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.tree_desc = type { i32 }

@tree_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tree_entry(%struct.repository* %0, %struct.object_id* %1, i8* %2, %struct.object_id* %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.object_id, align 4
  %16 = alloca %struct.tree_desc, align 4
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.object_id* %3, %struct.object_id** %10, align 8
  store i16* %4, i16** %11, align 8
  %17 = load %struct.repository*, %struct.repository** %7, align 8
  %18 = load %struct.object_id*, %struct.object_id** %8, align 8
  %19 = load i32, i32* @tree_type, align 4
  %20 = call i8* @read_object_with_reference(%struct.repository* %17, %struct.object_id* %18, i32 %19, i64* %14, %struct.object_id* %15)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %52

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.object_id*, %struct.object_id** %10, align 8
  %32 = call i32 @oidcpy(%struct.object_id* %31, %struct.object_id* %15)
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @free(i8* %33)
  store i32 0, i32* %6, align 4
  br label %52

35:                                               ; preds = %24
  %36 = load i64, i64* %14, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 -1, i32* %12, align 4
  br label %48

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @init_tree_desc(%struct.tree_desc* %16, i8* %40, i64 %41)
  %43 = load %struct.repository*, %struct.repository** %7, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.object_id*, %struct.object_id** %10, align 8
  %46 = load i16*, i16** %11, align 8
  %47 = call i32 @find_tree_entry(%struct.repository* %43, %struct.tree_desc* %16, i8* %44, %struct.object_id* %45, i16* %46)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %39, %38
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %30, %23
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i8* @read_object_with_reference(%struct.repository*, %struct.object_id*, i32, i64*, %struct.object_id*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #1

declare dso_local i32 @find_tree_entry(%struct.repository*, %struct.tree_desc*, i8*, %struct.object_id*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
