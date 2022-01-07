; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_get_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_get_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@do_get_hash.value = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"hash%d_%d \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hash%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%016llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @do_get_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_get_hash(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = shl i64 %26, 32
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  store i64 %30, i64* %13, align 8
  store i32 1, i32* %12, align 4
  br label %31

31:                                               ; preds = %24, %21, %18
  br label %44

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %13, align 8
  store i32 1, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @get_hash(i64* %14, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i64, i64* %14, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.connection*, %struct.connection** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 0, %58
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = call i32 @return_one_key(%struct.connection* %55, i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %61, i32* %5, align 4
  br label %74

62:                                               ; preds = %51
  %63 = load %struct.connection*, %struct.connection** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 0, %66
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_get_hash.value, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = call i32 @return_one_key(%struct.connection* %63, i8* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @do_get_hash.value, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %5, align 4
  br label %74

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72, %44
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %62, %54
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i64 @get_hash(i64*, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
