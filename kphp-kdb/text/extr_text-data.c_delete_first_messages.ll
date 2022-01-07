; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_delete_first_messages.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_delete_first_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file_user_list_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_first_messages(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.file_user_list_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @conv_uid(i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %54

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_3__* @get_user(i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %20
  br label %52

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.file_user_list_entry* @lookup_user_directory(i32 %34)
  store %struct.file_user_list_entry* %35, %struct.file_user_list_entry** %7, align 8
  %36 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %37 = icmp ne %struct.file_user_list_entry* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %54

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %42 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = icmp sgt i32 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %7, align 8
  %48 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %38, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local %struct.file_user_list_entry* @lookup_user_directory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
