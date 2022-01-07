; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_cpu_crc32.c_cpu_crc32.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_cpu_crc32.c_cpu_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@crc32tab = common dso_local global i32* null, align 8
@MAX_KEY_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_crc32(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @hc_fopen(i32* %6, i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 @hcmalloc(i64 1048577)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @hc_fread(i32* %15, i32 4, i64 1048576, i32* %6)
  store i64 %16, i64* %8, align 8
  %17 = call i32 @hc_fclose(i32* %6)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %89, %2
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %92

22:                                               ; preds = %18
  %23 = load i32*, i32** @crc32tab, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %24, %28
  %30 = and i32 %29, 255
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %23, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 8
  %36 = xor i32 %33, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %41
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* %9, align 8
  %47 = icmp uge i64 %46, 64
  br i1 %47, label %48, label %49

48:                                               ; preds = %22
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* %9, align 8
  %60 = icmp uge i64 %59, 64
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  %69 = getelementptr inbounds i32, i32* %66, i64 %67
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load i64, i64* %9, align 8
  %73 = icmp uge i64 %72, 64
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  store i64 0, i64* %9, align 8
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 0
  %78 = and i32 %77, 255
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  %82 = getelementptr inbounds i32, i32* %79, i64 %80
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i64, i64* %9, align 8
  %86 = icmp uge i64 %85, 64
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i64 0, i64* %9, align 8
  br label %88

88:                                               ; preds = %87, %75
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %18

92:                                               ; preds = %18
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @hcfree(i32* %93)
  ret i32 0
}

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i64 @hc_fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @hcfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
