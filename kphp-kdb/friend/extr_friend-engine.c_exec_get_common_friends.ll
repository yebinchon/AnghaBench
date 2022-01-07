; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_common_friends.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_common_friends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"common_friends%d,%d%n\00", align 1
@userlist = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%%common_friends%d,%d%n\00", align 1
@resultlist = common dso_local global i32 0, align 4
@MAX_USERLIST_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_get_common_friends(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.connection*, %struct.connection** %4, align 8
  %14 = call i32 @free_tmp_buffers(%struct.connection* %13)
  store i32 0, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 37
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32*, i32** @userlist, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %24, i32* %9)
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %3
  %31 = load i8*, i8** %5, align 8
  %32 = load i32*, i32** @userlist, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32* %33, i32* %9)
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %59

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** @userlist, align 8
  %47 = load i32, i32* @resultlist, align 4
  %48 = load i32, i32* @MAX_USERLIST_NUM, align 4
  %49 = call i32 @get_common_friends(i32 %45, i32 1, i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.connection*, %struct.connection** %4, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 0, %54
  %56 = load i32, i32* @resultlist, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @return_one_key_list(%struct.connection* %50, i8* %51, i32 %52, i32 %53, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %43, %44, %36, %30
  ret void
}

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @get_common_friends(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
