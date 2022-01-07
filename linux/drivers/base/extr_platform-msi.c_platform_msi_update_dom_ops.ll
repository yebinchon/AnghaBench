; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_update_dom_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_update_dom_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_domain_info = type { %struct.msi_domain_ops* }
%struct.msi_domain_ops = type { i32*, i32* }

@platform_msi_init = common dso_local global i32* null, align 8
@platform_msi_set_desc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_domain_info*)* @platform_msi_update_dom_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_msi_update_dom_ops(%struct.msi_domain_info* %0) #0 {
  %2 = alloca %struct.msi_domain_info*, align 8
  %3 = alloca %struct.msi_domain_ops*, align 8
  store %struct.msi_domain_info* %0, %struct.msi_domain_info** %2, align 8
  %4 = load %struct.msi_domain_info*, %struct.msi_domain_info** %2, align 8
  %5 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %4, i32 0, i32 0
  %6 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %5, align 8
  store %struct.msi_domain_ops* %6, %struct.msi_domain_ops** %3, align 8
  %7 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %3, align 8
  %8 = icmp ne %struct.msi_domain_ops* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %3, align 8
  %13 = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32*, i32** @platform_msi_init, align 8
  %18 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %3, align 8
  %19 = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %3, align 8
  %22 = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** @platform_msi_set_desc, align 8
  %27 = load %struct.msi_domain_ops*, %struct.msi_domain_ops** %3, align 8
  %28 = getelementptr inbounds %struct.msi_domain_ops, %struct.msi_domain_ops* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
