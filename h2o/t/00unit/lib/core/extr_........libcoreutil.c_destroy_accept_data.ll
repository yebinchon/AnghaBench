; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_destroy_accept_data.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_destroy_accept_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_accept_data_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_accept_data_t*)* @destroy_accept_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_accept_data(%struct.st_h2o_accept_data_t* %0) #0 {
  %2 = alloca %struct.st_h2o_accept_data_t*, align 8
  store %struct.st_h2o_accept_data_t* %0, %struct.st_h2o_accept_data_t** %2, align 8
  %3 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %3, i32 0, i32 0
  %5 = call i32 @h2o_timer_unlink(i32* %4)
  %6 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %2, align 8
  %7 = call i32 @free(%struct.st_h2o_accept_data_t* %6)
  ret void
}

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @free(%struct.st_h2o_accept_data_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
