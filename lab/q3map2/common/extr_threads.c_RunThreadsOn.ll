; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_threads.c_RunThreadsOn.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_threads.c_RunThreadsOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_THREADS = common dso_local global i32 0, align 4
@pacifier = common dso_local global i64 0, align 8
@dispatch = common dso_local global i64 0, align 8
@oldf = common dso_local global i32 0, align 4
@workcount = common dso_local global i32 0, align 4
@numthreads = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@threaded = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pthread_mutexattr_init failed\00", align 1
@PTHREAD_MUTEX_ADAPTIVE_NP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pthread_mutexattr_settype failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pthread_create failed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"pthread_join failed\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c" (%i)\0A\00", align 1
@PTHREAD_MUTEX_FAST_NP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RunThreadsOn(i32 %0, i64 %1, void (i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca void (i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store void (i32)* %2, void (i32)** %6, align 8
  %14 = load i32, i32* @MAX_THREADS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %18 = call i32 (...) @I_FloatTime()
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* @pacifier, align 8
  store i64 0, i64* @dispatch, align 8
  store i32 -1, i32* @oldf, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* @workcount, align 4
  %21 = load i32, i32* @numthreads, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load void (i32)*, void (i32)** %6, align 8
  call void %24(i32 0)
  br label %88

25:                                               ; preds = %3
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* @threaded, align 4
  %27 = load i64, i64* @pacifier, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @setbuf(i32 %30, i32* null)
  br label %32

32:                                               ; preds = %29, %25
  %33 = call i64 @pthread_mutexattr_init(i32* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* @PTHREAD_MUTEX_ADAPTIVE_NP, align 4
  %39 = call i64 @pthread_mutexattr_settype(i32* %7, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @recursive_mutex_init(i32 %44)
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %64, %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @numthreads, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %17, i64 %52
  %54 = load void (i32)*, void (i32)** %6, align 8
  %55 = bitcast void (i32)* %54 to i8*
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i64 @pthread_create(i32* %53, i32* null, i8* %55, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 @Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %46

67:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @numthreads, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %17, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @pthread_join(i32 %76, i8** %13)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %68

85:                                               ; preds = %68
  %86 = call i32 @pthread_mutexattr_destroy(i32* %7)
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* @threaded, align 4
  br label %88

88:                                               ; preds = %85, %23
  %89 = call i32 (...) @I_FloatTime()
  store i32 %89, i32* %11, align 4
  %90 = load i64, i64* @pacifier, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @Sys_Printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @I_FloatTime(...) #2

declare dso_local i32 @setbuf(i32, i32*) #2

declare dso_local i64 @pthread_mutexattr_init(i32*) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #2

declare dso_local i32 @recursive_mutex_init(i32) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i8*, i8*) #2

declare dso_local i64 @pthread_join(i32, i8**) #2

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #2

declare dso_local i32 @Sys_Printf(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
