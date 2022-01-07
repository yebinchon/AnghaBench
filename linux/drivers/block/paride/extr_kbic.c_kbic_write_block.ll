; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_kbic.c_kbic_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_kbic.c_kbic_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @kbic_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbic_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
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
  switch i32 %10, label %127 [
    i32 0, label %11
    i32 1, label %11
    i32 2, label %11
    i32 3, label %47
    i32 4, label %81
    i32 5, label %104
  ]

11:                                               ; preds = %3, %3, %3
  %12 = call i32 @w0(i32 144)
  %13 = call i32 @w2(i32 4)
  %14 = call i32 @w2(i32 6)
  %15 = call i32 @w2(i32 4)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %43, %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 @w0(i32 %29)
  %31 = call i32 @w2(i32 0)
  %32 = call i32 @w2(i32 4)
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 2, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 @w0(i32 %39)
  %41 = call i32 @w2(i32 5)
  %42 = call i32 @w2(i32 4)
  br label %43

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %16

46:                                               ; preds = %16
  br label %127

47:                                               ; preds = %3
  %48 = call i32 @w0(i32 160)
  %49 = call i32 @w2(i32 4)
  %50 = call i32 @w2(i32 6)
  %51 = call i32 @w2(i32 4)
  %52 = call i32 @w3(i32 0)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %74, %47
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sdiv i32 %55, 2
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @w4(i8 signext %65)
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 2, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @w4(i8 signext %72)
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %53

77:                                               ; preds = %53
  %78 = call i32 @w2(i32 4)
  %79 = call i32 @w2(i32 0)
  %80 = call i32 @w2(i32 4)
  br label %127

81:                                               ; preds = %3
  %82 = call i32 @w0(i32 160)
  %83 = call i32 @w2(i32 4)
  %84 = call i32 @w2(i32 6)
  %85 = call i32 @w2(i32 4)
  %86 = call i32 @w3(i32 0)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %97, %81
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sdiv i32 %89, 2
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @pi_swab16(i8* %93, i32 %94)
  %96 = call i32 @w4w(i32 %95)
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %87

100:                                              ; preds = %87
  %101 = call i32 @w2(i32 4)
  %102 = call i32 @w2(i32 0)
  %103 = call i32 @w2(i32 4)
  br label %127

104:                                              ; preds = %3
  %105 = call i32 @w0(i32 160)
  %106 = call i32 @w2(i32 4)
  %107 = call i32 @w2(i32 6)
  %108 = call i32 @w2(i32 4)
  %109 = call i32 @w3(i32 0)
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %120, %104
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = sdiv i32 %112, 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @pi_swab32(i8* %116, i32 %117)
  %119 = call i32 @w4l(i32 %118)
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %110

123:                                              ; preds = %110
  %124 = call i32 @w2(i32 4)
  %125 = call i32 @w2(i32 0)
  %126 = call i32 @w2(i32 4)
  br label %127

127:                                              ; preds = %3, %123, %100, %77, %46
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @w4(i8 signext) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @pi_swab16(i8*, i32) #1

declare dso_local i32 @w4l(i32) #1

declare dso_local i32 @pi_swab32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
