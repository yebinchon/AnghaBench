; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmcs12.h_vmcs12_write_any.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmcs12.h_vmcs12_write_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs12 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmcs12*, i64, i32, i8*)* @vmcs12_write_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmcs12_write_any(%struct.vmcs12* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.vmcs12* %0, %struct.vmcs12** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %11 = bitcast %struct.vmcs12* %10 to i8*
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @vmcs_field_width(i64 %15)
  switch i32 %16, label %34 [
    i32 130, label %17
    i32 129, label %22
    i32 128, label %26
    i32 131, label %30
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  br label %36

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to i8**
  store i8* %27, i8** %29, align 8
  br label %36

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = bitcast i8* %32 to i8**
  store i8* %31, i8** %33, align 8
  br label %36

34:                                               ; preds = %4
  %35 = call i32 @WARN_ON_ONCE(i32 1)
  br label %36

36:                                               ; preds = %34, %30, %26, %22, %17
  ret void
}

declare dso_local i32 @vmcs_field_width(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
