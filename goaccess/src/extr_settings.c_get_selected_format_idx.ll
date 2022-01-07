; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_selected_format_idx.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_get_selected_format_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@conf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@logs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@COMMON = common dso_local global i64 0, align 8
@VCOMMON = common dso_local global i64 0, align 8
@COMBINED = common dso_local global i64 0, align 8
@VCOMBINED = common dso_local global i64 0, align 8
@W3C = common dso_local global i64 0, align 8
@CLOUDFRONT = common dso_local global i64 0, align 8
@CLOUDSTORAGE = common dso_local global i64 0, align 8
@AWSELB = common dso_local global i64 0, align 8
@SQUID = common dso_local global i64 0, align 8
@AWSS3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_selected_format_idx() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i64 -1, i64* %1, align 8
  br label %76

5:                                                ; preds = %0
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 9), align 4
  %8 = call i64 @strcmp(i32* %6, i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i64, i64* @COMMON, align 8
  store i64 %11, i64* %1, align 8
  br label %76

12:                                               ; preds = %5
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 8), align 4
  %15 = call i64 @strcmp(i32* %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* @VCOMMON, align 8
  store i64 %18, i64* %1, align 8
  br label %76

19:                                               ; preds = %12
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 7), align 4
  %22 = call i64 @strcmp(i32* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @COMBINED, align 8
  store i64 %25, i64* %1, align 8
  br label %76

26:                                               ; preds = %19
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 6), align 4
  %29 = call i64 @strcmp(i32* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @VCOMBINED, align 8
  store i64 %32, i64* %1, align 8
  br label %76

33:                                               ; preds = %26
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 5), align 4
  %36 = call i64 @strcmp(i32* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @W3C, align 8
  store i64 %39, i64* %1, align 8
  br label %76

40:                                               ; preds = %33
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 4), align 4
  %43 = call i64 @strcmp(i32* %41, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @CLOUDFRONT, align 8
  store i64 %46, i64* %1, align 8
  br label %76

47:                                               ; preds = %40
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 3), align 4
  %50 = call i64 @strcmp(i32* %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @CLOUDSTORAGE, align 8
  store i64 %53, i64* %1, align 8
  br label %76

54:                                               ; preds = %47
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 2), align 4
  %57 = call i64 @strcmp(i32* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i64, i64* @AWSELB, align 8
  store i64 %60, i64* %1, align 8
  br label %76

61:                                               ; preds = %54
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 1), align 4
  %64 = call i64 @strcmp(i32* %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @SQUID, align 8
  store i64 %67, i64* %1, align 8
  br label %76

68:                                               ; preds = %61
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conf, i32 0, i32 0), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @logs, i32 0, i32 0), align 4
  %71 = call i64 @strcmp(i32* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @AWSS3, align 8
  store i64 %74, i64* %1, align 8
  br label %76

75:                                               ; preds = %68
  store i64 -1, i64* %1, align 8
  br label %76

76:                                               ; preds = %75, %73, %66, %59, %52, %45, %38, %31, %24, %17, %10, %4
  %77 = load i64, i64* %1, align 8
  ret i64 %77
}

declare dso_local i64 @strcmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
