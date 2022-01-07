; ModuleID = '/home/carl/AnghaBench/linux/crypto/async_tx/extr_raid6test.c_raid6_test.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/async_tx/extr_raid6test.c_raid6_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDISKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@data = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"complete (%d tests, %d failure%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @raid6_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid6_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NDISKS, align 4
  %8 = add nsw i32 %7, 3
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @alloc_page(i32 %11)
  %13 = load i32*, i32** @data, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  %17 = load i32*, i32** @data, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** @data, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @put_page(i32 %33)
  br label %24

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %1, align 4
  br label %114

38:                                               ; preds = %10
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  %43 = load i32, i32* @NDISKS, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = call i64 @test(i32 4, i32* %3)
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* @NDISKS, align 4
  %53 = icmp sgt i32 %52, 5
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = call i64 @test(i32 5, i32* %3)
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* @NDISKS, align 4
  %62 = icmp sgt i32 %61, 12
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = call i64 @test(i32 11, i32* %3)
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %2, align 4
  %69 = call i64 @test(i32 12, i32* %3)
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %63, %60
  %75 = load i32, i32* @NDISKS, align 4
  %76 = icmp sgt i32 %75, 24
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = call i64 @test(i32 24, i32* %3)
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32, i32* @NDISKS, align 4
  %85 = call i64 @test(i32 %84, i32* %3)
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %2, align 4
  %90 = call i32 (i8*, ...) @pr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %97 = call i32 (i8*, ...) @pr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92, i8* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %110, %83
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @NDISKS, align 4
  %101 = add nsw i32 %100, 3
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i32*, i32** @data, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @put_page(i32 %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %98

113:                                              ; preds = %98
  store i32 0, i32* %1, align 4
  br label %114

114:                                              ; preds = %113, %35
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i64 @test(i32, i32*) #1

declare dso_local i32 @pr(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
