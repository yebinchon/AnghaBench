; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp_early_core.c_sclp_early_print_vt220.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp_early_core.c_sclp_early_print_vt220.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt220_sccb = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@sclp_early_sccb = common dso_local global i64 0, align 8
@EARLY_SCCB_SIZE = common dso_local global i32 0, align 4
@EVTYP_VT220MSG = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sclp_early_print_vt220 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_early_print_vt220(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt220_sccb*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @sclp_early_sccb, align 8
  %7 = inttoptr i64 %6 to %struct.vt220_sccb*
  store %struct.vt220_sccb* %7, %struct.vt220_sccb** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 16, %9
  %11 = load i32, i32* @EARLY_SCCB_SIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @EARLY_SCCB_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.vt220_sccb*, %struct.vt220_sccb** %5, align 8
  %21 = call i32 @memset(%struct.vt220_sccb* %20, i32 0, i32 16)
  %22 = load %struct.vt220_sccb*, %struct.vt220_sccb** %5, align 8
  %23 = getelementptr inbounds %struct.vt220_sccb, %struct.vt220_sccb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @memcpy(i32* %24, i8* %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 16, %29
  %31 = trunc i64 %30 to i32
  %32 = load %struct.vt220_sccb*, %struct.vt220_sccb** %5, align 8
  %33 = getelementptr inbounds %struct.vt220_sccb, %struct.vt220_sccb* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 12, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.vt220_sccb*, %struct.vt220_sccb** %5, align 8
  %40 = getelementptr inbounds %struct.vt220_sccb, %struct.vt220_sccb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @EVTYP_VT220MSG, align 4
  %44 = load %struct.vt220_sccb*, %struct.vt220_sccb** %5, align 8
  %45 = getelementptr inbounds %struct.vt220_sccb, %struct.vt220_sccb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %49 = load %struct.vt220_sccb*, %struct.vt220_sccb** %5, align 8
  %50 = call i32 @sclp_early_cmd(i32 %48, %struct.vt220_sccb* %49)
  ret void
}

declare dso_local i32 @memset(%struct.vt220_sccb*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @sclp_early_cmd(i32, %struct.vt220_sccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
