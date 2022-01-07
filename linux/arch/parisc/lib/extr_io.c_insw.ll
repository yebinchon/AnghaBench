; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/lib/extr_io.c_insw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/lib/extr_io.c_insw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insw(i64 %0, i8* %1, i64 %2) #0 {
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
  br label %129

14:                                               ; preds = %3
  %15 = load i8*, i8** %9, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 3
  switch i64 %17, label %129 [
    i64 0, label %18
    i64 2, label %50
    i64 1, label %92
    i64 3, label %92
  ]

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %22, %18
  %20 = load i64, i64* %6, align 8
  %21 = icmp uge i64 %20, 2
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 2
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @inw(i64 %25)
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = shl i32 %27, 16
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @inw(i64 %29)
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  store i8* %38, i8** %9, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @inw(i64 %43)
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = trunc i32 %45 to i16
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i16*
  store i16 %46, i16* %48, align 2
  br label %49

49:                                               ; preds = %42, %39
  br label %129

50:                                               ; preds = %14
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @inw(i64 %51)
  %53 = call i32 @cpu_to_le16(i32 %52)
  %54 = trunc i32 %53 to i16
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to i16*
  store i16 %54, i16* %56, align 2
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %58, i8** %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %64, %50
  %62 = load i64, i64* %6, align 8
  %63 = icmp uge i64 %62, 2
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = sub i64 %65, 2
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @inw(i64 %67)
  %69 = call i32 @cpu_to_le16(i32 %68)
  %70 = shl i32 %69, 16
  store i32 %70, i32* %7, align 4
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @inw(i64 %71)
  %73 = call i32 @cpu_to_le16(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i8*, i8** %9, align 8
  %78 = bitcast i8* %77 to i32*
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  store i8* %80, i8** %9, align 8
  br label %61

81:                                               ; preds = %61
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @inw(i64 %85)
  %87 = call i32 @cpu_to_le16(i32 %86)
  %88 = trunc i32 %87 to i16
  %89 = load i8*, i8** %9, align 8
  %90 = bitcast i8* %89 to i16*
  store i16 %88, i16* %90, align 2
  br label %91

91:                                               ; preds = %84, %81
  br label %129

92:                                               ; preds = %14, %14
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @inw(i64 %95)
  %97 = call i32 @cpu_to_le16(i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = lshr i32 %98, 8
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %9, align 8
  store i8 %100, i8* %101, align 1
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %9, align 8
  br label %104

104:                                              ; preds = %108, %92
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, -1
  store i64 %106, i64* %6, align 8
  %107 = icmp ne i64 %105, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %104
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @inw(i64 %109)
  %111 = call i32 @cpu_to_le16(i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 255
  %114 = shl i32 %113, 8
  %115 = load i32, i32* %8, align 4
  %116 = lshr i32 %115, 8
  %117 = or i32 %114, %116
  %118 = trunc i32 %117 to i16
  %119 = load i8*, i8** %9, align 8
  %120 = bitcast i8* %119 to i16*
  store i16 %118, i16* %120, align 2
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  store i8* %122, i8** %9, align 8
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %7, align 4
  br label %104

124:                                              ; preds = %104
  %125 = load i32, i32* %7, align 4
  %126 = and i32 %125, 255
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %9, align 8
  store i8 %127, i8* %128, align 1
  br label %129

129:                                              ; preds = %13, %14, %124, %91, %49
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
