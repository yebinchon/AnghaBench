; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_booke_add_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_booke_add_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_reg = type { i32, i8*, i8*, i8*, i8* }

@DBCR0_IAC1 = common dso_local global i32 0, align 4
@DBCR0_IAC2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DBCR0_IDM = common dso_local global i32 0, align 4
@DBCR0_IAC3 = common dso_local global i32 0, align 4
@DBCR0_IAC4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_reg*, i8*, i32)* @kvmppc_booke_add_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_booke_add_breakpoint(%struct.debug_reg* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.debug_reg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.debug_reg* %0, %struct.debug_reg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 0, label %9
    i32 1, label %18
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @DBCR0_IAC1, align 4
  %11 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %12 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %17 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @DBCR0_IAC2, align 4
  %20 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %21 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %26 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %18, %9
  %31 = load i32, i32* @DBCR0_IDM, align 4
  %32 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %33 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
