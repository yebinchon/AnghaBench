; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pipe.c_sys_pipe2.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pipe.c_sys_pipe2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"pipe2(%#x, %#x)\00", align 1
@O_CLOEXEC_ = common dso_local global i32 0, align 4
@O_NONBLOCK_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported pipe2 flags\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" [%d %d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_pipe2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @STRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @O_CLOEXEC_, align 4
  %14 = load i32, i32* @O_NONBLOCK_, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @_EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %2
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %24 = call i32 @pipe(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %78

29:                                               ; preds = %22
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pipe_f_create(i32 %31, i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  store i32 %33, i32* %7, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %70

39:                                               ; preds = %29
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pipe_f_create(i32 %41, i32 %42)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  store i32 %43, i32* %7, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %66

49:                                               ; preds = %39
  %50 = load i32, i32* @_EFAULT, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %53 = call i64 @user_put(i32 %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %62

56:                                               ; preds = %49
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @STRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %60)
  store i32 0, i32* %3, align 4
  br label %78

62:                                               ; preds = %55
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @f_close(i32 %64)
  br label %66

66:                                               ; preds = %62, %48
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @f_close(i32 %68)
  br label %70

70:                                               ; preds = %66, %38
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @close(i32 %72)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %56, %27, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @STRACE(i8*, i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @pipe_f_create(i32, i32) #1

declare dso_local i64 @user_put(i32, i32*) #1

declare dso_local i32 @f_close(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
