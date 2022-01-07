; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_has_file_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_has_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i8*, i32 }

@CE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*, i32, i32)* @has_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_file_name(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %15 = call i32 @ce_namelen(%struct.cache_entry* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %17 = call i32 @ce_stage(%struct.cache_entry* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %19 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %12, align 8
  br label %21

21:                                               ; preds = %79, %74, %66, %55, %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.index_state*, %struct.index_state** %5, align 8
  %24 = getelementptr inbounds %struct.index_state, %struct.index_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %21
  %28 = load %struct.index_state*, %struct.index_state** %5, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 1
  %30 = load %struct.cache_entry**, %struct.cache_entry*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %30, i64 %33
  %35 = load %struct.cache_entry*, %struct.cache_entry** %34, align 8
  store %struct.cache_entry* %35, %struct.cache_entry** %13, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %38 = call i32 @ce_namelen(%struct.cache_entry* %37)
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %84

41:                                               ; preds = %27
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @memcmp(i8* %42, i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %84

50:                                               ; preds = %41
  %51 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %52 = call i32 @ce_stage(%struct.cache_entry* %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %21

56:                                               ; preds = %50
  %57 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 47
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %21

67:                                               ; preds = %56
  %68 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %69 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CE_REMOVE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %21

75:                                               ; preds = %67
  store i32 -1, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %84

79:                                               ; preds = %75
  %80 = load %struct.index_state*, %struct.index_state** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %7, align 4
  %83 = call i32 @remove_index_entry_at(%struct.index_state* %80, i32 %82)
  br label %21

84:                                               ; preds = %78, %49, %40, %21
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
