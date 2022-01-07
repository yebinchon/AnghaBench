; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_remove_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_remove_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_client = type { %struct.agp_client*, %struct.agp_client* }
%struct.agp_controller = type { i32, %struct.agp_client* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_remove_client(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_client*, align 8
  %5 = alloca %struct.agp_client*, align 8
  %6 = alloca %struct.agp_client*, align 8
  %7 = alloca %struct.agp_controller*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.agp_controller* @agp_find_controller_for_client(i32 %8)
  store %struct.agp_controller* %9, %struct.agp_controller** %7, align 8
  %10 = load %struct.agp_controller*, %struct.agp_controller** %7, align 8
  %11 = icmp eq %struct.agp_controller* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.agp_controller*, %struct.agp_controller** %7, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.agp_client* @agp_find_client_in_controller(%struct.agp_controller* %16, i32 %17)
  store %struct.agp_client* %18, %struct.agp_client** %4, align 8
  %19 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %20 = icmp eq %struct.agp_client* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %15
  %25 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %26 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %25, i32 0, i32 0
  %27 = load %struct.agp_client*, %struct.agp_client** %26, align 8
  store %struct.agp_client* %27, %struct.agp_client** %5, align 8
  %28 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %29 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %28, i32 0, i32 1
  %30 = load %struct.agp_client*, %struct.agp_client** %29, align 8
  store %struct.agp_client* %30, %struct.agp_client** %6, align 8
  %31 = load %struct.agp_client*, %struct.agp_client** %5, align 8
  %32 = icmp ne %struct.agp_client* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %35 = load %struct.agp_client*, %struct.agp_client** %5, align 8
  %36 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %35, i32 0, i32 1
  store %struct.agp_client* %34, %struct.agp_client** %36, align 8
  %37 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %38 = icmp ne %struct.agp_client* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.agp_client*, %struct.agp_client** %5, align 8
  %41 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %42 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %41, i32 0, i32 0
  store %struct.agp_client* %40, %struct.agp_client** %42, align 8
  br label %43

43:                                               ; preds = %39, %33
  br label %54

44:                                               ; preds = %24
  %45 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %46 = icmp ne %struct.agp_client* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %49 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %48, i32 0, i32 0
  store %struct.agp_client* null, %struct.agp_client** %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %52 = load %struct.agp_controller*, %struct.agp_controller** %7, align 8
  %53 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %52, i32 0, i32 1
  store %struct.agp_client* %51, %struct.agp_client** %53, align 8
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.agp_controller*, %struct.agp_controller** %7, align 8
  %56 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %60 = call i32 @agp_remove_seg_from_client(%struct.agp_client* %59)
  %61 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %62 = call i32 @kfree(%struct.agp_client* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %54, %21, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.agp_controller* @agp_find_controller_for_client(i32) #1

declare dso_local %struct.agp_client* @agp_find_client_in_controller(%struct.agp_controller*, i32) #1

declare dso_local i32 @agp_remove_seg_from_client(%struct.agp_client*) #1

declare dso_local i32 @kfree(%struct.agp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
