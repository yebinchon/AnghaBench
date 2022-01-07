; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_exec_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_exec_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"delete \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"delmsg%d,%d \00", align 1
@delmsg_queries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"delete_msg(%d,%d)\0A\00", align 1
@LE_DELMSG_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"undelmsg%d,%d \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"undelete_msg(%d,%d)\0A\00", align 1
@LE_UNDELMSG_MAGIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"wipemsg%d,%d \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"wipe_msg(%d,%d)\0A\00", align 1
@LE_DELOLDMSG_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %15, %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %6, align 8
  br label %10

18:                                               ; preds = %10
  %19 = load i64, i64* @verbosity, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %119 [
    i32 100, label %29
    i32 117, label %59
    i32 119, label %89
  ]

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9)
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i32, i32* @delmsg_queries, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @delmsg_queries, align 4
  %42 = load i64, i64* @verbosity, align 8
  %43 = icmp sge i64 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @LE_DELMSG_MAGIC, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @alloc_log_event(i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dyn_user_header(i32 %54, i32 1)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @dyn_delete_msg(i32 %55, i32 %56)
  store i32 1, i32* %4, align 4
  br label %120

58:                                               ; preds = %36, %33, %29
  br label %119

59:                                               ; preds = %25
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @sscanf(i8* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %8, i32* %9)
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load i32, i32* @delmsg_queries, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @delmsg_queries, align 4
  %72 = load i64, i64* @verbosity, align 8
  %73 = icmp sge i64 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* @LE_UNDELMSG_MAGIC, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @alloc_log_event(i32 %80, i32 %81, i32 %82, i32 0)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dyn_user_header(i32 %84, i32 1)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @dyn_undelete_msg(i32 %85, i32 %86)
  store i32 1, i32* %4, align 4
  br label %120

88:                                               ; preds = %66, %63, %59
  br label %119

89:                                               ; preds = %25
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @sscanf(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32* %9)
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %118

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = load i32, i32* @delmsg_queries, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @delmsg_queries, align 4
  %102 = load i64, i64* @verbosity, align 8
  %103 = icmp sge i64 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* @LE_DELOLDMSG_MAGIC, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @alloc_log_event(i32 %110, i32 %111, i32 %112, i32 0)
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @dyn_user_header(i32 %114, i32 1)
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @dyn_delall_msg(i32 %115, i32 %116)
  store i32 1, i32* %4, align 4
  br label %120

118:                                              ; preds = %96, %93, %89
  br label %119

119:                                              ; preds = %118, %25, %88, %58
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %109, %79, %49
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @alloc_log_event(i32, i32, i32, i32) #1

declare dso_local i32 @dyn_delete_msg(i32, i32) #1

declare dso_local i32 @dyn_user_header(i32, i32) #1

declare dso_local i32 @dyn_undelete_msg(i32, i32) #1

declare dso_local i32 @dyn_delall_msg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
