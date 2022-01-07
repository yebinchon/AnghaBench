; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_make_traverse_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_make_traverse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { i8*, i64, %struct.traverse_info*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"too small buffer passed to make_traverse_path\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"traverse_info pathlen does not match strings\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"traverse_info ran out of list items\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @make_traverse_path(i8* %0, i64 %1, %struct.traverse_info* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.traverse_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.traverse_info* %2, %struct.traverse_info** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %13 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call i64 @st_add(i32 %14, i64 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %54, %22
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %11, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %64

45:                                               ; preds = %32
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %11, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 47, i8* %49, align 1
  %50 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %51 = icmp ne %struct.traverse_info* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  %55 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %56 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %9, align 8
  %58 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %59 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load %struct.traverse_info*, %struct.traverse_info** %8, align 8
  %62 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %61, i32 0, i32 2
  %63 = load %struct.traverse_info*, %struct.traverse_info** %62, align 8
  store %struct.traverse_info* %63, %struct.traverse_info** %8, align 8
  br label %26

64:                                               ; preds = %44
  %65 = load i8*, i8** %6, align 8
  ret i8* %65
}

declare dso_local i64 @st_add(i32, i64) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
