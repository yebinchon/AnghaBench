; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_count_refspec_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_count_refspec_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i8*, %struct.ref* }

@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_refspec_match(i8* %0, %struct.ref* %1, %struct.ref** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.ref*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store %struct.ref** %2, %struct.ref*** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %8, align 4
  store %struct.ref* null, %struct.ref** %9, align 8
  store %struct.ref* null, %struct.ref** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %57, %3
  %18 = load %struct.ref*, %struct.ref** %6, align 8
  %19 = icmp ne %struct.ref* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = load %struct.ref*, %struct.ref** %6, align 8
  %22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @refname_match(i8* %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %57

31:                                               ; preds = %20
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sub nsw i32 %37, 5
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @starts_with(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @starts_with(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %49, %struct.ref** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %56

52:                                               ; preds = %44, %40, %35, %31
  %53 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %53, %struct.ref** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %30
  %58 = load %struct.ref*, %struct.ref** %6, align 8
  %59 = getelementptr inbounds %struct.ref, %struct.ref* %58, i32 0, i32 1
  %60 = load %struct.ref*, %struct.ref** %59, align 8
  store %struct.ref* %60, %struct.ref** %6, align 8
  br label %17

61:                                               ; preds = %17
  %62 = load %struct.ref*, %struct.ref** %10, align 8
  %63 = icmp ne %struct.ref* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = load %struct.ref**, %struct.ref*** %7, align 8
  %66 = icmp ne %struct.ref** %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.ref*, %struct.ref** %9, align 8
  %69 = load %struct.ref**, %struct.ref*** %7, align 8
  store %struct.ref* %68, %struct.ref** %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %80

72:                                               ; preds = %61
  %73 = load %struct.ref**, %struct.ref*** %7, align 8
  %74 = icmp ne %struct.ref** %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.ref*, %struct.ref** %10, align 8
  %77 = load %struct.ref**, %struct.ref*** %7, align 8
  store %struct.ref* %76, %struct.ref** %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @refname_match(i8*, i8*) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
