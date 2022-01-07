; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_msg.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_unl.c_unl_genl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.unl = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@NL_AUTO_PID = common dso_local global i32 0, align 4
@NL_AUTO_SEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_msg* @unl_genl_msg(%struct.unl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.unl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nl_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.unl* %0, %struct.unl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = call %struct.nl_msg* (...) @nlmsg_alloc()
  store %struct.nl_msg* %9, %struct.nl_msg** %7, align 8
  %10 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8
  %11 = icmp ne %struct.nl_msg* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %31

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @NLM_F_DUMP, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8
  %22 = load i32, i32* @NL_AUTO_PID, align 4
  %23 = load i32, i32* @NL_AUTO_SEQ, align 4
  %24 = load %struct.unl*, %struct.unl** %4, align 8
  %25 = getelementptr inbounds %struct.unl, %struct.unl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @genl_family_get_id(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @genlmsg_put(%struct.nl_msg* %21, i32 %22, i32 %23, i32 %27, i32 0, i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %20, %12
  %32 = load %struct.nl_msg*, %struct.nl_msg** %7, align 8
  ret %struct.nl_msg* %32
}

declare dso_local %struct.nl_msg* @nlmsg_alloc(...) #1

declare dso_local i32 @genlmsg_put(%struct.nl_msg*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @genl_family_get_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
