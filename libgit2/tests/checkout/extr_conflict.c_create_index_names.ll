; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_create_index_names.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_create_index_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_name_entry = type { i32*, i32*, i32* }

@g_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.checkout_name_entry*, i64)* @create_index_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_index_names(%struct.checkout_name_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.checkout_name_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.checkout_name_entry* %0, %struct.checkout_name_entry** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %62, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %65

10:                                               ; preds = %6
  %11 = load i32, i32* @g_index, align 4
  %12 = load %struct.checkout_name_entry*, %struct.checkout_name_entry** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %12, i64 %13
  %15 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @strlen(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %26

20:                                               ; preds = %10
  %21 = load %struct.checkout_name_entry*, %struct.checkout_name_entry** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %21, i64 %22
  %24 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i32* [ null, %19 ], [ %25, %20 ]
  %28 = load %struct.checkout_name_entry*, %struct.checkout_name_entry** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %28, i64 %29
  %31 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @strlen(i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %42

36:                                               ; preds = %26
  %37 = load %struct.checkout_name_entry*, %struct.checkout_name_entry** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %37, i64 %38
  %40 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  br label %42

42:                                               ; preds = %36, %35
  %43 = phi i32* [ null, %35 ], [ %41, %36 ]
  %44 = load %struct.checkout_name_entry*, %struct.checkout_name_entry** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %44, i64 %45
  %47 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @strlen(i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %58

52:                                               ; preds = %42
  %53 = load %struct.checkout_name_entry*, %struct.checkout_name_entry** %3, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %53, i64 %54
  %56 = getelementptr inbounds %struct.checkout_name_entry, %struct.checkout_name_entry* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  br label %58

58:                                               ; preds = %52, %51
  %59 = phi i32* [ null, %51 ], [ %57, %52 ]
  %60 = call i32 @git_index_name_add(i32 %11, i32* %27, i32* %43, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %6

65:                                               ; preds = %6
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_name_add(i32, i32*, i32*, i32*) #1

declare dso_local i64 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
