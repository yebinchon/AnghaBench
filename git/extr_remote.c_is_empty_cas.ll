; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_is_empty_cas.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_is_empty_cas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_cas_option = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_empty_cas(%struct.push_cas_option* %0) #0 {
  %2 = alloca %struct.push_cas_option*, align 8
  store %struct.push_cas_option* %0, %struct.push_cas_option** %2, align 8
  %3 = load %struct.push_cas_option*, %struct.push_cas_option** %2, align 8
  %4 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.push_cas_option*, %struct.push_cas_option** %2, align 8
  %9 = getelementptr inbounds %struct.push_cas_option, %struct.push_cas_option* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
