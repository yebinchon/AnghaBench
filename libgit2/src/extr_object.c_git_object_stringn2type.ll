; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_stringn2type.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_stringn2type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@GIT_OBJECT_INVALID = common dso_local global i32 0, align 4
@git_objects_table = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_object_stringn2type(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %9, %2
  %17 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @git_objects_table, align 8
  %22 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @git_objects_table, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @git_objects_table, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @git__prefixncmp(i8* %33, i64 %34, i64* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %32, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %19

49:                                               ; preds = %19
  %50 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %42, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @git__prefixncmp(i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
