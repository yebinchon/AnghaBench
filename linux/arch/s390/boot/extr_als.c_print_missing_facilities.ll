; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_als.c_print_missing_facilities.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_als.c_print_missing_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@print_missing_facilities.als_str = internal global [80 x i8] c"Missing facilities: \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@als = common dso_local global i64* null, align 8
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_missing_facilities() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [6 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %64, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i64*, i64** @als, align 8
  %9 = call i32 @ARRAY_SIZE(i64* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %67

11:                                               ; preds = %6
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = xor i64 %16, -1
  %18 = load i64*, i64** @als, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %17, %22
  store i64 %23, i64* %1, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %60, %11
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BITS_PER_LONG, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i64, i64* %1, align 8
  %30 = load i32, i32* @BITS_PER_LONG, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = and i64 %29, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %60

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 @strlen(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0))
  %46 = icmp sgt i32 %45, 70
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @sclp_early_printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0))
  store i8 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0), align 16
  br label %50

50:                                               ; preds = %47, %44
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @BITS_PER_LONG, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @u16_to_decimal(i8* %51, i32 %56)
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %59 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0), i8* %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %50, %38
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %24

63:                                               ; preds = %24
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %6

67:                                               ; preds = %6
  %68 = call i32 @strcat(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @sclp_early_printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @print_missing_facilities.als_str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sclp_early_printk(i8*) #1

declare dso_local i32 @u16_to_decimal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
