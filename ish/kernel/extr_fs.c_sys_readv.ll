; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_readv.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_readv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec_ = type { i32, i32 }

@_ENOMEM = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_readv(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iovec_*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.iovec_* @malloc(i32 %17)
  store %struct.iovec_* %18, %struct.iovec_** %9, align 8
  %19 = load %struct.iovec_*, %struct.iovec_** %9, align 8
  %20 = icmp eq %struct.iovec_* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @_ENOMEM, align 4
  store i32 %22, i32* %4, align 4
  br label %79

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.iovec_*, %struct.iovec_** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @user_read(i32 %24, %struct.iovec_* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @_EFAULT, align 4
  store i32 %30, i32* %10, align 4
  br label %75

31:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %68, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.iovec_*, %struct.iovec_** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.iovec_, %struct.iovec_* %38, i64 %40
  %42 = getelementptr inbounds %struct.iovec_, %struct.iovec_* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iovec_*, %struct.iovec_** %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.iovec_, %struct.iovec_* %44, i64 %46
  %48 = getelementptr inbounds %struct.iovec_, %struct.iovec_* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sys_read(i32 %37, i32 %43, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %75

54:                                               ; preds = %36
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.iovec_*, %struct.iovec_** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.iovec_, %struct.iovec_* %59, i64 %61
  %63 = getelementptr inbounds %struct.iovec_, %struct.iovec_* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %58, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %71

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %32

71:                                               ; preds = %66, %32
  %72 = load %struct.iovec_*, %struct.iovec_** %9, align 8
  %73 = call i32 @free(%struct.iovec_* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %53, %29
  %76 = load %struct.iovec_*, %struct.iovec_** %9, align 8
  %77 = call i32 @free(%struct.iovec_* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %71, %21
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.iovec_* @malloc(i32) #1

declare dso_local i64 @user_read(i32, %struct.iovec_*, i32) #1

declare dso_local i32 @sys_read(i32, i32, i32) #1

declare dso_local i32 @free(%struct.iovec_*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
