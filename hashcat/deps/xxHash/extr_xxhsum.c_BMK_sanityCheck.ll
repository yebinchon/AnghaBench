; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_sanityCheck.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_BMK_sanityCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BMK_sanityCheck.prime = internal constant i32 -1640531535, align 4
@SANITY_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\0D%70s\0D\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Sanity check -- all tests ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @BMK_sanityCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_sanityCheck() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @SANITY_BUFFER_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i64, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  store i32 -1640531535, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %0
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SANITY_BUFFER_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 24
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %8, i64 %18
  store i64 %16, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %9
  %27 = call i32 @BMK_testSequence(i64* null, i32 0, i32 0, i32 46947589)
  %28 = call i32 @BMK_testSequence(i64* null, i32 0, i32 -1640531535, i32 917998311)
  %29 = call i32 @BMK_testSequence(i64* %8, i32 1, i32 0, i32 -1201881371)
  %30 = call i32 @BMK_testSequence(i64* %8, i32 1, i32 -1640531535, i32 -712745628)
  %31 = call i32 @BMK_testSequence(i64* %8, i32 14, i32 0, i32 -441840972)
  %32 = call i32 @BMK_testSequence(i64* %8, i32 14, i32 -1640531535, i32 1149343005)
  %33 = load i32, i32* @SANITY_BUFFER_SIZE, align 4
  %34 = call i32 @BMK_testSequence(i64* %8, i32 %33, i32 0, i32 521839634)
  %35 = load i32, i32* @SANITY_BUFFER_SIZE, align 4
  %36 = call i32 @BMK_testSequence(i64* %8, i32 %35, i32 -1640531535, i32 1234094306)
  %37 = call i32 @BMK_testSequence64(i64* null, i32 0, i32 0, i32 1373170073)
  %38 = call i32 @BMK_testSequence64(i64* null, i32 0, i32 -1640531535, i32 -1835329553)
  %39 = call i32 @BMK_testSequence64(i64* %8, i32 1, i32 0, i32 -930524456)
  %40 = call i32 @BMK_testSequence64(i64* %8, i32 1, i32 -1640531535, i32 -2120243421)
  %41 = call i32 @BMK_testSequence64(i64* %8, i32 14, i32 0, i32 -2118370755)
  %42 = call i32 @BMK_testSequence64(i64* %8, i32 14, i32 -1640531535, i32 1593625035)
  %43 = load i32, i32* @SANITY_BUFFER_SIZE, align 4
  %44 = call i32 @BMK_testSequence64(i64* %8, i32 %43, i32 0, i32 -2064090963)
  %45 = load i32, i32* @SANITY_BUFFER_SIZE, align 4
  %46 = call i32 @BMK_testSequence64(i64* %8, i32 %45, i32 -1640531535, i32 812588577)
  %47 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BMK_testSequence(i64*, i32, i32, i32) #2

declare dso_local i32 @BMK_testSequence64(i64*, i32, i32, i32) #2

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
