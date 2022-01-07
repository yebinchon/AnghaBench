; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcasfw.c_parse_opt_board.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcasfw.c_parse_opt_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"parsing board option: -%c %s\00", align 1
@board = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"only one board option allowed\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid/unknown board specified: %s\00", align 1
@header = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"internal error, unknown header type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_board(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %6, i8* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @board, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @ERR_FATAL, align 4
  store i32 %13, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load i8, i8* %4, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @required_arg(i8 signext %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ERR_FATAL, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.TYPE_9__* @find_board(i8* %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** @board, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @board, align 8
  %25 = icmp eq %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @ERR_FATAL, align 4
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %21
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @board, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %42 [
    i32 129, label %34
    i32 128, label %38
  ]

34:                                               ; preds = %30
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 1, i32 0), align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @board, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 1, i32 1), align 4
  br label %45

38:                                               ; preds = %30
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 0, i32 0), align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @board, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 0, i32 1), align 4
  br label %45

42:                                               ; preds = %30
  %43 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @ERR_FATAL, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %38, %34
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %26, %19, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @DBG(i32, i8*, i8 signext, i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @required_arg(i8 signext, i8*) #1

declare dso_local %struct.TYPE_9__* @find_board(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
