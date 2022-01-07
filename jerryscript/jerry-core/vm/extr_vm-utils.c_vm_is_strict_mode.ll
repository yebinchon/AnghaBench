; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_vm-utils.c_vm_is_strict_mode.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_vm-utils.c_vm_is_strict_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@vm_top_context_p = common dso_local global i32 0, align 4
@CBC_CODE_FLAGS_STRICT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_is_strict_mode() #0 {
  %1 = load i32, i32* @vm_top_context_p, align 4
  %2 = call %struct.TYPE_4__* @JERRY_CONTEXT(i32 %1)
  %3 = icmp ne %struct.TYPE_4__* %2, null
  %4 = zext i1 %3 to i32
  %5 = call i32 @JERRY_ASSERT(i32 %4)
  %6 = load i32, i32* @vm_top_context_p, align 4
  %7 = call %struct.TYPE_4__* @JERRY_CONTEXT(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CBC_CODE_FLAGS_STRICT_MODE, align 4
  %13 = and i32 %11, %12
  ret i32 %13
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @JERRY_CONTEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
