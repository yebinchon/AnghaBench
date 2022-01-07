; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_lookup_user_directory.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_lookup_user_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file_user_list_entry = type { i64 }

@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FileUsers = common dso_local global %struct.file_user_list_entry** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file_user_list_entry* @lookup_user_directory(i64 %0) #0 {
  %2 = alloca %struct.file_user_list_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.file_user_list_entry* null, %struct.file_user_list_entry** %2, align 8
  br label %56

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %35, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.file_user_list_entry**, %struct.file_user_list_entry*** @FileUsers, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.file_user_list_entry*, %struct.file_user_list_entry** %23, i64 %25
  %27 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %26, align 8
  %28 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %22, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %12

36:                                               ; preds = %12
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.file_user_list_entry**, %struct.file_user_list_entry*** @FileUsers, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.file_user_list_entry*, %struct.file_user_list_entry** %40, i64 %42
  %44 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %43, align 8
  %45 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.file_user_list_entry**, %struct.file_user_list_entry*** @FileUsers, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.file_user_list_entry*, %struct.file_user_list_entry** %50, i64 %52
  %54 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %53, align 8
  store %struct.file_user_list_entry* %54, %struct.file_user_list_entry** %2, align 8
  br label %56

55:                                               ; preds = %39, %36
  store %struct.file_user_list_entry* null, %struct.file_user_list_entry** %2, align 8
  br label %56

56:                                               ; preds = %55, %49, %10
  %57 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %2, align 8
  ret %struct.file_user_list_entry* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
