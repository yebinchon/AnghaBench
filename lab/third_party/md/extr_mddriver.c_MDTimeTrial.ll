; ModuleID = '/home/carl/AnghaBench/lab/third_party/md/extr_mddriver.c_MDTimeTrial.c'
source_filename = "/home/carl/AnghaBench/lab/third_party/md/extr_mddriver.c_MDTimeTrial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_BLOCK_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"MD%d time trial. Digesting %d %d-byte blocks ...\00", align 1
@MD = common dso_local global i32 0, align 4
@TEST_BLOCK_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Digest = \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\0ATime = %ld seconds\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Speed = %ld bytes/second\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MDTimeTrial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MDTimeTrial() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @MD, align 4
  %13 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %14 = load i32, i32* @TEST_BLOCK_COUNT, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %27, %0
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %11, i64 %25
  store i8 %23, i8* %26, align 1
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %16

30:                                               ; preds = %16
  %31 = call i32 @time(i64* %3)
  %32 = call i32 @MDInit(i32* %1)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %40, %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TEST_BLOCK_COUNT, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %39 = call i32 @MDUpdate(i32* %1, i8* %11, i32 %38)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %33

43:                                               ; preds = %33
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %45 = call i32 @MDFinal(i8* %44, i32* %1)
  %46 = call i32 @time(i64* %2)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %50 = call i32 @MDPrint(i8* %49)
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* %3, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* @TEST_BLOCK_COUNT, align 4
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %56, %58
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* %3, align 8
  %62 = sub nsw i64 %60, %61
  %63 = sdiv i64 %59, %62
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @time(i64*) #2

declare dso_local i32 @MDInit(i32*) #2

declare dso_local i32 @MDUpdate(i32*, i8*, i32) #2

declare dso_local i32 @MDFinal(i8*, i32*) #2

declare dso_local i32 @MDPrint(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
