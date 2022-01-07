; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_check_child_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_transaction_check_child_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@WNOHANG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"waitpid returns %d. %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"waitpid returns %d.\0A\00", align 1
@results_client_pid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"copyexec-client terminated with exit code %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"copyexec-client was killed by signal %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"copyexec-client terminated (waitpid status: 0x%x)\0A\00", align 1
@child_running_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"transaction_check_child_status: call transaction_finish_execution\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"transaction_check_child_status: %d transaction(s) finished.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transaction_check_child_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %0, %15, %52, %75
  %7 = load i32, i32* @WNOHANG, align 4
  %8 = call i32 @waitpid(i32 -1, i32* %3, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EINTR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %6

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %76

19:                                               ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %84

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @results_client_pid, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @WIFEXITED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @WEXITSTATUS(i32 %37)
  %39 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %52

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @WIFSIGNALED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @WTERMSIG(i32 %45)
  %47 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %36
  br label %6

53:                                               ; preds = %26
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @child_running_list, i32 0, i32 1), align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %5, align 8
  br label %55

55:                                               ; preds = %71, %53
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, @child_running_list
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = call i32 @transaction_finish_execution(%struct.TYPE_4__* %66, i32 1)
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %5, align 8
  br label %55

75:                                               ; preds = %64, %55
  br label %6

76:                                               ; preds = %16
  %77 = load i32, i32* %2, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %2, align 4
  %81 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %2, align 4
  store i32 %83, i32* %1, align 4
  br label %84

84:                                               ; preds = %82, %22
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @transaction_finish_execution(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
