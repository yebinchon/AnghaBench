; ModuleID = '/home/carl/AnghaBench/git/extr_match-trees.c_fill_tree_desc_strict.c'
source_filename = "/home/carl/AnghaBench/git/extr_match-trees.c_fill_tree_desc_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unable to read tree (%s)\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s is not a tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tree_desc*, %struct.object_id*)* @fill_tree_desc_strict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fill_tree_desc_strict(%struct.tree_desc* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.tree_desc*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tree_desc* %0, %struct.tree_desc** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %8 = load %struct.object_id*, %struct.object_id** %4, align 8
  %9 = call i8* @read_object_file(%struct.object_id* %8, i32* %6, i64* %7)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = call i32 @oid_to_hex(%struct.object_id* %13)
  %15 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @OBJ_TREE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.object_id*, %struct.object_id** %4, align 8
  %22 = call i32 @oid_to_hex(%struct.object_id* %21)
  %23 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.tree_desc*, %struct.tree_desc** %3, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @init_tree_desc(%struct.tree_desc* %25, i8* %26, i64 %27)
  %29 = load i8*, i8** %5, align 8
  ret i8* %29
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
