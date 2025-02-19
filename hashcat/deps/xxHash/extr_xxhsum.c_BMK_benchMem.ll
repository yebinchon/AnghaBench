; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_benchMem.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_benchMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@localXXH32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"XXH32\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"XXH32 unaligned\00", align 1
@localXXH64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"XXH64\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"XXH64 unaligned\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"benchmark mode invalid \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @BMK_benchMem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BMK_benchMem(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = and i64 %9, 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = or i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @localXXH32, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @BMK_benchHash(i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %25)
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i32
  %34 = or i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i32, i32* @localXXH32, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @BMK_benchHash(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %39, i64 %40)
  br label %42

42:                                               ; preds = %36, %27
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 3
  %48 = zext i1 %47 to i32
  %49 = or i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* @localXXH64, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @BMK_benchHash(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 4
  %62 = zext i1 %61 to i32
  %63 = or i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load i32, i32* @localXXH64, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @BMK_benchHash(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %65, %56
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @DISPLAY(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %77

76:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %74
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BMK_benchHash(i32, i8*, i8*, i64) #1

declare dso_local i32 @DISPLAY(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
