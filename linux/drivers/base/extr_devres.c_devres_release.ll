; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devres_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devres_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devres_release(%struct.device* %0, i32 (%struct.device*, i8*)* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32 (%struct.device*, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 (%struct.device*, i8*)* %1, i32 (%struct.device*, i8*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = call i8* @devres_remove(%struct.device* %11, i32 (%struct.device*, i8*)* %12, i32 %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %32

25:                                               ; preds = %4
  %26 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %7, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 %26(%struct.device* %27, i8* %28)
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @devres_free(i8* %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i8* @devres_remove(%struct.device*, i32 (%struct.device*, i8*)*, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @devres_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
