; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_delete.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wrong number of arguments.\0A\00", align 1
@quiet = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"request serial = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_delete(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1 x %struct.TYPE_6__], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i64, i64* @quiet, align 8
  %26 = call i32 @yrmcds_remove(i32* %17, i8* %20, i32 %24, i64 %25, i32* %9)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @CHECK_ERROR(i32 %27)
  %29 = load i64, i64* @quiet, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @yrmcds_noop(i32* %32, i32* %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @CHECK_ERROR(i32 %34)
  br label %36

36:                                               ; preds = %31, %16
  %37 = load i64, i64* @debug, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %64
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %8, i64 0, i64 0
  %47 = call i32 @yrmcds_recv(i32* %45, %struct.TYPE_6__* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @CHECK_ERROR(i32 %48)
  %50 = load i64, i64* @debug, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %8, i64 0, i64 0
  %54 = call i32 @print_response(%struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %8, i64 0, i64 0
  %57 = call i32 @CHECK_RESPONSE(%struct.TYPE_6__* %56)
  %58 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %8, i64 0, i64 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %65

64:                                               ; preds = %55
  br label %44

65:                                               ; preds = %63
  %66 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %8, i64 0, i64 0
  %67 = call i32 @write_data(%struct.TYPE_6__* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %13
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @yrmcds_remove(i32*, i8*, i32, i64, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CHECK_ERROR(i32) #1

declare dso_local i32 @yrmcds_noop(i32*, i32*) #1

declare dso_local i32 @yrmcds_recv(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @print_response(%struct.TYPE_6__*) #1

declare dso_local i32 @CHECK_RESPONSE(%struct.TYPE_6__*) #1

declare dso_local i32 @write_data(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
