; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_dump_sel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_dump_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"%s sel=0x%04x, attr=0x%05x, limit=0x%08x, base=0x%016lx\0A\00", align 1
@GUEST_ES_AR_BYTES = common dso_local global i64 0, align 8
@GUEST_ES_SELECTOR = common dso_local global i64 0, align 8
@GUEST_ES_LIMIT = common dso_local global i64 0, align 8
@GUEST_ES_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @vmx_dump_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_dump_sel(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @vmcs_read16(i64 %6)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @GUEST_ES_AR_BYTES, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @GUEST_ES_SELECTOR, align 8
  %12 = sub nsw i64 %10, %11
  %13 = call i32 @vmcs_read32(i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @GUEST_ES_LIMIT, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @GUEST_ES_SELECTOR, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call i32 @vmcs_read32(i64 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @GUEST_ES_BASE, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @GUEST_ES_SELECTOR, align 8
  %24 = sub nsw i64 %22, %23
  %25 = call i32 @vmcs_readl(i64 %24)
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %7, i32 %13, i32 %19, i32 %25)
  ret void
}

declare dso_local i32 @pr_err(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vmcs_read16(i64) #1

declare dso_local i32 @vmcs_read32(i64) #1

declare dso_local i32 @vmcs_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
