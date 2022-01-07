; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_close.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Closing con = %p.\0A\00", align 1
@CT_OUTPUT = common dso_local global i64 0, align 8
@CT_ROOT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"con = %p is of type %d, not closing anything.\0A\00", align 1
@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"con = %p is a workspace, closing all children instead.\0A\00", align 1
@focused = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"killing child = %p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_close(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 (i8*, %struct.TYPE_8__*, ...) @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CT_OUTPUT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CT_ROOT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, %struct.TYPE_8__*, ...) @DLOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %25, i64 %28)
  br label %60

30:                                               ; preds = %18
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CT_WORKSPACE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 (i8*, %struct.TYPE_8__*, ...) @DLOG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = call %struct.TYPE_8__* @TAILQ_FIRST(i32* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %5, align 8
  br label %42

42:                                               ; preds = %45, %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* @focused, align 4
  %48 = call %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__* %46, i32 %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %6, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = call i32 (i8*, %struct.TYPE_8__*, ...) @DLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @tree_close_internal(%struct.TYPE_8__* %51, i32 %52, i32 0)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %5, align 8
  br label %42

55:                                               ; preds = %42
  br label %60

56:                                               ; preds = %30
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @tree_close_internal(%struct.TYPE_8__* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %55, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DLOG(i8*, %struct.TYPE_8__*, ...) #1

declare dso_local %struct.TYPE_8__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_8__* @TAILQ_NEXT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @tree_close_internal(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
