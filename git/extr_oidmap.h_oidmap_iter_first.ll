; ModuleID = '/home/carl/AnghaBench/git/extr_oidmap.h_oidmap_iter_first.c'
source_filename = "/home/carl/AnghaBench/git/extr_oidmap.h_oidmap_iter_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidmap = type { i32 }
%struct.oidmap_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.oidmap*, %struct.oidmap_iter*)* @oidmap_iter_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @oidmap_iter_first(%struct.oidmap* %0, %struct.oidmap_iter* %1) #0 {
  %3 = alloca %struct.oidmap*, align 8
  %4 = alloca %struct.oidmap_iter*, align 8
  store %struct.oidmap* %0, %struct.oidmap** %3, align 8
  store %struct.oidmap_iter* %1, %struct.oidmap_iter** %4, align 8
  %5 = load %struct.oidmap*, %struct.oidmap** %3, align 8
  %6 = load %struct.oidmap_iter*, %struct.oidmap_iter** %4, align 8
  %7 = call i32 @oidmap_iter_init(%struct.oidmap* %5, %struct.oidmap_iter* %6)
  %8 = load %struct.oidmap_iter*, %struct.oidmap_iter** %4, align 8
  %9 = call i64 @oidmap_iter_next(%struct.oidmap_iter* %8)
  %10 = inttoptr i64 %9 to i8*
  ret i8* %10
}

declare dso_local i32 @oidmap_iter_init(%struct.oidmap*, %struct.oidmap_iter*) #1

declare dso_local i64 @oidmap_iter_next(%struct.oidmap_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
