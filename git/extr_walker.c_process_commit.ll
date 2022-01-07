; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_process_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_process_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.walker = type { i32 }
%struct.commit = type { i64, %struct.commit_list*, %struct.TYPE_8__ }
%struct.commit_list = type { %struct.TYPE_9__*, %struct.commit_list* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@complete = common dso_local global %struct.TYPE_10__* null, align 8
@COMPLETE = common dso_local global i32 0, align 4
@current_commit_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"walk %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, %struct.commit*)* @process_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_commit(%struct.walker* %0, %struct.commit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.walker*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_list*, align 8
  store %struct.walker* %0, %struct.walker** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  %7 = load %struct.commit*, %struct.commit** %5, align 8
  %8 = call i64 @parse_commit(%struct.commit* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %27, %11
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @complete, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @complete, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.commit*, %struct.commit** %5, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br label %25

25:                                               ; preds = %15, %12
  %26 = phi i1 [ false, %12 ], [ %24, %15 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* @COMPLETE, align 4
  %29 = call i32 @pop_most_recent_commit(%struct.TYPE_10__** @complete, i32 %28)
  br label %12

30:                                               ; preds = %25
  %31 = load %struct.commit*, %struct.commit** %5, align 8
  %32 = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @COMPLETE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %79

39:                                               ; preds = %30
  %40 = load %struct.commit*, %struct.commit** %5, align 8
  %41 = getelementptr inbounds %struct.commit, %struct.commit* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = call i32 @oidcpy(i32* @current_commit_oid, i32* %42)
  %44 = load %struct.walker*, %struct.walker** %4, align 8
  %45 = load %struct.commit*, %struct.commit** %5, align 8
  %46 = getelementptr inbounds %struct.commit, %struct.commit* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = call i32 @oid_to_hex(i32* %47)
  %49 = call i32 @walker_say(%struct.walker* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.walker*, %struct.walker** %4, align 8
  %51 = load %struct.commit*, %struct.commit** %5, align 8
  %52 = call %struct.TYPE_11__* @get_commit_tree(%struct.commit* %51)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = call i64 @process(%struct.walker* %50, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %79

57:                                               ; preds = %39
  %58 = load %struct.commit*, %struct.commit** %5, align 8
  %59 = getelementptr inbounds %struct.commit, %struct.commit* %58, i32 0, i32 1
  %60 = load %struct.commit_list*, %struct.commit_list** %59, align 8
  store %struct.commit_list* %60, %struct.commit_list** %6, align 8
  br label %61

61:                                               ; preds = %74, %57
  %62 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %63 = icmp ne %struct.commit_list* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.walker*, %struct.walker** %4, align 8
  %66 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %67 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = call i64 @process(%struct.walker* %65, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %79

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %76 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %75, i32 0, i32 1
  %77 = load %struct.commit_list*, %struct.commit_list** %76, align 8
  store %struct.commit_list* %77, %struct.commit_list** %6, align 8
  br label %61

78:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %72, %56, %38, %10
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i32 @pop_most_recent_commit(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @walker_say(%struct.walker*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @process(%struct.walker*, i32*) #1

declare dso_local %struct.TYPE_11__* @get_commit_tree(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
