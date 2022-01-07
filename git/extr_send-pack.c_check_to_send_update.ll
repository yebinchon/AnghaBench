; ModuleID = '/home/carl/AnghaBench/git/extr_send-pack.c_check_to_send_update.c'
source_filename = "/home/carl/AnghaBench/git/extr_send-pack.c_check_to_send_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32 }
%struct.send_pack_args = type { i32 }

@CHECK_REF_NO_PUSH = common dso_local global i32 0, align 4
@CHECK_REF_STATUS_REJECTED = common dso_local global i32 0, align 4
@CHECK_REF_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref*, %struct.send_pack_args*)* @check_to_send_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_to_send_update(%struct.ref* %0, %struct.send_pack_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.send_pack_args*, align 8
  store %struct.ref* %0, %struct.ref** %4, align 8
  store %struct.send_pack_args* %1, %struct.send_pack_args** %5, align 8
  %6 = load %struct.ref*, %struct.ref** %4, align 8
  %7 = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.send_pack_args*, %struct.send_pack_args** %5, align 8
  %12 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @CHECK_REF_NO_PUSH, align 4
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %10, %2
  %18 = load %struct.ref*, %struct.ref** %4, align 8
  %19 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 130, label %21
    i32 134, label %21
    i32 133, label %21
    i32 132, label %21
    i32 129, label %21
    i32 131, label %21
    i32 128, label %23
  ]

21:                                               ; preds = %17, %17, %17, %17, %17, %17
  %22 = load i32, i32* @CHECK_REF_STATUS_REJECTED, align 4
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @CHECK_REF_UPTODATE, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23, %21, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
