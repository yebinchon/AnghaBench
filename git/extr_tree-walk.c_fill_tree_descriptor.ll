; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_fill_tree_descriptor.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_fill_tree_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree_desc = type { i32 }
%struct.object_id = type { i32 }

@tree_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unable to read tree %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fill_tree_descriptor(%struct.repository* %0, %struct.tree_desc* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.tree_desc*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.tree_desc* %1, %struct.tree_desc** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  store i64 0, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.object_id*, %struct.object_id** %6, align 8
  %10 = icmp ne %struct.object_id* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.repository*, %struct.repository** %4, align 8
  %13 = load %struct.object_id*, %struct.object_id** %6, align 8
  %14 = load i32, i32* @tree_type, align 4
  %15 = call i8* @read_object_with_reference(%struct.repository* %12, %struct.object_id* %13, i32 %14, i64* %7, i32* null)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load %struct.object_id*, %struct.object_id** %6, align 8
  %20 = call i32 @oid_to_hex(%struct.object_id* %19)
  %21 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %11
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.tree_desc*, %struct.tree_desc** %5, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @init_tree_desc(%struct.tree_desc* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %8, align 8
  ret i8* %28
}

declare dso_local i8* @read_object_with_reference(%struct.repository*, %struct.object_id*, i32, i64*, i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
