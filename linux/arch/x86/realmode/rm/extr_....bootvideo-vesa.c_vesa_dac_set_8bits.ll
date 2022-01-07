; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/realmode/rm/extr_....bootvideo-vesa.c_vesa_dac_set_8bits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/realmode/rm/extr_....bootvideo-vesa.c_vesa_dac_set_8bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i8*, i8*, i8*, i8* }
%struct.biosregs = type { i32, i32 }

@vginfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@boot_params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vesa_dac_set_8bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vesa_dac_set_8bits() #0 {
  %1 = alloca %struct.biosregs, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = alloca i8*, align 8
  store i8* inttoptr (i64 6 to i8*), i8** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vginfo, i32 0, i32 0), align 4
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %0
  %8 = call i32 @initregs(%struct.biosregs* %1)
  %9 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 20232, i32* %9, align 4
  %10 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 1
  store i32 8, i32* %10, align 4
  %11 = call i32 @intcall(i32 16, %struct.biosregs* %1, %struct.biosregs* %2)
  %12 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 79
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %15, %7
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i8*, i8** %3, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 7), align 8
  %23 = load i8*, i8** %3, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 6), align 8
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 5), align 8
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
