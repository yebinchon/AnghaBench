; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_die_in_unpopulated_submodule.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_die_in_unpopulated_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"in unpopulated submodule '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die_in_unpopulated_submodule(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %69

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %66, %12
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.index_state*, %struct.index_state** %3, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %15
  %22 = load %struct.index_state*, %struct.index_state** %3, align 8
  %23 = getelementptr inbounds %struct.index_state, %struct.index_state* %22, i32 0, i32 1
  %24 = load %struct.cache_entry**, %struct.cache_entry*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %24, i64 %26
  %28 = load %struct.cache_entry*, %struct.cache_entry** %27, align 8
  store %struct.cache_entry* %28, %struct.cache_entry** %7, align 8
  %29 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %30 = call i32 @ce_namelen(%struct.cache_entry* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @S_ISGITLINK(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  br label %66

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %66

42:                                               ; preds = %37
  %43 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @strncmp(i32 %45, i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %66

51:                                               ; preds = %42
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 47
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %66

60:                                               ; preds = %51
  %61 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %63 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @die(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %59, %50, %41, %36
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %15

69:                                               ; preds = %11, %15
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
