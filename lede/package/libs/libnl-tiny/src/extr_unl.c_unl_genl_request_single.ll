; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_request_single.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_request_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unl = type { i32 }
%struct.nl_msg = type { i32 }

@request_single_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unl_genl_request_single(%struct.unl* %0, %struct.nl_msg* %1, %struct.nl_msg** %2) #0 {
  %4 = alloca %struct.unl*, align 8
  %5 = alloca %struct.nl_msg*, align 8
  %6 = alloca %struct.nl_msg**, align 8
  store %struct.unl* %0, %struct.unl** %4, align 8
  store %struct.nl_msg* %1, %struct.nl_msg** %5, align 8
  store %struct.nl_msg** %2, %struct.nl_msg*** %6, align 8
  %7 = load %struct.nl_msg**, %struct.nl_msg*** %6, align 8
  store %struct.nl_msg* null, %struct.nl_msg** %7, align 8
  %8 = load %struct.unl*, %struct.unl** %4, align 8
  %9 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %10 = load i32, i32* @request_single_cb, align 4
  %11 = load %struct.nl_msg**, %struct.nl_msg*** %6, align 8
  %12 = call i32 @unl_genl_request(%struct.unl* %8, %struct.nl_msg* %9, i32 %10, %struct.nl_msg** %11)
  ret i32 %12
}

declare dso_local i32 @unl_genl_request(%struct.unl*, %struct.nl_msg*, i32, %struct.nl_msg**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
