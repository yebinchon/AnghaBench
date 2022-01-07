; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sm3_generic.c_sm3_compress.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sm3_generic.c_sm3_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @sm3_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm3_compress(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %17, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %102, %3
  %45 = load i32, i32* %19, align 4
  %46 = icmp sle i32 %45, 63
  br i1 %46, label %47, label %105

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @rol32(i32 %48, i32 12)
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @t(i32 %52)
  %54 = load i32, i32* %19, align 4
  %55 = and i32 %54, 31
  %56 = call i32 @rol32(i32 %53, i32 %55)
  %57 = add nsw i32 %51, %56
  %58 = call i32 @rol32(i32 %57, i32 7)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @rol32(i32 %60, i32 12)
  %62 = xor i32 %59, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @ff(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @gg(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %4, align 8
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @rol32(i32 %92, i32 9)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @rol32(i32 %97, i32 19)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @p0(i32 %100)
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %47
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %44

105:                                              ; preds = %44
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %106, %109
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %113, %116
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %120, %123
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %127, %130
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %134, %137
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %141, %144
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 5
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 6
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %148, %151
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 7
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %155, %158
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 7
  store i32 %159, i32* %161, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  ret void
}

declare dso_local i32 @rol32(i32, i32) #1

declare dso_local i32 @t(i32) #1

declare dso_local i32 @ff(i32, i32, i32, i32) #1

declare dso_local i32 @gg(i32, i32, i32, i32) #1

declare dso_local i32 @p0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
