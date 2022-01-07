; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_forth_request_unload_prog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_forth_request_unload_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i32* }

@with_output_free_list = common dso_local global i32 0, align 4
@without_output_free_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.forth_request*)* @forth_request_unload_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forth_request_unload_prog(%struct.forth_request* %0) #0 {
  %2 = alloca %struct.forth_request*, align 8
  store %struct.forth_request* %0, %struct.forth_request** %2, align 8
  %3 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %4 = call i32 @tlist_remove(i32* @with_output_free_list, %struct.forth_request* %3)
  %5 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %6 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %12 = call i32 @forth_request_free_prog(%struct.forth_request* %11)
  %13 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %14 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %20 = call i32 @tlist_insert(i32* @without_output_free_list, %struct.forth_request* %19)
  %21 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %22 = call i32 @hash_req_remove(%struct.forth_request* %21)
  ret void
}

declare dso_local i32 @tlist_remove(i32*, %struct.forth_request*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @forth_request_free_prog(%struct.forth_request*) #1

declare dso_local i32 @tlist_insert(i32*, %struct.forth_request*) #1

declare dso_local i32 @hash_req_remove(%struct.forth_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
