; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-xtalk.c_xbow_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip27/extr_ip27-xtalk.c_xbow_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KLTYPE_MIDPLANE8 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KLSTRUCT_XBOW = common dso_local global i32 0, align 4
@HUB_WIDGET_ID_MIN = common dso_local global i32 0, align 4
@HUB_WIDGET_ID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @xbow_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbow_probe(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @KL_CONFIG_INFO(i64 %8)
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* @KLTYPE_MIDPLANE8, align 4
  %12 = call i32* @find_lboard(i32* %10, i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @KLSTRUCT_XBOW, align 4
  %21 = call i64 @find_component(i32* %19, i32* null, i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %81

28:                                               ; preds = %18
  %29 = load i32, i32* @HUB_WIDGET_ID_MIN, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %45, %28
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @XBOW_PORT_TYPE_HUB(i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @XBOW_PORT_IS_ENABLED(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ true, %34 ], [ %44, %39 ]
  br i1 %46, label %31, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @XBOW_PORT_NASID(i32* %50, i32 %51)
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %81

55:                                               ; preds = %47
  %56 = load i32, i32* @HUB_WIDGET_ID_MIN, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %77, %55
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @HUB_WIDGET_ID_MAX, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @XBOW_PORT_IS_ENABLED(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @XBOW_PORT_TYPE_IO(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @probe_one_port(i64 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %66, %61
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %57

80:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %54, %25, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32* @find_lboard(i32*, i32) #1

declare dso_local i64 @KL_CONFIG_INFO(i64) #1

declare dso_local i64 @find_component(i32*, i32*, i32) #1

declare dso_local i32 @XBOW_PORT_TYPE_HUB(i32*, i32) #1

declare dso_local i64 @XBOW_PORT_IS_ENABLED(i32*, i32) #1

declare dso_local i64 @XBOW_PORT_NASID(i32*, i32) #1

declare dso_local i64 @XBOW_PORT_TYPE_IO(i32*, i32) #1

declare dso_local i32 @probe_one_port(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
