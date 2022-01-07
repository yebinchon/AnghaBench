; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_note_tree_search.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_note_tree_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { i32 }
%struct.int_node = type { i8** }
%struct.leaf_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.notes_tree*, %struct.int_node**, i8*, i8*)* @note_tree_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @note_tree_search(%struct.notes_tree* %0, %struct.int_node** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.notes_tree*, align 8
  %7 = alloca %struct.int_node**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.leaf_node*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %6, align 8
  store %struct.int_node** %1, %struct.int_node*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %14 = load %struct.int_node*, %struct.int_node** %13, align 8
  %15 = getelementptr inbounds %struct.int_node, %struct.int_node* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @GET_PTR_TYPE(i8* %19)
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %54

22:                                               ; preds = %4
  %23 = load i8*, i8** %12, align 8
  %24 = call %struct.int_node* @CLR_PTR_TYPE(i8* %23)
  %25 = bitcast %struct.int_node* %24 to %struct.leaf_node*
  store %struct.leaf_node* %25, %struct.leaf_node** %10, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.leaf_node*, %struct.leaf_node** %10, align 8
  %28 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SUBTREE_SHA1_PREFIXCMP(i8* %26, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %22
  %34 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %35 = load %struct.int_node*, %struct.int_node** %34, align 8
  %36 = getelementptr inbounds %struct.int_node, %struct.int_node* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* null, i8** %38, align 8
  %39 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %40 = load %struct.leaf_node*, %struct.leaf_node** %10, align 8
  %41 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %42 = load %struct.int_node*, %struct.int_node** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @load_subtree(%struct.notes_tree* %39, %struct.leaf_node* %40, %struct.int_node* %42, i8 zeroext %44)
  %46 = load %struct.leaf_node*, %struct.leaf_node** %10, align 8
  %47 = call i32 @free(%struct.leaf_node* %46)
  %48 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %49 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i8** @note_tree_search(%struct.notes_tree* %48, %struct.int_node** %49, i8* %50, i8* %51)
  store i8** %52, i8*** %5, align 8
  br label %123

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = call zeroext i8 @GET_NIBBLE(i8 zeroext %56, i8* %57)
  store i8 %58, i8* %11, align 1
  %59 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %60 = load %struct.int_node*, %struct.int_node** %59, align 8
  %61 = getelementptr inbounds %struct.int_node, %struct.int_node* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @GET_PTR_TYPE(i8* %67)
  switch i32 %68, label %115 [
    i32 129, label %69
    i32 128, label %81
  ]

69:                                               ; preds = %54
  %70 = load i8*, i8** %12, align 8
  %71 = call %struct.int_node* @CLR_PTR_TYPE(i8* %70)
  %72 = load %struct.int_node**, %struct.int_node*** %7, align 8
  store %struct.int_node* %71, %struct.int_node** %72, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = add i8 %74, 1
  store i8 %75, i8* %73, align 1
  %76 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %77 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i8** @note_tree_search(%struct.notes_tree* %76, %struct.int_node** %77, i8* %78, i8* %79)
  store i8** %80, i8*** %5, align 8
  br label %123

81:                                               ; preds = %54
  %82 = load i8*, i8** %12, align 8
  %83 = call %struct.int_node* @CLR_PTR_TYPE(i8* %82)
  %84 = bitcast %struct.int_node* %83 to %struct.leaf_node*
  store %struct.leaf_node* %84, %struct.leaf_node** %10, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.leaf_node*, %struct.leaf_node** %10, align 8
  %87 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SUBTREE_SHA1_PREFIXCMP(i8* %85, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %81
  %93 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %94 = load %struct.int_node*, %struct.int_node** %93, align 8
  %95 = getelementptr inbounds %struct.int_node, %struct.int_node* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i8, i8* %11, align 1
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* null, i8** %99, align 8
  %100 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %101 = load %struct.leaf_node*, %struct.leaf_node** %10, align 8
  %102 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %103 = load %struct.int_node*, %struct.int_node** %102, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i32 @load_subtree(%struct.notes_tree* %100, %struct.leaf_node* %101, %struct.int_node* %103, i8 zeroext %105)
  %107 = load %struct.leaf_node*, %struct.leaf_node** %10, align 8
  %108 = call i32 @free(%struct.leaf_node* %107)
  %109 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %110 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i8** @note_tree_search(%struct.notes_tree* %109, %struct.int_node** %110, i8* %111, i8* %112)
  store i8** %113, i8*** %5, align 8
  br label %123

114:                                              ; preds = %81
  br label %115

115:                                              ; preds = %54, %114
  %116 = load %struct.int_node**, %struct.int_node*** %7, align 8
  %117 = load %struct.int_node*, %struct.int_node** %116, align 8
  %118 = getelementptr inbounds %struct.int_node, %struct.int_node* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = load i8, i8* %11, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8** %122, i8*** %5, align 8
  br label %123

123:                                              ; preds = %115, %92, %69, %33
  %124 = load i8**, i8*** %5, align 8
  ret i8** %124
}

declare dso_local i32 @GET_PTR_TYPE(i8*) #1

declare dso_local %struct.int_node* @CLR_PTR_TYPE(i8*) #1

declare dso_local i32 @SUBTREE_SHA1_PREFIXCMP(i8*, i32) #1

declare dso_local i32 @load_subtree(%struct.notes_tree*, %struct.leaf_node*, %struct.int_node*, i8 zeroext) #1

declare dso_local i32 @free(%struct.leaf_node*) #1

declare dso_local zeroext i8 @GET_NIBBLE(i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
