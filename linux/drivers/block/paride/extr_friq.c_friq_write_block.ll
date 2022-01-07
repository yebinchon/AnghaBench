; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_friq.c_friq_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_friq.c_friq_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @friq_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @friq_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %93 [
    i32 0, label %11
    i32 1, label %11
    i32 2, label %32
    i32 3, label %51
    i32 4, label %72
  ]

11:                                               ; preds = %3, %3
  %12 = call i32 @CMD(i32 8)
  %13 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %27, %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @w0(i8 signext %23)
  %25 = call i32 @w2(i32 7)
  %26 = call i32 @w2(i32 5)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %14

30:                                               ; preds = %14
  %31 = call i32 @w2(i32 4)
  br label %93

32:                                               ; preds = %3
  %33 = call i32 @CMD(i32 200)
  %34 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %46, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @w4(i8 signext %44)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %35

49:                                               ; preds = %35
  %50 = call i32 @w2(i32 4)
  br label %93

51:                                               ; preds = %3
  %52 = call i32 @CMD(i32 200)
  %53 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %67, %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sdiv i32 %56, 2
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @w4w(i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %54

70:                                               ; preds = %54
  %71 = call i32 @w2(i32 4)
  br label %93

72:                                               ; preds = %3
  %73 = call i32 @CMD(i32 200)
  %74 = call i32 @w2(i32 5)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %88, %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sdiv i32 %77, 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @w4l(i32 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %75

91:                                               ; preds = %75
  %92 = call i32 @w2(i32 4)
  br label %93

93:                                               ; preds = %3, %91, %70, %49, %30
  ret void
}

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i8 signext) #1

declare dso_local i32 @w4(i8 signext) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @w4l(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
