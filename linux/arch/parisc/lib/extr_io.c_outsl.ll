; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/lib/extr_io.c_outsl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/lib/extr_io.c_outsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @outsl(i64 %0, i8* %1, i64 %2) #0 {
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
  br label %167

14:                                               ; preds = %3
  %15 = load i8*, i8** %9, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 3
  switch i64 %17, label %167 [
    i64 0, label %18
    i64 2, label %33
    i64 1, label %73
    i64 3, label %120
  ]

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %6, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @outl(i32 %27, i64 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %31, i8** %9, align 8
  br label %19

32:                                               ; preds = %19
  br label %167

33:                                               ; preds = %14
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to i16*
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %46, %33
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %6, align 8
  %45 = icmp ne i64 %43, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %51, i8** %9, align 8
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %8, align 4
  %55 = lshr i32 %54, 16
  %56 = or i32 %53, %55
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @outl(i32 %57, i64 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %7, align 4
  br label %42

61:                                               ; preds = %42
  %62 = load i8*, i8** %9, align 8
  %63 = bitcast i8* %62 to i16*
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 16
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @outl(i32 %70, i64 %71)
  br label %167

73:                                               ; preds = %14
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %6, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 24
  store i32 %79, i32* %7, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = bitcast i8* %82 to i16*
  %84 = load i16, i16* %83, align 2
  %85 = zext i16 %84 to i32
  %86 = shl i32 %85, 8
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8* %90, i8** %9, align 8
  br label %91

91:                                               ; preds = %95, %73
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %6, align 8
  %94 = icmp ne i64 %92, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  store i8* %100, i8** %9, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = lshr i32 %102, 24
  %104 = or i32 %101, %103
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @outl(i32 %105, i64 %106)
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 %108, 8
  store i32 %109, i32* %7, align 4
  br label %91

110:                                              ; preds = %91
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @outl(i32 %117, i64 %118)
  br label %167

120:                                              ; preds = %14
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %6, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 24
  store i32 %126, i32* %7, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %9, align 8
  br label %129

129:                                              ; preds = %133, %120
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %6, align 8
  %132 = icmp ne i64 %130, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load i8*, i8** %9, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %8, align 4
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  store i8* %138, i8** %9, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = lshr i32 %140, 8
  %142 = or i32 %139, %141
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load i64, i64* %4, align 8
  %145 = call i32 @outl(i32 %143, i64 %144)
  %146 = load i32, i32* %8, align 4
  %147 = shl i32 %146, 24
  store i32 %147, i32* %7, align 4
  br label %129

148:                                              ; preds = %129
  %149 = load i8*, i8** %9, align 8
  %150 = bitcast i8* %149 to i16*
  %151 = load i16, i16* %150, align 2
  %152 = zext i16 %151 to i32
  %153 = shl i32 %152, 16
  store i32 %153, i32* %8, align 4
  %154 = load i8*, i8** %9, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  store i8* %155, i8** %9, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @le32_to_cpu(i32 %163)
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @outl(i32 %164, i64 %165)
  br label %167

167:                                              ; preds = %13, %14, %148, %110, %61, %32
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
