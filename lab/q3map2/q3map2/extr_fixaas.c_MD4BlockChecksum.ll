; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fixaas.c_MD4BlockChecksum.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fixaas.c_MD4BlockChecksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @MD4BlockChecksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MD4BlockChecksum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @MD4_Init(i32* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MD4_Update(i32* %7, i8* %9, i32 %10)
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %13 = call i32 @MD4_Final(i8* %12, i32* %7)
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = and i32 %16, %20
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 2
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 16
  %26 = and i32 %21, %25
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 24
  %31 = and i32 %26, %30
  store i32 %31, i32* %6, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 4
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 5
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = and i32 %34, %38
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 6
  %41 = load i8, i8* %40, align 2
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 16
  %44 = and i32 %39, %43
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 7
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 24
  %49 = and i32 %44, %48
  %50 = load i32, i32* %6, align 4
  %51 = xor i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 8
  %53 = load i8, i8* %52, align 8
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 9
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = and i32 %54, %58
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 10
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 16
  %64 = and i32 %59, %63
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 11
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 24
  %69 = and i32 %64, %68
  %70 = load i32, i32* %6, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 12
  %73 = load i8, i8* %72, align 4
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 13
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 8
  %79 = and i32 %74, %78
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 14
  %81 = load i8, i8* %80, align 2
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 16
  %84 = and i32 %79, %83
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 15
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 24
  %89 = and i32 %84, %88
  %90 = load i32, i32* %6, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @MD4_Init(i32*) #1

declare dso_local i32 @MD4_Update(i32*, i8*, i32) #1

declare dso_local i32 @MD4_Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
