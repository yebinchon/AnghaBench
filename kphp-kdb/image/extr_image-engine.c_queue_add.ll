; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_queue_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i32* }

@with_output_free_list = common dso_local global i32 0, align 4
@without_output_free_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.forth_request*)* @queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_add(%struct.forth_request* %0) #0 {
  %2 = alloca %struct.forth_request*, align 8
  store %struct.forth_request* %0, %struct.forth_request** %2, align 8
  %3 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %4 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32* @with_output_free_list, i32* @without_output_free_list
  %9 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %10 = call i32 @tlist_insert(i32* %8, %struct.forth_request* %9)
  ret void
}

declare dso_local i32 @tlist_insert(i32*, %struct.forth_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
