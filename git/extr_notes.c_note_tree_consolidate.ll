; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_note_tree_consolidate.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_note_tree_consolidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_node = type { i8** }

@PTR_TYPE_NULL = common dso_local global i64 0, align 8
@PTR_TYPE_NOTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.int_node*, %struct.int_node*, i8)* @note_tree_consolidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_tree_consolidate(%struct.int_node* %0, %struct.int_node* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.int_node*, align 8
  %6 = alloca %struct.int_node*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.int_node* %0, %struct.int_node** %5, align 8
  store %struct.int_node* %1, %struct.int_node** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* null, i8** %9, align 8
  %10 = load %struct.int_node*, %struct.int_node** %5, align 8
  %11 = icmp ne %struct.int_node* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.int_node*, %struct.int_node** %6, align 8
  %14 = icmp ne %struct.int_node* %13, null
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.int_node*, %struct.int_node** %6, align 8
  %20 = getelementptr inbounds %struct.int_node, %struct.int_node* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct.int_node* @CLR_PTR_TYPE(i8* %25)
  %27 = load %struct.int_node*, %struct.int_node** %5, align 8
  %28 = icmp eq %struct.int_node* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %58, %15
  %32 = load i32, i32* %8, align 4
  %33 = icmp ult i32 %32, 16
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.int_node*, %struct.int_node** %5, align 8
  %36 = getelementptr inbounds %struct.int_node, %struct.int_node* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @GET_PTR_TYPE(i8* %41)
  %43 = load i64, i64* @PTR_TYPE_NULL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -2, i32* %4, align 4
  br label %80

49:                                               ; preds = %45
  %50 = load %struct.int_node*, %struct.int_node** %5, align 8
  %51 = getelementptr inbounds %struct.int_node, %struct.int_node* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %49, %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %31

61:                                               ; preds = %31
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 @GET_PTR_TYPE(i8* %65)
  %67 = load i64, i64* @PTR_TYPE_NOTE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 -2, i32* %4, align 4
  br label %80

70:                                               ; preds = %64, %61
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.int_node*, %struct.int_node** %6, align 8
  %73 = getelementptr inbounds %struct.int_node, %struct.int_node* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  store i8* %71, i8** %77, align 8
  %78 = load %struct.int_node*, %struct.int_node** %5, align 8
  %79 = call i32 @free(%struct.int_node* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %70, %69, %48
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.int_node* @CLR_PTR_TYPE(i8*) #1

declare dso_local i64 @GET_PTR_TYPE(i8*) #1

declare dso_local i32 @free(%struct.int_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
