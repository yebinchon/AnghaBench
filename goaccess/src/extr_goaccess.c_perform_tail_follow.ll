; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_perform_tail_follow.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_perform_tail_follow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }

@glog = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to read log file %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @perform_tail_follow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_tail_follow(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 45
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glog, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @parse_tail_follow(i32* %21)
  br label %60

23:                                               ; preds = %12, %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @glog, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %69

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @file_size(i8* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %69

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  %39 = call i32* @fopen(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %39, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 @FATAL(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** %5, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @SEEK_SET, align 4
  %50 = call i32 @fseeko(i32* %46, i64 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @parse_tail_follow(i32* %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @fclose(i32* %56)
  %58 = load i64, i64* %6, align 8
  %59 = load i64*, i64** %3, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %18
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i32 (...) @tail_term()
  br label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @tail_html()
  br label %67

67:                                               ; preds = %65, %63
  %68 = call i32 @usleep(i32 200000)
  br label %69

69:                                               ; preds = %67, %36, %28
  ret void
}

declare dso_local i32 @parse_tail_follow(i32*) #1

declare dso_local i64 @file_size(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fseeko(i32*, i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @tail_term(...) #1

declare dso_local i32 @tail_html(...) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
