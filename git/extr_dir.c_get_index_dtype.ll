; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_get_index_dtype.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_get_index_dtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i8*, i32 }

@DT_UNKNOWN = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i32)* @get_index_dtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_index_dtype(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.index_state*, %struct.index_state** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.cache_entry* @index_file_exists(%struct.index_state* %10, i8* %11, i32 %12, i32 0)
  store %struct.cache_entry* %13, %struct.cache_entry** %9, align 8
  %14 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %15 = icmp ne %struct.cache_entry* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %18 = call i32 @ce_uptodate(%struct.cache_entry* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %21, i32* %4, align 4
  br label %99

22:                                               ; preds = %16
  %23 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @S_ISGITLINK(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @DT_DIR, align 4
  store i32 %29, i32* %4, align 4
  br label %99

30:                                               ; preds = %22
  %31 = load i32, i32* @DT_REG, align 4
  store i32 %31, i32* %4, align 4
  br label %99

32:                                               ; preds = %3
  %33 = load %struct.index_state*, %struct.index_state** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @index_name_pos(%struct.index_state* %33, i8* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %40, i32* %4, align 4
  br label %99

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 0, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %89, %41
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.index_state*, %struct.index_state** %5, align 8
  %48 = getelementptr inbounds %struct.index_state, %struct.index_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %45
  %52 = load %struct.index_state*, %struct.index_state** %5, align 8
  %53 = getelementptr inbounds %struct.index_state, %struct.index_state* %52, i32 0, i32 1
  %54 = load %struct.cache_entry**, %struct.cache_entry*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %54, i64 %57
  %59 = load %struct.cache_entry*, %struct.cache_entry** %58, align 8
  store %struct.cache_entry* %59, %struct.cache_entry** %9, align 8
  %60 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %61 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @strncmp(i8* %62, i8* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %97

68:                                               ; preds = %51
  %69 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %70 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sgt i32 %76, 47
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %97

79:                                               ; preds = %68
  %80 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %81 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp slt i32 %87, 47
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %45

90:                                               ; preds = %79
  %91 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %92 = call i32 @ce_uptodate(%struct.cache_entry* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @DT_DIR, align 4
  store i32 %96, i32* %4, align 4
  br label %99

97:                                               ; preds = %94, %78, %67, %45
  %98 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %95, %39, %30, %28, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.cache_entry* @index_file_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @ce_uptodate(%struct.cache_entry*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
