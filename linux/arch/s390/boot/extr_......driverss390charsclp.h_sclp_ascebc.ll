; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp.h_sclp_ascebc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp.h_sclp_ascebc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHINE_IS_VM = common dso_local global i64 0, align 8
@_ascebc = common dso_local global i8* null, align 8
@_ascebc_500 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @sclp_ascebc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @sclp_ascebc(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i64, i64* @MACHINE_IS_VM, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i8*, i8** @_ascebc, align 8
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  br label %19

12:                                               ; preds = %1
  %13 = load i8*, i8** @_ascebc_500, align 8
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi i32 [ %11, %5 ], [ %18, %12 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
