; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-klconfig.c_find_component.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-klconfig.c_find_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"find_component: Bad pointer: 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_component(i32* %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8 %2, i8* %7, align 1
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %42

13:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @KLCF_NUM_COMPS(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32* @KLCF_COMP(i32* %21, i32 %22)
  %24 = icmp eq i32* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %14

30:                                               ; preds = %25, %14
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @KLCF_NUM_COMPS(i32* %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %37)
  store i32* null, i32** %4, align 8
  br label %65

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %12
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @KLCF_NUM_COMPS(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @KLCF_COMP(i32* %49, i32 %50)
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call zeroext i8 @KLCF_COMP_TYPE(i32* %52)
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32*, i32** %6, align 8
  store i32* %59, i32** %4, align 8
  br label %65

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %43

64:                                               ; preds = %43
  store i32* null, i32** %4, align 8
  br label %65

65:                                               ; preds = %64, %58, %36
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i32 @KLCF_NUM_COMPS(i32*) #1

declare dso_local i32* @KLCF_COMP(i32*, i32) #1

declare dso_local i32 @printk(i8*, i32*) #1

declare dso_local zeroext i8 @KLCF_COMP_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
