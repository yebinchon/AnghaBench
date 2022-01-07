; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_gat.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_gat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wrong number of arguments.\0A\00", align 1
@quiet = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"request serial = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_gat(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.TYPE_6__], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %74

18:                                               ; preds = %3
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strtoull(i8* %24, i32* null, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* @quiet, align 8
  %32 = call i32 @yrmcds_get_touch(i32* %26, i8* %27, i32 %29, i32 %30, i64 %31, i32* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @CHECK_ERROR(i32 %33)
  %35 = load i64, i64* @quiet, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @yrmcds_noop(i32* %38, i32* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @CHECK_ERROR(i32 %40)
  br label %42

42:                                               ; preds = %37, %18
  %43 = load i64, i64* @debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %70
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %10, i64 0, i64 0
  %53 = call i32 @yrmcds_recv(i32* %51, %struct.TYPE_6__* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @CHECK_ERROR(i32 %54)
  %56 = load i64, i64* @debug, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %10, i64 0, i64 0
  %60 = call i32 @print_response(%struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %58, %50
  %62 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %10, i64 0, i64 0
  %63 = call i32 @CHECK_RESPONSE(%struct.TYPE_6__* %62)
  %64 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %10, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %71

70:                                               ; preds = %61
  br label %50

71:                                               ; preds = %69
  %72 = getelementptr inbounds [1 x %struct.TYPE_6__], [1 x %struct.TYPE_6__]* %10, i64 0, i64 0
  %73 = call i32 @write_data(%struct.TYPE_6__* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @yrmcds_get_touch(i32*, i8*, i32, i32, i64, i32*) #1

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
