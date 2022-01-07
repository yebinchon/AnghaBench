; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_write_each_note_helper.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_write_each_note_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_write_stack = type { i32, %struct.tree_write_stack* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_write_stack*, i8*, i32, %struct.object_id*)* @write_each_note_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_each_note_helper(%struct.tree_write_stack* %0, i8* %1, i32 %2, %struct.object_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_write_stack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tree_write_stack* %0, %struct.tree_write_stack** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %35, %4
  %16 = load %struct.tree_write_stack*, %struct.tree_write_stack** %6, align 8
  %17 = icmp ne %struct.tree_write_stack* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32, i32* %11, align 4
  %20 = mul i32 3, %19
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.tree_write_stack*, %struct.tree_write_stack** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = mul i32 3, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = call i64 @matches_tree_write_stack(%struct.tree_write_stack* %25, i8* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %24, %18, %15
  %34 = phi i1 [ false, %18 ], [ false, %15 ], [ %32, %24 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load %struct.tree_write_stack*, %struct.tree_write_stack** %6, align 8
  %39 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %38, i32 0, i32 1
  %40 = load %struct.tree_write_stack*, %struct.tree_write_stack** %39, align 8
  store %struct.tree_write_stack* %40, %struct.tree_write_stack** %6, align 8
  br label %15

41:                                               ; preds = %33
  %42 = load %struct.tree_write_stack*, %struct.tree_write_stack** %6, align 8
  %43 = call i32 @tree_write_stack_finish_subtree(%struct.tree_write_stack* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %113

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %11, align 4
  %51 = mul i32 3, %50
  %52 = add i32 %51, 2
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %10, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = mul i32 3, %58
  %60 = add i32 %59, 2
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 47
  br label %66

66:                                               ; preds = %56, %49
  %67 = phi i1 [ false, %49 ], [ %65, %56 ]
  br i1 %67, label %68, label %81

68:                                               ; preds = %66
  %69 = load %struct.tree_write_stack*, %struct.tree_write_stack** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 3, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = call i32 @tree_write_stack_init_subtree(%struct.tree_write_stack* %69, i8* %74)
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load %struct.tree_write_stack*, %struct.tree_write_stack** %6, align 8
  %79 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %78, i32 0, i32 1
  %80 = load %struct.tree_write_stack*, %struct.tree_write_stack** %79, align 8
  store %struct.tree_write_stack* %80, %struct.tree_write_stack** %6, align 8
  br label %49

81:                                               ; preds = %66
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = mul i32 3, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = mul i32 3, %88
  %90 = zext i32 %89 to i64
  %91 = sub i64 %87, %90
  %92 = call i32* @memchr(i8* %86, i8 signext 47, i64 %91)
  %93 = icmp eq i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.tree_write_stack*, %struct.tree_write_stack** %6, align 8
  %97 = getelementptr inbounds %struct.tree_write_stack, %struct.tree_write_stack* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = mul i32 3, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = mul i32 3, %105
  %107 = zext i32 %106 to i64
  %108 = sub i64 %104, %107
  %109 = load %struct.object_id*, %struct.object_id** %9, align 8
  %110 = getelementptr inbounds %struct.object_id, %struct.object_id* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_tree_entry(i32* %97, i32 %98, i8* %103, i64 %108, i32 %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %81, %46
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @matches_tree_write_stack(%struct.tree_write_stack*, i8*) #1

declare dso_local i32 @tree_write_stack_finish_subtree(%struct.tree_write_stack*) #1

declare dso_local i32 @tree_write_stack_init_subtree(%struct.tree_write_stack*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @write_tree_entry(i32*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
