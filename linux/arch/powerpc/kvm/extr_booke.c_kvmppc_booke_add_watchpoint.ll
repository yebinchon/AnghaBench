; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_booke_add_watchpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_booke_add_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_reg = type { i32, i8*, i8* }

@KVMPPC_DEBUG_WATCH_READ = common dso_local global i32 0, align 4
@DBCR0_DAC1R = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_WATCH_WRITE = common dso_local global i32 0, align 4
@DBCR0_DAC1W = common dso_local global i32 0, align 4
@DBCR0_DAC2R = common dso_local global i32 0, align 4
@DBCR0_DAC2W = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DBCR0_IDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_reg*, i8*, i32, i32)* @kvmppc_booke_add_watchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_booke_add_watchpoint(%struct.debug_reg* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.debug_reg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.debug_reg* %0, %struct.debug_reg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %63 [
    i32 0, label %11
    i32 1, label %37
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @KVMPPC_DEBUG_WATCH_READ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* @DBCR0_DAC1R, align 4
  %18 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %19 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @KVMPPC_DEBUG_WATCH_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @DBCR0_DAC1W, align 4
  %29 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %30 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %36 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %66

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @KVMPPC_DEBUG_WATCH_READ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @DBCR0_DAC2R, align 4
  %44 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %45 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @KVMPPC_DEBUG_WATCH_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @DBCR0_DAC2W, align 4
  %55 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %56 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %62 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %66

63:                                               ; preds = %4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %59, %33
  %67 = load i32, i32* @DBCR0_IDM, align 4
  %68 = load %struct.debug_reg*, %struct.debug_reg** %6, align 8
  %69 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
