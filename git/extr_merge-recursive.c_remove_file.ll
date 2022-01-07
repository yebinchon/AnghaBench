; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_remove_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.cache_entry = type { i32 }

@ignore_case = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i32, i8*, i32)* @remove_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_file(%struct.merge_options* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.merge_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_entry*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %14 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %4
  %23 = phi i1 [ true, %4 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %26 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi i1 [ false, %22 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %42 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @remove_file_from_index(i32 %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %90

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %51
  %55 = load i64, i64* @ignore_case, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load %struct.merge_options*, %struct.merge_options** %6, align 8
  %59 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = load i64, i64* @ignore_case, align 8
  %67 = call %struct.cache_entry* @index_file_exists(i32 %62, i8* %63, i32 %65, i64 %66)
  store %struct.cache_entry* %67, %struct.cache_entry** %12, align 8
  %68 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %69 = icmp ne %struct.cache_entry* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %57
  %71 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %72 = call i64 @ce_stage(%struct.cache_entry* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %77 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i8* %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %90

82:                                               ; preds = %74, %70, %57
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @remove_path(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 -1, i32* %5, align 4
  br label %90

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %51
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %87, %81, %49
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @remove_file_from_index(i32, i8*) #1

declare dso_local %struct.cache_entry* @index_file_exists(i32, i8*, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @remove_path(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
