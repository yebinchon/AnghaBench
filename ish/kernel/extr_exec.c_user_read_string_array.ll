; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c_user_read_string_array.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c_user_read_string_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_EFAULT = common dso_local global i32 0, align 4
@_E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i64)* @user_read_string_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_read_string_array(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %60, %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %8, align 8
  %15 = mul i64 %14, 8
  %16 = add i64 %13, %15
  %17 = load i64, i64* %10, align 8
  %18 = trunc i64 %17 to i8
  %19 = call i64 @user_get(i64 %16, i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @_EFAULT, align 4
  store i32 %22, i32* %4, align 4
  br label %73

23:                                               ; preds = %12
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %63

27:                                               ; preds = %23
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @_E2BIG, align 4
  store i32 %33, i32* %4, align 4
  br label %73

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %35, %36
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @user_get(i64 %37, i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @_EFAULT, align 4
  store i32 %45, i32* %4, align 4
  br label %73

46:                                               ; preds = %34
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %60

59:                                               ; preds = %46
  br label %28

60:                                               ; preds = %58
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %12

63:                                               ; preds = %26
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @_E2BIG, align 4
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 0, i8* %72, align 1
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %67, %44, %32, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @user_get(i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
