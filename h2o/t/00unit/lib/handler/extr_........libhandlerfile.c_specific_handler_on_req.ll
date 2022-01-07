; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_specific_handler_on_req.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_specific_handler_on_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.st_h2o_specific_file_handler_t = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.st_h2o_sendfile_generator_t = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Access Forbidden\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"access forbidden\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Service Unavailable\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"please try again later\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @specific_handler_on_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @specific_handler_on_req(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.st_h2o_specific_file_handler_t*, align 8
  %7 = alloca %struct.st_h2o_sendfile_generator_t*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.st_h2o_specific_file_handler_t*
  store %struct.st_h2o_specific_file_handler_t* %11, %struct.st_h2o_specific_file_handler_t** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %6, align 8
  %14 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %6, align 8
  %18 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %6, align 8
  %22 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.st_h2o_sendfile_generator_t* @create_generator(%struct.TYPE_9__* %12, i32 %16, i32 %20, i32* %8, i32 %23)
  store %struct.st_h2o_sendfile_generator_t* %24, %struct.st_h2o_sendfile_generator_t** %7, align 8
  %25 = icmp eq %struct.st_h2o_sendfile_generator_t* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = call i32 @h2o_send_error_403(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %53

32:                                               ; preds = %26
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @ENOENT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %72

37:                                               ; preds = %32
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENFILE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EMFILE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = call i32 @h2o_send_error_503(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = call i32 @h2o_send_error_403(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %29
  store i32 0, i32* %3, align 4
  br label %72

54:                                               ; preds = %2
  %55 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %7, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %6, align 8
  %61 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %6, align 8
  %65 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %6, align 8
  %69 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @serve_with_generator(%struct.st_h2o_sendfile_generator_t* %55, %struct.TYPE_9__* %56, i32 %59, i32 %63, i32 %67, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %54, %53, %36
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.st_h2o_sendfile_generator_t* @create_generator(%struct.TYPE_9__*, i32, i32, i32*, i32) #1

declare dso_local i32 @h2o_send_error_403(%struct.TYPE_9__*, i8*, i8*, i32) #1

declare dso_local i32 @h2o_send_error_503(%struct.TYPE_9__*, i8*, i8*, i32) #1

declare dso_local i32 @serve_with_generator(%struct.st_h2o_sendfile_generator_t*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
