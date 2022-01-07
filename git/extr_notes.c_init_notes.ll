; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_init_notes.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_init_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32, %struct.int_node*, i64, i64, i32*, i32*, i32*, i32* }
%struct.int_node = type { i32 }
%struct.object_id = type { i32 }
%struct.leaf_node = type { i32, i32 }

@default_notes_tree = common dso_local global %struct.notes_tree zeroinitializer, align 8
@combine_notes_concatenate = common dso_local global i64 0, align 8
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@NOTES_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot use notes ref %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to read notes tree referenced by %s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_notes(%struct.notes_tree* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.notes_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i16, align 2
  %12 = alloca %struct.leaf_node, align 4
  store %struct.notes_tree* %0, %struct.notes_tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %14 = icmp ne %struct.notes_tree* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.notes_tree* @default_notes_tree, %struct.notes_tree** %5, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %18 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = call i8* (...) @default_notes_ref()
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @combine_notes_concatenate, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = call i64 @xcalloc(i32 1, i32 4)
  %35 = inttoptr i64 %34 to %struct.int_node*
  %36 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %37 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %36, i32 0, i32 1
  store %struct.int_node* %35, %struct.int_node** %37, align 8
  %38 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %39 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %38, i32 0, i32 7
  store i32* null, i32** %39, align 8
  %40 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %41 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %40, i32 0, i32 6
  store i32* null, i32** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32* @xstrdup_or_null(i8* %42)
  %44 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %45 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %33
  %51 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %52 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  br label %55

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32* [ %53, %50 ], [ null, %54 ]
  %57 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %58 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %61 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %63 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %65 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @NOTES_INIT_EMPTY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %55
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @get_oid_treeish(i8* %74, %struct.object_id* %10)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %70, %55
  br label %108

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = call i64 @read_ref(i8* %84, %struct.object_id* %10)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %83, %78
  %91 = load i32, i32* @the_repository, align 4
  %92 = call i64 @get_tree_entry(i32 %91, %struct.object_id* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.object_id* %9, i16* %11)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @oid_to_hex(%struct.object_id* %10)
  %97 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %90
  %99 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %12, i32 0, i32 1
  %100 = call i32 @oidclr(i32* %99)
  %101 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %12, i32 0, i32 0
  %102 = call i32 @oidcpy(i32* %101, %struct.object_id* %9)
  %103 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %104 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %105 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %104, i32 0, i32 1
  %106 = load %struct.int_node*, %struct.int_node** %105, align 8
  %107 = call i32 @load_subtree(%struct.notes_tree* %103, %struct.leaf_node* %12, %struct.int_node* %106, i32 0)
  br label %108

108:                                              ; preds = %98, %77
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @default_notes_ref(...) #1

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local i32* @xstrdup_or_null(i8*) #1

declare dso_local i64 @get_oid_treeish(i8*, %struct.object_id*) #1

declare dso_local i64 @read_ref(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

declare dso_local i64 @get_tree_entry(i32, %struct.object_id*, i8*, %struct.object_id*, i16*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @load_subtree(%struct.notes_tree*, %struct.leaf_node*, %struct.int_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
