; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_httpclient.c_test_should_use_h2.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_httpclient.c_test_should_use_h2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_should_use_h2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_should_use_h2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %25, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 110
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = call i32 @should_use_h2(i32 5, i32* %1)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  switch i32 %13, label %19 [
    i32 0, label %14
    i32 20, label %14
    i32 40, label %14
    i32 60, label %14
    i32 80, label %14
  ]

14:                                               ; preds = %11, %11, %11, %11, %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17)
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %8

28:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 110
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = call i32 @should_use_h2(i32 7, i32* %1)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %1, align 4
  switch i32 %34, label %40 [
    i32 0, label %35
    i32 15, label %35
    i32 29, label %35
    i32 43, label %35
    i32 58, label %35
    i32 72, label %35
    i32 86, label %35
  ]

35:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38)
  br label %45

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %29

49:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 110
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = call i32 @should_use_h2(i32 93, i32* %1)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %1, align 4
  switch i32 %55, label %61 [
    i32 1, label %56
    i32 15, label %56
    i32 29, label %56
    i32 43, label %56
    i32 58, label %56
    i32 72, label %56
    i32 86, label %56
  ]

56:                                               ; preds = %53, %53, %53, %53, %53, %53, %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59)
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %50

70:                                               ; preds = %50
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i32, i32* %2, align 4
  %73 = icmp ne i32 %72, 110
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = call i32 @should_use_h2(i32 0, i32* %1)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %71

83:                                               ; preds = %71
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %93, %83
  %85 = load i32, i32* %2, align 4
  %86 = icmp ne i32 %85, 110
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = call i32 @should_use_h2(i32 100, i32* %1)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91)
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %84

96:                                               ; preds = %84
  ret void
}

declare dso_local i32 @should_use_h2(i32, i32*) #1

declare dso_local i32 @ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
