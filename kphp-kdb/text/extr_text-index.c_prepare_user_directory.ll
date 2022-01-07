; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_prepare_user_directory.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_prepare_user_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.file_user_list_entry = type { i64 }

@sublists_num = common dso_local global i32 0, align 4
@history_enabled = common dso_local global i64 0, align 8
@search_enabled = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@user_dir_size = common dso_local global i32 0, align 4
@write_pos = common dso_local global i8* null, align 8
@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UserDirectoryData = common dso_local global i64 0, align 8
@UserDirectory = common dso_local global %struct.file_user_list_entry** null, align 8
@MAX_USERS = common dso_local global i32 0, align 4
@User = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_user_directory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @sublists_num, align 4
  %5 = load i64, i64* @history_enabled, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @search_enabled, align 4
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i32 [ 3, %7 ], [ %9, %8 ]
  %12 = add nsw i32 %4, %11
  %13 = mul nsw i32 4, %12
  %14 = sext i32 %13 to i64
  %15 = add i64 8, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @tot_users, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* @user_dir_size, align 4
  %21 = load i8*, i8** @write_pos, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 2), align 8
  %22 = load i32, i32* @tot_users, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 8
  %23 = load i8*, i8** @write_pos, align 8
  %24 = load i32, i32* @user_dir_size, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %23, i64 %25
  %27 = getelementptr i8, i8* %26, i64 4
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 1), align 8
  %28 = load i32, i32* @user_dir_size, align 4
  %29 = call i64 @zmalloc0(i32 %28)
  store i64 %29, i64* @UserDirectoryData, align 8
  %30 = load i32, i32* @tot_users, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.file_user_list_entry** @zmalloc(i32 %34)
  store %struct.file_user_list_entry** %35, %struct.file_user_list_entry*** @UserDirectory, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %52, %10
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @tot_users, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load i64, i64* @UserDirectoryData, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = inttoptr i64 %46 to %struct.file_user_list_entry*
  %48 = load %struct.file_user_list_entry**, %struct.file_user_list_entry*** @UserDirectory, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.file_user_list_entry*, %struct.file_user_list_entry** %48, i64 %50
  store %struct.file_user_list_entry* %47, %struct.file_user_list_entry** %51, align 8
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %36

55:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %78, %55
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @MAX_USERS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load i64*, i64** @User, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* %1, align 4
  %69 = call i64 @unconv_uid(i32 %68)
  %70 = load %struct.file_user_list_entry**, %struct.file_user_list_entry*** @UserDirectory, align 8
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.file_user_list_entry*, %struct.file_user_list_entry** %70, i64 %73
  %75 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %74, align 8
  %76 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %75, i32 0, i32 0
  store i64 %69, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %56

81:                                               ; preds = %56
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @tot_users, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.file_user_list_entry**, %struct.file_user_list_entry*** @UserDirectory, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.file_user_list_entry*, %struct.file_user_list_entry** %87, i64 %89
  %91 = load %struct.file_user_list_entry*, %struct.file_user_list_entry** %90, align 8
  %92 = getelementptr inbounds %struct.file_user_list_entry, %struct.file_user_list_entry* %91, i32 0, i32 0
  store i64 9223372036854775807, i64* %92, align 8
  %93 = load i64, i64* @UserDirectoryData, align 8
  %94 = load i32, i32* @user_dir_size, align 4
  %95 = call i32 @writeout(i64 %93, i32 %94)
  %96 = call i32 (...) @initcrc()
  %97 = call i32 (...) @writecrc()
  ret void
}

declare dso_local i64 @zmalloc0(i32) #1

declare dso_local %struct.file_user_list_entry** @zmalloc(i32) #1

declare dso_local i64 @unconv_uid(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @writeout(i64, i32) #1

declare dso_local i32 @initcrc(...) #1

declare dso_local i32 @writecrc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
