; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_make_room_for_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_make_room_for_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"failed to create path '%s'%s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Removing %s to make room for subdirectory\0A\00", align 1
@SCLD_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c": perhaps a D/F conflict?\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"refusing to lose untracked file at '%s'\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i8*)* @make_room_for_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_room_for_path(%struct.merge_options* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %68, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %16 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %13
  %23 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %24 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %22
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 47
  br i1 %47, label %48, label %67

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @strncmp(i8* %49, i8* %50, i64 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %56 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @output(%struct.merge_options* %55, i32 3, i8* %56, i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @unlink(i8* %59)
  %61 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %62 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @unsorted_string_list_delete_item(%struct.TYPE_6__* %64, i32 %65, i32 0)
  br label %71

67:                                               ; preds = %48, %41, %22
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %13

71:                                               ; preds = %54, %13
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @safe_create_leading_directories_const(i8* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @SCLD_EXISTS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 (%struct.merge_options*, i8*, i8*, ...) @err(%struct.merge_options* %81, i8* %82, i8* %83, i8* %84)
  store i32 %85, i32* %3, align 4
  br label %117

86:                                               ; preds = %76
  %87 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 (%struct.merge_options*, i8*, i8*, ...) @err(%struct.merge_options* %87, i8* %88, i8* %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %90, i32* %3, align 4
  br label %117

91:                                               ; preds = %71
  %92 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = call i64 @would_lose_untracked(%struct.merge_options* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %98 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 (%struct.merge_options*, i8*, i8*, ...) @err(%struct.merge_options* %97, i8* %98, i8* %99)
  store i32 %100, i32* %3, align 4
  br label %117

101:                                              ; preds = %91
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @unlink(i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %117

106:                                              ; preds = %101
  %107 = load i64, i64* @errno, align 8
  %108 = load i64, i64* @ENOENT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %117

111:                                              ; preds = %106
  %112 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %116 = call i32 (%struct.merge_options*, i8*, i8*, ...) @err(%struct.merge_options* %112, i8* %113, i8* %114, i8* %115)
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %111, %110, %105, %96, %86, %80
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @output(%struct.merge_options*, i32, i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @unsorted_string_list_delete_item(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @safe_create_leading_directories_const(i8*) #1

declare dso_local i32 @err(%struct.merge_options*, i8*, i8*, ...) #1

declare dso_local i64 @would_lose_untracked(%struct.merge_options*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
