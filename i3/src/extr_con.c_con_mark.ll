; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_mark.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [32 x i8] c"Setting mark \22%s\22 on con = %p.\0A\00", align 1
@MM_REPLACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Removing all existing marks on con = %p.\0A\00", align 1
@marks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mark\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_mark(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %13, %struct.TYPE_10__* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @con_unmark(%struct.TYPE_10__* null, i8* %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MM_REPLACE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %22)
  br label %24

24:                                               ; preds = %30, %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = call i32 @TAILQ_EMPTY(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = call %struct.TYPE_9__* @TAILQ_FIRST(i32* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %7, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @con_unmark(%struct.TYPE_10__* %34, i8* %37)
  br label %24

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %3
  %41 = call %struct.TYPE_9__* @scalloc(i32 1, i32 8)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %8, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @sstrdup(i8* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = load i32, i32* @marks, align 4
  %50 = call i32 @TAILQ_INSERT_TAIL(i32* %47, %struct.TYPE_9__* %48, i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = call i32 @ipc_send_window_event(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @con_unmark(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.TYPE_9__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_9__* @scalloc(i32, i32) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ipc_send_window_event(i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
