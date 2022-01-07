; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_apply_push_cas.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_apply_push_cas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_cas_option = type { i32 }
%struct.remote = type { i32 }
%struct.ref = type { %struct.ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_push_cas(%struct.push_cas_option* %0, %struct.remote* %1, %struct.ref* %2) #0 {
  %4 = alloca %struct.push_cas_option*, align 8
  %5 = alloca %struct.remote*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.ref*, align 8
  store %struct.push_cas_option* %0, %struct.push_cas_option** %4, align 8
  store %struct.remote* %1, %struct.remote** %5, align 8
  store %struct.ref* %2, %struct.ref** %6, align 8
  %8 = load %struct.ref*, %struct.ref** %6, align 8
  store %struct.ref* %8, %struct.ref** %7, align 8
  br label %9

9:                                                ; preds = %17, %3
  %10 = load %struct.ref*, %struct.ref** %7, align 8
  %11 = icmp ne %struct.ref* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.push_cas_option*, %struct.push_cas_option** %4, align 8
  %14 = load %struct.remote*, %struct.remote** %5, align 8
  %15 = load %struct.ref*, %struct.ref** %7, align 8
  %16 = call i32 @apply_cas(%struct.push_cas_option* %13, %struct.remote* %14, %struct.ref* %15)
  br label %17

17:                                               ; preds = %12
  %18 = load %struct.ref*, %struct.ref** %7, align 8
  %19 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 0
  %20 = load %struct.ref*, %struct.ref** %19, align 8
  store %struct.ref* %20, %struct.ref** %7, align 8
  br label %9

21:                                               ; preds = %9
  ret void
}

declare dso_local i32 @apply_cas(%struct.push_cas_option*, %struct.remote*, %struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
