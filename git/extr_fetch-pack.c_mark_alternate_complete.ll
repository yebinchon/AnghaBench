; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_alternate_complete.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_mark_alternate_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { i32 }
%struct.object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_negotiator*, %struct.object*)* @mark_alternate_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_alternate_complete(%struct.fetch_negotiator* %0, %struct.object* %1) #0 {
  %3 = alloca %struct.fetch_negotiator*, align 8
  %4 = alloca %struct.object*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %3, align 8
  store %struct.object* %1, %struct.object** %4, align 8
  %5 = load %struct.object*, %struct.object** %4, align 8
  %6 = getelementptr inbounds %struct.object, %struct.object* %5, i32 0, i32 0
  %7 = call i32 @mark_complete(i32* %6)
  ret void
}

declare dso_local i32 @mark_complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
