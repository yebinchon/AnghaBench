; ModuleID = '/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_add_signature.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_add_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwimage_trailer = type { i32, i32 }

@signature_file = common dso_local global i32 0, align 4
@FWIMAGE_SIGNATURE = common dso_local global i32 0, align 4
@firmware_file = common dso_local global i32 0, align 4
@SIGNATURE_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwimage_trailer*)* @add_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_signature(%struct.fwimage_trailer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwimage_trailer*, align 8
  store %struct.fwimage_trailer* %0, %struct.fwimage_trailer** %3, align 8
  %4 = load i32, i32* @signature_file, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load i32, i32* @FWIMAGE_SIGNATURE, align 4
  %9 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %10 = getelementptr inbounds %struct.fwimage_trailer, %struct.fwimage_trailer* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %12 = getelementptr inbounds %struct.fwimage_trailer, %struct.fwimage_trailer* %11, i32 0, i32 0
  store i32 8, i32* %12, align 4
  %13 = load i32, i32* @signature_file, align 4
  %14 = load i32, i32* @firmware_file, align 4
  %15 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %16 = load i32, i32* @SIGNATURE_MAXLEN, align 4
  %17 = call i64 @append_data(i32 %13, i32 %14, %struct.fwimage_trailer* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %24

20:                                               ; preds = %7
  %21 = load i32, i32* @firmware_file, align 4
  %22 = load %struct.fwimage_trailer*, %struct.fwimage_trailer** %3, align 8
  %23 = call i32 @append_trailer(i32 %21, %struct.fwimage_trailer* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %19, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @append_data(i32, i32, %struct.fwimage_trailer*, i32) #1

declare dso_local i32 @append_trailer(i32, %struct.fwimage_trailer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
