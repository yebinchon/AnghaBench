; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_adjust_dirname_case.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_adjust_dirname_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.dir_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_dirname_case(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dir_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.index_state*, %struct.index_state** %3, align 8
  %11 = call i32 @lazy_init_name_hash(%struct.index_state* %10)
  br label %12

12:                                               ; preds = %72, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 47
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %17

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load %struct.index_state*, %struct.index_state** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.dir_entry* @find_dir_entry(%struct.index_state* %38, i8* %39, i32 %45)
  store %struct.dir_entry* %46, %struct.dir_entry** %7, align 8
  %47 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %48 = icmp ne %struct.dir_entry* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %37
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %52 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %53, %58
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i8* %50, i64 %59, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8* %68, i8** %5, align 8
  br label %69

69:                                               ; preds = %49, %37
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %69, %32
  br label %12

73:                                               ; preds = %12
  ret void
}

declare dso_local i32 @lazy_init_name_hash(%struct.index_state*) #1

declare dso_local %struct.dir_entry* @find_dir_entry(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
