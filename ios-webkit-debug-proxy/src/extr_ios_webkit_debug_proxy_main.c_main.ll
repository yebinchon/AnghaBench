; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy_main.c_main.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*)* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*)* }

@SIGINT = common dso_local global i32 0, align 4
@on_signal = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@quit_flag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @SIGINT, align 4
  %11 = load i32, i32* @on_signal, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = load i32, i32* @SIGTERM, align 4
  %14 = load i32, i32* @on_signal, align 4
  %15 = call i32 @signal(i32 %13, i32 %14)
  %16 = call %struct.TYPE_12__* (...) @iwdpm_new()
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @iwdpm_configure(%struct.TYPE_12__* %17, i32 %18, i8** %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = call i32 @exit(i32 %30) #3
  unreachable

32:                                               ; preds = %2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = call i32 @iwdpm_create_bridge(%struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %8, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = call i64 %40(%struct.TYPE_13__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %71

45:                                               ; preds = %32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %9, align 8
  br label %49

49:                                               ; preds = %61, %45
  %50 = load i32, i32* @quit_flag, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64 (%struct.TYPE_11__*, i32)*, i64 (%struct.TYPE_11__*, i32)** %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = call i64 %56(%struct.TYPE_11__* %57, i32 2)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %7, align 4
  br label %62

61:                                               ; preds = %53
  br label %49

62:                                               ; preds = %60, %49
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = call i32 %65(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = call i32 @iwdpm_free(%struct.TYPE_12__* %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %44
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local %struct.TYPE_12__* @iwdpm_new(...) #1

declare dso_local i32 @iwdpm_configure(%struct.TYPE_12__*, i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @iwdpm_create_bridge(%struct.TYPE_12__*) #1

declare dso_local i32 @iwdpm_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
