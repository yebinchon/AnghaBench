; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_add_refs_to_oidset.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_add_refs_to_oidset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidset = type { i32 }
%struct.ref = type { i32, %struct.ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oidset*, %struct.ref*)* @add_refs_to_oidset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_refs_to_oidset(%struct.oidset* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.oidset*, align 8
  %4 = alloca %struct.ref*, align 8
  store %struct.oidset* %0, %struct.oidset** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  br label %5

5:                                                ; preds = %13, %2
  %6 = load %struct.ref*, %struct.ref** %4, align 8
  %7 = icmp ne %struct.ref* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %struct.oidset*, %struct.oidset** %3, align 8
  %10 = load %struct.ref*, %struct.ref** %4, align 8
  %11 = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 0
  %12 = call i32 @oidset_insert(%struct.oidset* %9, i32* %11)
  br label %13

13:                                               ; preds = %8
  %14 = load %struct.ref*, %struct.ref** %4, align 8
  %15 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 1
  %16 = load %struct.ref*, %struct.ref** %15, align 8
  store %struct.ref* %16, %struct.ref** %4, align 8
  br label %5

17:                                               ; preds = %5
  ret void
}

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
