; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_msg_entries.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_msg_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_msg_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.merge_msg_entry*, i64, i32 (%struct.merge_msg_entry*, i32*)*)* @merge_msg_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_msg_entries(i32* %0, %struct.merge_msg_entry* %1, i64 %2, i32 (%struct.merge_msg_entry*, i32*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.merge_msg_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (%struct.merge_msg_entry*, i32*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.merge_msg_entry* %1, %struct.merge_msg_entry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (%struct.merge_msg_entry*, i32*)* %3, i32 (%struct.merge_msg_entry*, i32*)** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @git_vector_clear(i32* %13)
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %42, %4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32 (%struct.merge_msg_entry*, i32*)*, i32 (%struct.merge_msg_entry*, i32*)** %9, align 8
  %21 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %21, i64 %22
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 %20(%struct.merge_msg_entry* %23, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %47

29:                                               ; preds = %19
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %42

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.merge_msg_entry*, %struct.merge_msg_entry** %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.merge_msg_entry, %struct.merge_msg_entry* %36, i64 %37
  %39 = call i32 @git_vector_insert(i32* %35, %struct.merge_msg_entry* %38)
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %34, %32
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %15

45:                                               ; preds = %15
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %27
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @git_vector_clear(i32*) #1

declare dso_local i32 @git_vector_insert(i32*, %struct.merge_msg_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
