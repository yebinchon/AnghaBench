; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_object.c_obj_ops.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_object.c_obj_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_object_ops = type { i32 }
%struct.nl_object = type { %struct.nl_object_ops* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nl_object_ops* (%struct.nl_object*)* @obj_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nl_object_ops* @obj_ops(%struct.nl_object* %0) #0 {
  %2 = alloca %struct.nl_object*, align 8
  store %struct.nl_object* %0, %struct.nl_object** %2, align 8
  %3 = load %struct.nl_object*, %struct.nl_object** %2, align 8
  %4 = getelementptr inbounds %struct.nl_object, %struct.nl_object* %3, i32 0, i32 0
  %5 = load %struct.nl_object_ops*, %struct.nl_object_ops** %4, align 8
  %6 = icmp ne %struct.nl_object_ops* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (...) @BUG()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.nl_object*, %struct.nl_object** %2, align 8
  %11 = getelementptr inbounds %struct.nl_object, %struct.nl_object* %10, i32 0, i32 0
  %12 = load %struct.nl_object_ops*, %struct.nl_object_ops** %11, align 8
  ret %struct.nl_object_ops* %12
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
