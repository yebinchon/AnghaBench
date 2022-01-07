; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_friends.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_friends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d_%d#%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d#%d\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"prepare_friends(%d,%d,%d) = %d\0A\00", align 1
@R = common dso_local global i64 0, align 8
@R_end = common dso_local global i64 0, align 8
@stats_buff = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_get_friends(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, i32* %11)
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %11)
  %25 = icmp sge i32 %24, 1
  br i1 %25, label %26, label %70

26:                                               ; preds = %19, %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 7
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @prepare_friends(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @verbosity, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i32, i32* %12, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i64, i64* @R, align 8
  %56 = load i64, i64* @R_end, align 8
  %57 = load i64, i64* @R, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i32 @return_one_key_list(%struct.connection* %51, i8* %52, i32 %53, i32 %54, i32 0, i64 %55, i64 %58)
  br label %68

60:                                               ; preds = %47
  %61 = load %struct.connection*, %struct.connection** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* @stats_buff, align 4
  %64 = load i32, i32* @stats_buff, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @sprintf(i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = call i32 @return_one_key(%struct.connection* %61, i8* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %60, %50
  br label %71

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69, %19
  br label %71

71:                                               ; preds = %70, %68
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @prepare_friends(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
