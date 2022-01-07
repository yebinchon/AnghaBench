; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/lib/extr_io.c_outsw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/lib/extr_io.c_outsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outsw(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %138

14:                                               ; preds = %3
  %15 = load i8*, i8** %9, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 3
  switch i64 %17, label %138 [
    i64 0, label %18
    i64 2, label %52
    i64 1, label %97
  ]

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i64, i64* %6, align 8
  %21 = icmp uge i64 %20, 2
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 2
  store i64 %24, i64* %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  store i8* %29, i8** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = lshr i32 %30, 16
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @outw(i32 %32, i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 65535
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @outw(i32 %37, i64 %38)
  br label %19

40:                                               ; preds = %19
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to i16*
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @outw(i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %43, %40
  br label %138

52:                                               ; preds = %14
  %53 = load i8*, i8** %9, align 8
  %54 = bitcast i8* %53 to i16*
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @outw(i32 %57, i64 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %9, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %67, %52
  %65 = load i64, i64* %6, align 8
  %66 = icmp uge i64 %65, 2
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, 2
  store i64 %69, i64* %6, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %9, align 8
  %75 = load i32, i32* %7, align 4
  %76 = lshr i32 %75, 16
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @outw(i32 %77, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 65535
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @outw(i32 %82, i64 %83)
  br label %64

85:                                               ; preds = %64
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = bitcast i8* %89 to i16*
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @outw(i32 %93, i64 %94)
  br label %96

96:                                               ; preds = %88, %85
  br label %138

97:                                               ; preds = %14
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 %100, 8
  store i32 %101, i32* %7, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %9, align 8
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %109, %97
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* %6, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = bitcast i8* %112 to i16*
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  store i32 %115, i32* %8, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8* %117, i8** %9, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = lshr i32 %119, 8
  %121 = or i32 %118, %120
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = load i64, i64* %4, align 8
  %124 = call i32 @outw(i32 %122, i64 %123)
  %125 = load i32, i32* %8, align 4
  %126 = shl i32 %125, 8
  store i32 %126, i32* %7, align 4
  br label %106

127:                                              ; preds = %106
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = lshr i32 %132, 8
  %134 = or i32 %131, %133
  %135 = call i32 @le16_to_cpu(i32 %134)
  %136 = load i64, i64* %4, align 8
  %137 = call i32 @outw(i32 %135, i64 %136)
  br label %138

138:                                              ; preds = %13, %14, %127, %96, %51
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
