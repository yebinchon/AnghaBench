; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_uv.c_uv_query_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_uv.c_uv_query_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_cb_qui = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@UVC_CMD_QUI = common dso_local global i32 0, align 4
@BIT_UVC_CMD_SET_SHARED_ACCESS = common dso_local global i32 0, align 4
@BIT_UVC_CMD_REMOVE_SHARED_ACCESS = common dso_local global i32 0, align 4
@prot_virt_guest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_query_info() #0 {
  %1 = alloca %struct.uv_cb_qui, align 8
  %2 = getelementptr inbounds %struct.uv_cb_qui, %struct.uv_cb_qui* %1, i32 0, i32 0
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.uv_cb_qui, %struct.uv_cb_qui* %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 16, i32* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %6 = load i32, i32* @UVC_CMD_QUI, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 @test_facility(i32 158)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %30

10:                                               ; preds = %0
  %11 = ptrtoint %struct.uv_cb_qui* %1 to i32
  %12 = call i64 @uv_call(i32 0, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %30

15:                                               ; preds = %10
  %16 = load i32, i32* @BIT_UVC_CMD_SET_SHARED_ACCESS, align 4
  %17 = getelementptr inbounds %struct.uv_cb_qui, %struct.uv_cb_qui* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i64*
  %20 = call i64 @test_bit_inv(i32 %16, i64* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i32, i32* @BIT_UVC_CMD_REMOVE_SHARED_ACCESS, align 4
  %24 = getelementptr inbounds %struct.uv_cb_qui, %struct.uv_cb_qui* %1, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  %27 = call i64 @test_bit_inv(i32 %23, i64* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* @prot_virt_guest, align 4
  br label %30

30:                                               ; preds = %9, %14, %29, %22, %15
  ret void
}

declare dso_local i32 @test_facility(i32) #1

declare dso_local i64 @uv_call(i32, i32) #1

declare dso_local i64 @test_bit_inv(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
