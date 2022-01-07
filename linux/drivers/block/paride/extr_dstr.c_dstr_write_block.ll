; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_dstr.c_dstr_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_dstr.c_dstr_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@P1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@P3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @dstr_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstr_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @w0(i8 signext -127)
  %9 = load i32, i32* @P1, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @w0(i8 signext 25)
  br label %18

16:                                               ; preds = %3
  %17 = call i32 @w0(i8 signext 9)
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* @P2, align 4
  %20 = call i32 @w0(i8 signext -126)
  %21 = load i32, i32* @P1, align 4
  %22 = load i32, i32* @P3, align 4
  %23 = call i32 @w0(i8 signext 32)
  %24 = load i32, i32* @P1, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %106 [
    i32 0, label %28
    i32 1, label %28
    i32 2, label %48
    i32 3, label %66
    i32 4, label %86
  ]

28:                                               ; preds = %18, %18
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = call i32 @w2(i32 5)
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @w0(i8 signext %39)
  %41 = call i32 @w2(i32 7)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %29

45:                                               ; preds = %29
  %46 = call i32 @w2(i32 5)
  %47 = call i32 @w2(i32 4)
  br label %106

48:                                               ; preds = %18
  %49 = call i32 @w2(i32 197)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %61, %48
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @w4(i8 signext %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %50

64:                                               ; preds = %50
  %65 = call i32 @w2(i32 196)
  br label %106

66:                                               ; preds = %18
  %67 = call i32 @w2(i32 197)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %81, %66
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sdiv i32 %70, 2
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @w4w(i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %68

84:                                               ; preds = %68
  %85 = call i32 @w2(i32 196)
  br label %106

86:                                               ; preds = %18
  %87 = call i32 @w2(i32 197)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %101, %86
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sdiv i32 %90, 4
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @w4l(i32 %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %88

104:                                              ; preds = %88
  %105 = call i32 @w2(i32 196)
  br label %106

106:                                              ; preds = %18, %104, %84, %64, %45
  ret void
}

declare dso_local i32 @w0(i8 signext) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w4(i8 signext) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @w4l(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
