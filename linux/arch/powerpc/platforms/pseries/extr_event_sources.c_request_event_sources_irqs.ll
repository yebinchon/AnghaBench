; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_event_sources.c_request_event_sources_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_event_sources.c_request_event_sources_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"event-sources: Unable to allocate interrupt number for %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"event-sources: Unable to request interrupt %d for %pOF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @request_event_sources_irqs(%struct.device_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @of_irq_get(%struct.device_node* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %45

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = ptrtoint %struct.device_node* %25 to i32
  %27 = call i64 (i32, i8*, i32, ...) @WARN(i32 %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %42

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @request_irq(i32 %31, i32 %32, i32 0, i8* %33, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i64 (i32, i8*, i32, ...) @WARN(i32 %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %36, %struct.device_node* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %10

45:                                               ; preds = %19, %40, %10
  ret void
}

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
