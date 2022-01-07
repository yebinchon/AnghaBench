; ModuleID = '/home/carl/AnghaBench/git/extr_serve.c_has_capability.c'
source_filename = "/home/carl/AnghaBench/git/extr_serve.c_has_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @has_capability(%struct.argv_array* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.argv_array*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.argv_array* %0, %struct.argv_array** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %52, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.argv_array*, %struct.argv_array** %5, align 8
  %13 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %10
  %17 = load %struct.argv_array*, %struct.argv_array** %5, align 8
  %18 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @skip_prefix(i32 %23, i8* %24, i8** %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %16
  %28 = load i8*, i8** %9, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 61
  br i1 %35, label %36, label %51

36:                                               ; preds = %31, %27
  %37 = load i8**, i8*** %7, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i8*, i8** %9, align 8
  %49 = load i8**, i8*** %7, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %47, %36
  store i32 1, i32* %4, align 4
  br label %56

51:                                               ; preds = %31, %16
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %10

55:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
