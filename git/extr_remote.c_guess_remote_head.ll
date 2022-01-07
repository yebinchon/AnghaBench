; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_guess_remote_head.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_guess_remote_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i8*, %struct.ref*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @guess_remote_head(%struct.ref* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.ref**, align 8
  store %struct.ref* %0, %struct.ref** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ref* null, %struct.ref** %9, align 8
  store %struct.ref** %9, %struct.ref*** %10, align 8
  %11 = load %struct.ref*, %struct.ref** %5, align 8
  %12 = icmp ne %struct.ref* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.ref* null, %struct.ref** %4, align 8
  br label %85

14:                                               ; preds = %3
  %15 = load %struct.ref*, %struct.ref** %5, align 8
  %16 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.ref*, %struct.ref** %6, align 8
  %21 = load %struct.ref*, %struct.ref** %5, align 8
  %22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct.ref* @find_ref_by_name(%struct.ref* %20, i8* %23)
  %25 = call %struct.ref* @copy_ref(%struct.ref* %24)
  store %struct.ref* %25, %struct.ref** %4, align 8
  br label %85

26:                                               ; preds = %14
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  %30 = load %struct.ref*, %struct.ref** %6, align 8
  %31 = call %struct.ref* @find_ref_by_name(%struct.ref* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.ref* %31, %struct.ref** %8, align 8
  %32 = load %struct.ref*, %struct.ref** %8, align 8
  %33 = icmp ne %struct.ref* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.ref*, %struct.ref** %8, align 8
  %36 = getelementptr inbounds %struct.ref, %struct.ref* %35, i32 0, i32 2
  %37 = load %struct.ref*, %struct.ref** %5, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 2
  %39 = call i64 @oideq(i32* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.ref*, %struct.ref** %8, align 8
  %43 = call %struct.ref* @copy_ref(%struct.ref* %42)
  store %struct.ref* %43, %struct.ref** %4, align 8
  br label %85

44:                                               ; preds = %34, %29
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %46, %struct.ref** %8, align 8
  br label %47

47:                                               ; preds = %79, %45
  %48 = load %struct.ref*, %struct.ref** %8, align 8
  %49 = icmp ne %struct.ref* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load %struct.ref*, %struct.ref** %8, align 8
  %52 = load %struct.ref*, %struct.ref** %5, align 8
  %53 = icmp ne %struct.ref* %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.ref*, %struct.ref** %8, align 8
  %56 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @starts_with(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.ref*, %struct.ref** %8, align 8
  %62 = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 2
  %63 = load %struct.ref*, %struct.ref** %5, align 8
  %64 = getelementptr inbounds %struct.ref, %struct.ref* %63, i32 0, i32 2
  %65 = call i64 @oideq(i32* %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.ref*, %struct.ref** %8, align 8
  %69 = call %struct.ref* @copy_ref(%struct.ref* %68)
  %70 = load %struct.ref**, %struct.ref*** %10, align 8
  store %struct.ref* %69, %struct.ref** %70, align 8
  %71 = load %struct.ref**, %struct.ref*** %10, align 8
  %72 = load %struct.ref*, %struct.ref** %71, align 8
  %73 = getelementptr inbounds %struct.ref, %struct.ref* %72, i32 0, i32 1
  store %struct.ref** %73, %struct.ref*** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %83

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %60, %54, %50
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.ref*, %struct.ref** %8, align 8
  %81 = getelementptr inbounds %struct.ref, %struct.ref* %80, i32 0, i32 1
  %82 = load %struct.ref*, %struct.ref** %81, align 8
  store %struct.ref* %82, %struct.ref** %8, align 8
  br label %47

83:                                               ; preds = %76, %47
  %84 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %84, %struct.ref** %4, align 8
  br label %85

85:                                               ; preds = %83, %41, %19, %13
  %86 = load %struct.ref*, %struct.ref** %4, align 8
  ret %struct.ref* %86
}

declare dso_local %struct.ref* @copy_ref(%struct.ref*) #1

declare dso_local %struct.ref* @find_ref_by_name(%struct.ref*, i8*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @starts_with(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
