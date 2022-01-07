; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_ok_to_give_up.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_ok_to_give_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32 }

@GENERATION_NUMBER_ZERO = common dso_local global i32 0, align 4
@THEY_HAVE = common dso_local global i32 0, align 4
@COMMON_KNOWN = common dso_local global i32 0, align 4
@oldest_have = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_array*, %struct.object_array*)* @ok_to_give_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_to_give_up(%struct.object_array* %0, %struct.object_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_array*, align 8
  %5 = alloca %struct.object_array*, align 8
  %6 = alloca i32, align 4
  store %struct.object_array* %0, %struct.object_array** %4, align 8
  store %struct.object_array* %1, %struct.object_array** %5, align 8
  %7 = load i32, i32* @GENERATION_NUMBER_ZERO, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.object_array*, %struct.object_array** %4, align 8
  %9 = getelementptr inbounds %struct.object_array, %struct.object_array* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.object_array*, %struct.object_array** %5, align 8
  %15 = load i32, i32* @THEY_HAVE, align 4
  %16 = load i32, i32* @COMMON_KNOWN, align 4
  %17 = load i32, i32* @oldest_have, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @can_all_from_reach_with_flag(%struct.object_array* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @can_all_from_reach_with_flag(%struct.object_array*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
