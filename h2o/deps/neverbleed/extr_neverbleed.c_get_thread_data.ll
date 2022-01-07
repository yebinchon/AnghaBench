; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_get_thread_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_get_thread_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_neverbleed_thread_data_t = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"socket(2) failed\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to connect to privsep daemon\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to send authentication token\00", align 1
@SOCK_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.st_neverbleed_thread_data_t* @get_thread_data(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.st_neverbleed_thread_data_t*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.st_neverbleed_thread_data_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = call i64 (...) @getpid()
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.st_neverbleed_thread_data_t* @pthread_getspecific(i32 %10)
  store %struct.st_neverbleed_thread_data_t* %11, %struct.st_neverbleed_thread_data_t** %4, align 8
  %12 = icmp ne %struct.st_neverbleed_thread_data_t* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %15 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  store %struct.st_neverbleed_thread_data_t* %20, %struct.st_neverbleed_thread_data_t** %2, align 8
  br label %95

21:                                               ; preds = %13
  %22 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %23 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @close(i32 %24)
  br label %32

26:                                               ; preds = %1
  %27 = call %struct.st_neverbleed_thread_data_t* @malloc(i32 16)
  store %struct.st_neverbleed_thread_data_t* %27, %struct.st_neverbleed_thread_data_t** %4, align 8
  %28 = icmp eq %struct.st_neverbleed_thread_data_t* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @dief(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %35 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @PF_UNIX, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = call i32 @socket(i32 %36, i32 %37, i32 0)
  %39 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %40 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = icmp eq i32 %38, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = call i32 @dief(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %32
  %45 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %46 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @set_cloexec(i32 %47)
  br label %49

49:                                               ; preds = %64, %44
  %50 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %51 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = bitcast i32* %54 to i8*
  %56 = call i64 @connect(i32 %52, i8* %55, i32 4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINTR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @dief(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  br label %49

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %81, %65
  %67 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %68 = getelementptr inbounds %struct.st_neverbleed_thread_data_t, %struct.st_neverbleed_thread_data_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @write(i32 %69, i32 %72, i32 4)
  store i32 %73, i32* %6, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @EINTR, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %75, %66
  %80 = phi i1 [ false, %66 ], [ %78, %75 ]
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %66

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %84, 4
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @dief(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  %93 = call i32 @pthread_setspecific(i32 %91, %struct.st_neverbleed_thread_data_t* %92)
  %94 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %4, align 8
  store %struct.st_neverbleed_thread_data_t* %94, %struct.st_neverbleed_thread_data_t** %2, align 8
  br label %95

95:                                               ; preds = %88, %19
  %96 = load %struct.st_neverbleed_thread_data_t*, %struct.st_neverbleed_thread_data_t** %2, align 8
  ret %struct.st_neverbleed_thread_data_t* %96
}

declare dso_local i64 @getpid(...) #1

declare dso_local %struct.st_neverbleed_thread_data_t* @pthread_getspecific(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.st_neverbleed_thread_data_t* @malloc(i32) #1

declare dso_local i32 @dief(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @set_cloexec(i32) #1

declare dso_local i64 @connect(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.st_neverbleed_thread_data_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
