; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_get_command.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_mrdb.c_get_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@MAX_COMMAND_LINE = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"command line too long.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_3__*)* @get_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_command(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_COMMAND_LINE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = call i32 (...) @getchar()
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %11
  br label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %7

30:                                               ; preds = %18, %7
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* @stdin, align 4
  %35 = call i64 @feof(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* @stdin, align 4
  %39 = call i32 @clearerr(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @strcpy(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %37, %33, %30
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MAX_COMMAND_LINE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %63, %52
  %54 = call i32 (...) @getchar()
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @EOF, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 10
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i1 [ false, %53 ], [ %59, %57 ]
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %53

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MAX_COMMAND_LINE, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to i8*
  ret i8* %83
}

declare dso_local i32 @getchar(...) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i32 @clearerr(i32) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
