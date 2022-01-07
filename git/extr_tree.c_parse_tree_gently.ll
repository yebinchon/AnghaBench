; ModuleID = '/home/carl/AnghaBench/git/extr_tree.c_parse_tree_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree.c_parse_tree_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Could not read %s\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Object %s not a tree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_tree_gently(%struct.tree* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tree*, %struct.tree** %4, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.tree*, %struct.tree** %4, align 8
  %17 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i8* @read_object_file(i32* %18, i32* %6, i64* %8)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %32

26:                                               ; preds = %22
  %27 = load %struct.tree*, %struct.tree** %4, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @oid_to_hex(i32* %29)
  %31 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %25
  %33 = phi i32 [ -1, %25 ], [ %31, %26 ]
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @OBJ_TREE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.tree*, %struct.tree** %4, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @oid_to_hex(i32* %43)
  %45 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %34
  %47 = load %struct.tree*, %struct.tree** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @parse_tree_buffer(%struct.tree* %47, i8* %48, i64 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %38, %32, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_tree_buffer(%struct.tree*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
