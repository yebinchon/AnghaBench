; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-prio-queue.c_cmd__prio_queue.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-prio-queue.c_cmd__prio_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prio_queue = type { i32*, i32 }

@intcmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"peek and get results do not match\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__prio_queue(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.prio_queue, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %5, i32 0, i32 0
  %12 = load i32, i32* @intcmp, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %5, i32 0, i32 1
  store i32 0, i32* %15, align 8
  br label %16

16:                                               ; preds = %74, %2
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %75

21:                                               ; preds = %16
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = call i8* @prio_queue_peek(%struct.prio_queue* %5)
  store i8* %27, i8** %6, align 8
  %28 = call i8* @prio_queue_get(%struct.prio_queue* %5)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @show(i8* %35)
  br label %74

37:                                               ; preds = %21
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %53, %42
  %44 = call i8* @prio_queue_peek(%struct.prio_queue* %5)
  store i8* %44, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = call i8* @prio_queue_get(%struct.prio_queue* %5)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @show(i8* %54)
  br label %43

56:                                               ; preds = %43
  br label %73

57:                                               ; preds = %37
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.prio_queue, %struct.prio_queue* %5, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %72

64:                                               ; preds = %57
  %65 = call i32* @xmalloc(i32 4)
  store i32* %65, i32** %10, align 8
  %66 = load i8**, i8*** %4, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @atoi(i8* %67)
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @prio_queue_put(%struct.prio_queue* %5, i32* %70)
  br label %72

72:                                               ; preds = %64, %62
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73, %34
  br label %16

75:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @prio_queue_peek(%struct.prio_queue*) #1

declare dso_local i8* @prio_queue_get(%struct.prio_queue*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @show(i8*) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @prio_queue_put(%struct.prio_queue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
