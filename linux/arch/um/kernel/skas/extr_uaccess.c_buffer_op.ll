; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/skas/extr_uaccess.c_buffer_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/skas/extr_uaccess.c_buffer_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i32 (i64, i32, i8*)*, i8*)* @buffer_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buffer_op(i64 %0, i32 %1, i32 %2, i32 (i64, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i64, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (i64, i32, i8*)* %3, i32 (i64, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @PAGE_ALIGN(i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = call i64 @min(i64 %18, i64 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @do_op_one_page(i64 %24, i64 %25, i32 %26, i32 (i64, i32, i8*)* %27, i8* %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %5
  %33 = load i64, i64* %14, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* %13, align 8
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i64 [ %36, %35 ], [ 0, %37 ]
  store i64 %39, i64* %13, align 8
  br label %105

40:                                               ; preds = %5
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %105

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* @PAGE_MASK, align 8
  %57 = and i64 %55, %56
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %51
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i64 @do_op_one_page(i64 %60, i64 %61, i32 %62, i32 (i64, i32, i8*)* %63, i8* %64)
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i64, i64* %14, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* %13, align 8
  br label %74

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i64 [ %72, %71 ], [ 0, %73 ]
  store i64 %75, i64* %13, align 8
  br label %105

76:                                               ; preds = %59
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i64, i64* %13, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %13, align 8
  br label %51

83:                                               ; preds = %51
  %84 = load i64, i64* %13, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %105

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %10, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i64 @do_op_one_page(i64 %88, i64 %89, i32 %90, i32 (i64, i32, i8*)* %91, i8* %92)
  store i64 %93, i64* %14, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load i64, i64* %14, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i64, i64* %13, align 8
  br label %102

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i64 [ %100, %99 ], [ 0, %101 ]
  store i64 %103, i64* %13, align 8
  br label %105

104:                                              ; preds = %87
  store i64 0, i64* %6, align 8
  br label %107

105:                                              ; preds = %102, %86, %74, %49, %38
  %106 = load i64, i64* %13, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %105, %104
  %108 = load i64, i64* %6, align 8
  ret i64 %108
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @do_op_one_page(i64, i64, i32, i32 (i64, i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
