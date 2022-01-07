; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_note_tree_free.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_note_tree_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_node = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.int_node*)* @note_tree_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_tree_free(%struct.int_node* %0) #0 {
  %2 = alloca %struct.int_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.int_node* %0, %struct.int_node** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load %struct.int_node*, %struct.int_node** %2, align 8
  %10 = getelementptr inbounds %struct.int_node, %struct.int_node* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @GET_PTR_TYPE(i8* %16)
  switch i32 %17, label %25 [
    i32 130, label %18
    i32 129, label %21
    i32 128, label %21
  ]

18:                                               ; preds = %8
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.int_node* @CLR_PTR_TYPE(i8* %19)
  call void @note_tree_free(%struct.int_node* %20)
  br label %21

21:                                               ; preds = %8, %8, %18
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.int_node* @CLR_PTR_TYPE(i8* %22)
  %24 = call i32 @free(%struct.int_node* %23)
  br label %25

25:                                               ; preds = %21, %8
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @GET_PTR_TYPE(i8*) #1

declare dso_local %struct.int_node* @CLR_PTR_TYPE(i8*) #1

declare dso_local i32 @free(%struct.int_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
