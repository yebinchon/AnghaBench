; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_is_our_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_is_our_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }

@allow_unadvertised_object_request = common dso_local global i32 0, align 4
@ALLOW_TIP_SHA1 = common dso_local global i32 0, align 4
@ALLOW_REACHABLE_SHA1 = common dso_local global i32 0, align 4
@HIDDEN_REF = common dso_local global i32 0, align 4
@OUR_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*)* @is_our_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_our_ref(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  %3 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %2, align 8
  %4 = load i32, i32* @allow_unadvertised_object_request, align 4
  %5 = load i32, i32* @ALLOW_TIP_SHA1, align 4
  %6 = load i32, i32* @ALLOW_REACHABLE_SHA1, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.object*, %struct.object** %2, align 8
  %10 = getelementptr inbounds %struct.object, %struct.object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @HIDDEN_REF, align 4
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = load i32, i32* @OUR_REF, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %11, %20
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
