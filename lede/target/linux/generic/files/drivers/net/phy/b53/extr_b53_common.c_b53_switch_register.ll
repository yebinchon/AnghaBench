; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_switch_register.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_switch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"found switch: %s, rev %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_switch_register(%struct.b53_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  %5 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %6 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %11 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %16 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %18 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %23 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %25 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %30 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %9, %1
  %33 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %34 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %39 = call i64 @b53_switch_detect(%struct.b53_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %37, %32
  %45 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %46 = call i32 @b53_switch_init(%struct.b53_device* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %44
  %52 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %53 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %57 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %61 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %60, i32 0, i32 0
  %62 = call i32 @register_switch(%struct.TYPE_4__* %61, i32* null)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %51, %49, %41
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @b53_switch_detect(%struct.b53_device*) #1

declare dso_local i32 @b53_switch_init(%struct.b53_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @register_switch(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
