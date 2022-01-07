; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_do_compare_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_do_compare_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8* }
%struct.traverse_info = type { i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.traverse_info*, i8*, i64, i32)* @do_compare_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_compare_entry(%struct.cache_entry* %0, %struct.traverse_info* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.traverse_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %7, align 8
  store %struct.traverse_info* %1, %struct.traverse_info** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %17 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %22 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @do_compare_entry_piecewise(%struct.cache_entry* %21, %struct.traverse_info* %22, i8* %23, i64 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %69

27:                                               ; preds = %5
  %28 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %32 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %35 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strncmp(i8* %30, i32 %33, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %6, align 4
  br label %69

42:                                               ; preds = %27
  %43 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %44 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %47 = call i32 @ce_namelen(%struct.cache_entry* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %69

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @S_IFREG, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @df_name_compare(i8* %62, i32 %63, i32 %64, i8* %65, i64 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %52, %51, %40, %20
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @do_compare_entry_piecewise(%struct.cache_entry*, %struct.traverse_info*, i8*, i64, i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @df_name_compare(i8*, i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
