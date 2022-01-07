; ModuleID = '/home/carl/AnghaBench/lede/scripts/extr_mkhash.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/extr_mkhash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_type = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hash_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %22 [
    i32 110, label %21
  ]

21:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  br label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @usage(i8* %23)
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %21
  br label %14

26:                                               ; preds = %14
  %27 = load i64, i64* @optind, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @usage(i8* %38)
  store i32 %39, i32* %3, align 4
  br label %77

40:                                               ; preds = %26
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.hash_type* @get_hash_type(i8* %43)
  store %struct.hash_type* %44, %struct.hash_type** %6, align 8
  %45 = load %struct.hash_type*, %struct.hash_type** %6, align 8
  %46 = icmp ne %struct.hash_type* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @usage(i8* %48)
  store i32 %49, i32* %3, align 4
  br label %77

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.hash_type*, %struct.hash_type** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @hash_file(%struct.hash_type* %54, i8* null, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %77

57:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.hash_type*, %struct.hash_type** %6, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 1, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @hash_file(%struct.hash_type* %64, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %58

76:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %53, %47, %37, %22
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local %struct.hash_type* @get_hash_type(i8*) #1

declare dso_local i32 @hash_file(%struct.hash_type*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
