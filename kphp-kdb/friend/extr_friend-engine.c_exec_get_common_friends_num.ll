; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_common_friends_num.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_exec_get_common_friends_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"common_friends_num%d:%n\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%%common_friends_num%d:%n\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@userlist = common dso_local global i32* null, align 8
@MAX_USERLIST_NUM = common dso_local global i32 0, align 4
@resultlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_get_common_friends_num(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 37
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %9)
  %23 = icmp sge i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24, %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32* %9)
  %30 = icmp sge i32 %29, 1
  br i1 %30, label %31, label %117

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %117

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %60

46:                                               ; preds = %34
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @sscanf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %13, i32* %9)
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %117

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %117

56:                                               ; preds = %51
  %57 = load %struct.connection*, %struct.connection** %4, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @get_saved_userlist(%struct.connection* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %98

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60, %92
  %62 = load i8*, i8** %5, align 8
  %63 = load i32*, i32** @userlist, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = call i32 @sscanf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %67, i32* %9)
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %117

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  br label %97

82:                                               ; preds = %71
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @MAX_USERLIST_NUM, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 44
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %82
  br label %117

92:                                               ; preds = %86
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %6, align 4
  br label %61

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %56
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @MAX_USERLIST_NUM, align 4
  %101 = icmp sle i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** @userlist, align 8
  %107 = load i32, i32* @resultlist, align 4
  %108 = call i32 @get_common_friends_num(i32 %104, i32 %105, i32* %106, i32 %107)
  %109 = load %struct.connection*, %struct.connection** %4, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 0, %112
  %114 = load i32, i32* @resultlist, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @return_one_key_list(%struct.connection* %109, i8* %110, i32 %111, i32 1, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %50, %55, %70, %91, %98, %31, %27
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @get_saved_userlist(%struct.connection*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_common_friends_num(i32, i32, i32*, i32) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
