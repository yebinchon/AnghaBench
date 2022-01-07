; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_prepare_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_prepare_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { {}*, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@HS_DEACTIVATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BT: HS DEACTIVATED due to host activity!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_prepare_command(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %5 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %11 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %14 = call i32 @btmrvl_send_hscfg_cmd(%struct.btmrvl_private* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %17 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %23 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %26 = call i32 @btmrvl_enable_ps(%struct.btmrvl_private* %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %29 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %35 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %38 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %44 = call i32 @btmrvl_enable_hs(%struct.btmrvl_private* %43)
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %33
  %46 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %47 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.btmrvl_private*)**
  %49 = load i32 (%struct.btmrvl_private*)*, i32 (%struct.btmrvl_private*)** %48, align 8
  %50 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %51 = call i32 %49(%struct.btmrvl_private* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @HS_DEACTIVATED, align 4
  %53 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %54 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = call i32 @BT_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %45, %42
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @btmrvl_send_hscfg_cmd(%struct.btmrvl_private*) #1

declare dso_local i32 @btmrvl_enable_ps(%struct.btmrvl_private*) #1

declare dso_local i32 @btmrvl_enable_hs(%struct.btmrvl_private*) #1

declare dso_local i32 @BT_DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
