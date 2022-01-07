; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_initinputs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_initinputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [10 x i8] c"LCCINPUTS\00", align 1
@inputs = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@lccinputs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@ilist = common dso_local global i32 0, align 4
@com = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"win32\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@llist = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initinputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initinputs() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load i8*, i8** @inputs, align 8
  store i8* %7, i8** %1, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i8*, i8** %1, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %13
  %17 = load i8*, i8** %1, align 8
  %18 = call %struct.TYPE_4__* @path2list(i8* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** @lccinputs, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lccinputs, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %2, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %64

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %59, %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @ilist, align 4
  %37 = call i32 @append(i32 %35, i32 %36)
  store i32 %37, i32* @ilist, align 4
  %38 = load i32*, i32** @com, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @strstr(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %31
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = load i32*, i32** @llist, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @append(i32 %47, i32 %50)
  %52 = load i32*, i32** @llist, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %31
  br label %58

55:                                               ; preds = %22
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %57, align 8
  br label %58

58:                                               ; preds = %55, %54
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lccinputs, align 8
  %62 = icmp ne %struct.TYPE_4__* %60, %61
  br i1 %62, label %22, label %63

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %16
  br label %65

65:                                               ; preds = %64, %13
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.TYPE_4__* @path2list(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @append(i32, i32) #1

declare dso_local i32 @concat(i8*, i8*) #1

declare dso_local i32* @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
