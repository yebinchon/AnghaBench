; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_note_tree_find.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_note_tree_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.leaf_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.notes_tree = type { i32 }
%struct.int_node = type { i32 }

@PTR_TYPE_NOTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.leaf_node* (%struct.notes_tree*, %struct.int_node*, i8, i8*)* @note_tree_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.leaf_node* @note_tree_find(%struct.notes_tree* %0, %struct.int_node* %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca %struct.leaf_node*, align 8
  %6 = alloca %struct.notes_tree*, align 8
  %7 = alloca %struct.int_node*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.leaf_node*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %6, align 8
  store %struct.int_node* %1, %struct.int_node** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  %12 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i8** @note_tree_search(%struct.notes_tree* %12, %struct.int_node** %7, i8* %8, i8* %13)
  store i8** %14, i8*** %10, align 8
  %15 = load i8**, i8*** %10, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @GET_PTR_TYPE(i8* %16)
  %18 = load i64, i64* @PTR_TYPE_NOTE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @CLR_PTR_TYPE(i8* %22)
  %24 = inttoptr i64 %23 to %struct.leaf_node*
  store %struct.leaf_node* %24, %struct.leaf_node** %11, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.leaf_node*, %struct.leaf_node** %11, align 8
  %27 = getelementptr inbounds %struct.leaf_node, %struct.leaf_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @hasheq(i8* %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load %struct.leaf_node*, %struct.leaf_node** %11, align 8
  store %struct.leaf_node* %33, %struct.leaf_node** %5, align 8
  br label %36

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %4
  store %struct.leaf_node* null, %struct.leaf_node** %5, align 8
  br label %36

36:                                               ; preds = %35, %32
  %37 = load %struct.leaf_node*, %struct.leaf_node** %5, align 8
  ret %struct.leaf_node* %37
}

declare dso_local i8** @note_tree_search(%struct.notes_tree*, %struct.int_node**, i8*, i8*) #1

declare dso_local i64 @GET_PTR_TYPE(i8*) #1

declare dso_local i64 @CLR_PTR_TYPE(i8*) #1

declare dso_local i64 @hasheq(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
