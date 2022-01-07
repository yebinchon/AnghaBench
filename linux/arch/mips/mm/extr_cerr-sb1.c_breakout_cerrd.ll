; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_breakout_cerrd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_breakout_cerrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP0_CERRD_CAUSES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" load,\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" store,\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" fill/wb,\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" coherency,\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" duptags,\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" NO CAUSE,\00", align 1
@CP0_CERRD_TYPES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c" NO TYPE\00", align 1
@CP0_CERRD_MULTIPLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c" multi-err\00", align 1
@CP0_CERRD_TAG_STATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c" tag-state\00", align 1
@CP0_CERRD_TAG_ADDRESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c" tag-address\00", align 1
@CP0_CERRD_DATA_SBE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" data-SBE\00", align 1
@CP0_CERRD_DATA_DBE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c" data-DBE\00", align 1
@CP0_CERRD_EXTERNAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c" external\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @breakout_cerrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breakout_cerrd(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @CP0_CERRD_CAUSES, align 4
  %5 = and i32 %3, %4
  switch i32 %5, label %16 [
    i32 129, label %6
    i32 128, label %8
    i32 130, label %10
    i32 132, label %12
    i32 131, label %14
  ]

6:                                                ; preds = %1
  %7 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

8:                                                ; preds = %1
  %9 = call i32 @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %18

10:                                               ; preds = %1
  %11 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %18

12:                                               ; preds = %1
  %13 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %18

14:                                               ; preds = %1
  %15 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %18

16:                                               ; preds = %1
  %17 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %14, %12, %10, %8, %6
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @CP0_CERRD_TYPES, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %68

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @CP0_CERRD_MULTIPLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @CP0_CERRD_TAG_STATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @CP0_CERRD_TAG_ADDRESS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @CP0_CERRD_DATA_SBE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @CP0_CERRD_DATA_DBE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @CP0_CERRD_EXTERNAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  br label %68

68:                                               ; preds = %67, %23
  %69 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
