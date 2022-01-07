; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_prlimit64.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_prlimit64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit_ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"prlimit64(%d, %d)\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c" old={cur=%#x, max=%#x}\00", align 1
@_EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" new={cur=%#x, max=%#x}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_prlimit64(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rlimit_, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rlimit_, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @STRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @_EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %90

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, i32* @current, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @rlimit_get(i32 %25, i32 %26, %struct.rlimit_* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %90

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.rlimit_, %struct.rlimit_* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.rlimit_, %struct.rlimit_* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %34, i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = bitcast %struct.rlimit_* %10 to { i64, i32 }*
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @user_put(i64 %38, i64 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @_EFAULT, align 4
  store i32 %47, i32* %5, align 4
  br label %90

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %89

52:                                               ; preds = %49
  %53 = load i64, i64* %8, align 8
  %54 = bitcast %struct.rlimit_* %12 to { i64, i32 }*
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @user_get(i64 %53, i64 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @_EFAULT, align 4
  store i32 %62, i32* %5, align 4
  br label %90

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.rlimit_, %struct.rlimit_* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.rlimit_, %struct.rlimit_* %12, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %65, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = bitcast %struct.rlimit_* %12 to { i64, i32 }*
  %71 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @check_setrlimit(i32 %69, i64 %72, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %90

80:                                               ; preds = %63
  %81 = load i32, i32* @current, align 4
  %82 = load i32, i32* %7, align 4
  %83 = bitcast %struct.rlimit_* %12 to { i64, i32 }*
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %83, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @rlimit_set(i32 %81, i32 %82, i64 %85, i32 %87)
  store i32 %88, i32* %5, align 4
  br label %90

89:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %80, %78, %61, %46, %30, %19
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @STRACE(i8*, i64, i32) #1

declare dso_local i32 @rlimit_get(i32, i32, %struct.rlimit_*) #1

declare dso_local i64 @user_put(i64, i64, i32) #1

declare dso_local i64 @user_get(i64, i64, i32) #1

declare dso_local i32 @check_setrlimit(i32, i64, i32) #1

declare dso_local i32 @rlimit_set(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
