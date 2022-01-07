; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c___elevator_change.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c___elevator_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.elevator_type = type { i32 }

@ELV_NAME_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i8*)* @__elevator_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__elevator_change(%struct.request_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elevator_type*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @ELV_NAME_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %15 = call i32 @blk_queue_registered(%struct.request_queue* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %26 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %65

30:                                               ; preds = %24
  %31 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %32 = call i32 @elevator_switch(%struct.request_queue* %31, %struct.elevator_type* null)
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %65

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  %35 = trunc i64 %11 to i32
  %36 = call i32 @strlcpy(i8* %13, i8* %34, i32 %35)
  %37 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %38 = call i32 @strstrip(i8* %13)
  %39 = call %struct.elevator_type* @elevator_get(%struct.request_queue* %37, i32 %38, i32 1)
  store %struct.elevator_type* %39, %struct.elevator_type** %8, align 8
  %40 = load %struct.elevator_type*, %struct.elevator_type** %8, align 8
  %41 = icmp ne %struct.elevator_type* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %65

45:                                               ; preds = %33
  %46 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %47 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @elevator_match(i32 %55, i8* %13, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.elevator_type*, %struct.elevator_type** %8, align 8
  %60 = call i32 @elevator_put(%struct.elevator_type* %59)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %65

61:                                               ; preds = %50, %45
  %62 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %63 = load %struct.elevator_type*, %struct.elevator_type** %8, align 8
  %64 = call i32 @elevator_switch(%struct.request_queue* %62, %struct.elevator_type* %63)
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %58, %42, %30, %29, %17
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @blk_queue_registered(%struct.request_queue*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @elevator_switch(%struct.request_queue*, %struct.elevator_type*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local %struct.elevator_type* @elevator_get(%struct.request_queue*, i32, i32) #2

declare dso_local i32 @strstrip(i8*) #2

declare dso_local i64 @elevator_match(i32, i8*, i32) #2

declare dso_local i32 @elevator_put(%struct.elevator_type*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
